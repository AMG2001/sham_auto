import 'package:hive/hive.dart';

class UserLoggedStateBox {
  
  UserLoggedStateBox._privateConstructor();

  static final UserLoggedStateBox _instance =
      UserLoggedStateBox._privateConstructor();

  static UserLoggedStateBox get instance => _instance;

  late Box _box;

  late bool currentLoggedState;

  String _userLoggedStateBoxName = 'user_logged';

  String _key_loggedState = "key_logged_state";

  Future<void> initUserLoggedStateBox() async {
    _box = await Hive.openBox(_userLoggedStateBoxName);
    currentLoggedState = getCurrentLoggedState();
  }

  Future<void> changeUserLoggedState({required bool newState}) async {
    await _box.put(_key_loggedState, newState);
  }

  bool getCurrentLoggedState() {
    return _box.get(_key_loggedState,defaultValue: false);
  }
}