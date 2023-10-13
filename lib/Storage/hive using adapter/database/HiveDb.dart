import 'package:hive/hive.dart';
import 'package:my_flutter_project/Storage/hive%20using%20adapter/model/user_model.dart';

class HiveDb{
  HiveDb._internal();    ///private named constructor
  static HiveDb instance=HiveDb._internal();///single instance creation


  ///factory constructor to access intance

  factory HiveDb(){              ///HiveDb.instance
    return instance;
  }

 Future<List<User>> getUser() async{
    final db= await Hive.openBox<User>("user data");
    return  db.values.toList();
 }

  addUser(User user) async{
    final db=await Hive.openBox<User>("userdata");
    db.put(user.id, user);
  }

}