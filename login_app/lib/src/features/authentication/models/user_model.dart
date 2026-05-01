// ======
// Todo : Step - 1 [create model]
// =====

import 'package:cloud_firestore/cloud_firestore.dart';

final _db = FirebaseFirestore.instance;

class UserModel{
  final String? id;
  final String fullName;
  final String email;
  final String phoneNo;
  final String password;

  const UserModel({
    this.id,
    required this.email,
    required this.password,
    required this.fullName,
    required this.phoneNo
  });


  toJson(){
    return {
      "FullName" : fullName,
      "Email" : email,
      "Phone " : phoneNo,
      "Password" : password
    };
  }



  //step-1 for fetch data profile
  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic> >document){
    final data = document.data()!;
    return UserModel(
      id : document.id,
      email: data['Email'],
      password: data["Password"],
      fullName:data["FullName"],
      phoneNo:data["Phone"],
    );
  }


}
