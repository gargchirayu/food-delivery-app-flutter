import 'package:fudito/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {

  final String uid;
  DatabaseService({this.uid});

  final CollectionReference userCollection = Firestore.instance.collection('Users');

  Future updateUserData(String name, String mobile, String email, String refCode) async {
    return await userCollection.document(uid).setData({
      'name': name,
      'mobile': mobile,
      'email': email,
      'refCode': refCode,
    });
  }

  UserData _userDataFromSnapshot(DocumentSnapshot snapshot){
    return UserData(
        uid: uid,
        name: snapshot.data['name'],
        mobile: snapshot.data['mobile'],
        email: snapshot.data['email']
    );
  }

  Stream<UserData> get userData{
    return userCollection.document(uid).snapshots()
        .map(_userDataFromSnapshot);
  }

}