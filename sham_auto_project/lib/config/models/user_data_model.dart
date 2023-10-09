import 'package:sham_auto_project/config/data/maps_keys.dart';

class UserDataModel {
  late String firstName;
  late String lastName;
  late String name;
  late String email;
  late String password;
  late String phoneNumber;
  late String credintial;

  UserDataModel(
      {required this.firstName,
      required this.lastName,
      required this.name,
      required this.credintial,
      required this.email,
      required this.password,
      required this.phoneNumber});

  UserDataModel.fromMap({required Map<String, dynamic> map}) {
    firstName = map[MapsKeys.first_name];
    lastName = map[MapsKeys.last_name];
    name = map[MapsKeys.user_name];
    email = map[MapsKeys.user_email];
    password = map[MapsKeys.password];
    phoneNumber = map[MapsKeys.phone_number];
    credintial = map[MapsKeys.credintial];
  }

  Map<String, dynamic> toMap() {
    return {
      MapsKeys.first_name: this.firstName,
      MapsKeys.last_name: this.lastName,
      MapsKeys.user_name: this.name,
      MapsKeys.user_email: this.email,
      MapsKeys.password: this.password,
      MapsKeys.phone_number: this.phoneNumber,
      MapsKeys.credintial: this.credintial
    };
  }

  void fromMap({required Map<String, dynamic> map}) {
    this.firstName = map[MapsKeys.first_name];
    this.lastName = map[MapsKeys.last_name];
    this.name = map[MapsKeys.user_name];
    this.email = map[MapsKeys.user_email];
    this.password = map[MapsKeys.password];
    this.phoneNumber = map[MapsKeys.phone_number];
    this.credintial = map[MapsKeys.credintial];
  }
}
