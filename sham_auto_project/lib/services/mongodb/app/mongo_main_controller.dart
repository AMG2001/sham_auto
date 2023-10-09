import 'package:mongo_dart/mongo_dart.dart';

class MongoMainController {

  MongoMainController._privateConstructor();

  static final MongoMainController _instance =
      MongoMainController._privateConstructor();

  static MongoMainController get instance => _instance;

  
  String _url =
      "mongodb+srv://mohamadamgad09:01096482183@cluster0.pw6fomq.mongodb.net/shamdb?retryWrites=true&w=majority";

  late Db _db;

  Db get dbObject => _db;

  Future<void> initMongoCloudConnection() async {
    try {
      _db = await Db.create(_url);
      _db.open();
      print('Mongo Connection initialized');
    } catch (e) {
      print('error while opening db on Mongo in MongoMainController : $e');
    }
  }
}
