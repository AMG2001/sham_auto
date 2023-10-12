import 'package:mongo_dart/mongo_dart.dart';
import 'package:sham_auto_project/config/data/maps_keys.dart';
import 'package:sham_auto_project/config/models/user_data_model.dart';
import 'package:sham_auto_project/config/routes/app_routes.dart';
import 'package:sham_auto_project/pages/home/view/home_page.dart';
import 'package:sham_auto_project/services/functions/dialogs.dart';
import 'package:sham_auto_project/services/local_db/user_data_box.dart';
import 'package:sham_auto_project/services/local_db/user_logged_state.dart';
import 'package:sham_auto_project/services/mongodb/app/mongo_main_controller.dart';

class UserCollectionController {
  /**
   * Singleton Class .
   */
  UserCollectionController._privateConstructor();

  static final UserCollectionController _instance =
      UserCollectionController._privateConstructor();

  static UserCollectionController get instance => _instance;

  String _collection = "users";

  Future<void> registerUser({required UserDataModel userDataModel}) async {
    try {
      showLoadingIndicator();
      /**
       * Add User Account in mongo .
       */
      await MongoMainController.instance.dbObject
          .collection(_collection)
          .insertOne(userDataModel.toMap());
/**
         * Storing user data locally .
         */
      await UserDataBox.instance.put_allUserData(userDataModel: userDataModel);
      /**
     * Change looged state to true
     */
      await UserLoggedStateBox.instance.changeUserLoggedState(newState: true);

      removeLoadingIndicator();

      AppRoutes.navigateOffAll(page: HomePage());
    } catch (e) {
      print(
          "Error while Registering new User !! - in UserCollectionController : \n $e");
    }
  }

  Future<void> loginUser(
      {required String email, required String password}) async {
    showLoadingIndicator();
    await MongoMainController.instance.dbObject
        .collection(_collection)
        .find(where
            .eq(MapsKeys.user_email, email)
            .eq(MapsKeys.password, password))
        .toList()
        .then((value) async {
      /**
           * if fetched data is not empty , this mean the user is exist .
           */
      if (value.length != 0) {
        /**
         * Storing user data locally .
         */
        await UserDataBox.instance.put_AllUserDataFromMap(map: value[0]);
        /**
     * Change looged state to true
     */
        await UserLoggedStateBox.instance.changeUserLoggedState(newState: true);

        removeLoadingIndicator();

        AppRoutes.navigateOffAll(page: HomePage());
      } else {
        // TODO implement info system to inform user that account is not exist .
        removeLoadingIndicator();
      }
    });
  }
}
