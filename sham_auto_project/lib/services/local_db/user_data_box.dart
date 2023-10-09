import 'package:hive/hive.dart';
import 'package:sham_auto_project/config/data/maps_keys.dart';
import 'package:sham_auto_project/config/models/user_data_model.dart';

class UserDataBox {
  /**
   * Accessable keys through level of Class .
   */
  String _key_firstName = 'firstName';
  String _key_lastName = 'lastName';
  String _key_userName = 'username';
  String _key_password = 'password';
  String _key_userEmail = 'userEmail';
  String _key_userPhoneNumber = 'phoneNumber';
  String _key_userCredintial = 'userCredintial';
  late bool isAdmin;

  /**
   * Singleton Class .
   */
  UserDataBox._privateConstructor();

  static final UserDataBox _instance = UserDataBox._privateConstructor();

  static UserDataBox get instance => _instance;

  // object that used in each and write operation in user  box .
  late Box _userDataBox;

  /***
   * *************************** initialize User Data Box *********************************
   */
  Future<void> initiateUserDataBox() async {
    _userDataBox = await Hive.openBox('userBox');
    if (get_userCredintial() == "admin")
      isAdmin = true;
    else
      isAdmin = false;
  }

  /**
   * First name Functions 
   */
  Future<void> put_firstName({required String firstName}) async {
    await _userDataBox.put(_key_firstName, firstName);
  }

  String get_firstName() {
    return _userDataBox.get(_key_firstName, defaultValue: "");
  }

  /**
   * Last name Functions .
   */

  Future<void> put_lastName({required String lastName}) async {
    await _userDataBox.put(_key_lastName, lastName);
  }

  String get_lastName() {
    return _userDataBox.get(_key_lastName, defaultValue: "");
  }

  /***
   * *************************** User Name Operations *********************************
   */
  void put_userName({required String userName}) async {
    await _userDataBox.put(_key_userName, userName);
  }

  String get_userName() {
    return _userDataBox.get(_key_userName, defaultValue: "");
  }

  /***
   * *************************** Password Operations *********************************
   */
  void put_password({required String password}) async {
    await _userDataBox.put(_key_password, password);
  }

  String get_password() {
    return _userDataBox.get(_key_password, defaultValue: "");
  }

  /**
   * ******************************* user email operations *********************************
   */
  void put_userEmail({required String email}) async {
    await _userDataBox.put(_key_userEmail, email);
  }

  String get_email() {
    return _userDataBox.get(_key_userEmail, defaultValue: "");
  }

  /**
   * **************************** user phone number operations **********************************
   */
  void put_userPhoneNumber({required String phoneNumber}) async {
    await _userDataBox.put(_key_userPhoneNumber, phoneNumber);
  }

  String get_phoneNumber() {
    return _userDataBox.get(_key_userPhoneNumber, defaultValue: "");
  }

  /**
   * ***************************** user credintial operations ********************************
   */
  void put_userCredintial({required String credintail}) async {
    await _userDataBox.put(_key_userCredintial, credintail);
  }

  String get_userCredintial() {
    return _userDataBox.get(_key_userCredintial, defaultValue: "");
  }

  Future<void> put_AllUserDataFromMap(
      {required Map<String, dynamic> map}) async {
    await put_allUserData(userDataModel: UserDataModel.fromMap(map: map));
    if (map[MapsKeys.credintial] == 'admin')
      isAdmin = true;
    else
      isAdmin = false;
  }

  Future<void> put_allUserData({required UserDataModel userDataModel}) async {
    put_userName(userName: userDataModel.name);
    put_password(password: userDataModel.password);
    put_userEmail(email: userDataModel.email);
    put_userPhoneNumber(phoneNumber: userDataModel.phoneNumber);
    put_userCredintial(credintail: userDataModel.credintial);
    if (userDataModel.credintial == "admin")
      isAdmin = true;
    else
      isAdmin = false;
  }

  Map<String, dynamic> getAllUserData_InMap() {
    return UserDataModel(
      firstName: get_firstName(),
      lastName: get_lastName(),
      name: get_userName(),
      password: get_password(),
      email: get_email(),
      phoneNumber: get_phoneNumber(),
      credintial: get_userCredintial(),
    ).toMap();
  }

  UserDataModel getAllUserDataIn_UserDataModel() {
    return UserDataModel(
      firstName: get_firstName(),
      lastName: get_lastName(),
      name: get_userName(),
      password: get_password(),
      email: get_email(),
      phoneNumber: get_phoneNumber(),
      credintial: get_userCredintial(),
    );
  }

  void userLoggedOut() {
    put_userName(userName: "");
    put_userEmail(email: "");
    put_password(password: "");
    put_userPhoneNumber(phoneNumber: "");
    put_userCredintial(credintail: "");
    isAdmin = false;
  }
}
