import 'firebase_user_info.dart';

class FirebaseUpdateUser {
  final FirebaseUserInfo info;
  final String uid;

  FirebaseUpdateUser({
    required this.uid,
    required this.info,
  });
}
