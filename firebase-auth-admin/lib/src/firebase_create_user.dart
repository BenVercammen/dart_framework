import 'firebase_user_info.dart';

class FirebaseCreateUser {
  final FirebaseUserInfo info;
  final String? uid;

  const FirebaseCreateUser({
    required this.info,
    this.uid,
  });
}
