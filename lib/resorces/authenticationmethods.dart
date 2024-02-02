
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import '../model/user_detailsmodel.dart';
import 'cloudfirbase_method.dart';

class AthenticationMethod{
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  CloudFirestoreClass cloudFirestoreClass = CloudFirestoreClass();
  Future<String> SingUpUser({
    required String name,
    required String address,
    required String email,
    required String password,}) async{
    name.trim();// trim are use remove to space
    address.trim();
    email.trim();
    password.trim();
    String output = "Somethink went wrong";
    if(name != "" && address != "" && email != "" && password != ""){
      try{
        await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);// firebace
        userdetaild user = userdetaild(name: name, address: address);
        await cloudFirestoreClass.uplodenameaddressToDatabase(user: user);
         output = "Success";
      } on FirebaseAuthException catch (e){ //filter firebace massage
        output = e.message.toString();
      }
    }else{
    }
    return output;
  }

  Future<String> SingInUser({
    required String email,
    required String password,}) async{
    email.trim();
    password.trim();
    String output = "Somethink went wrong";
    if(email != "" && password != ""){
      try{
        await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
        output = "Success";
      } on FirebaseAuthException catch (e){ //filter firebace massage
        output = e.message.toString();
      }
    }else{
    }
    return output;
  }
}