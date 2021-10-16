import 'package:firebase_auth_admin/firebase_auth_admin.dart' as firebase;

void main() async {
  // first we need to initialize the API
  // this should always be one of the first
  // calls in your main function, in
  // your main isolate.
  firebase.initialize('service-account.json');

  // the following code creates a John Doe user:
  final usr = firebase.FirebaseCreateUser(
    info: firebase.FirebaseUserInfo(
      email: 'john@doe.com',
      displayName: 'John Doe',
      password: 'xpto123_',
      disabled: false,
      emailVerified: true,
      photoUrl: 'https://www.somewhere.com/myself.jpg',
    ),
  );

  // please note that this can be
  // called from any isolate (and there)
  // is no need to call initialize again
  // from new isolates.
  final uid = await firebase.createUser(usr);

  // we can set custom claims to users.
  // for example, we may want to add
  // subscription expiration date on the
  // user's account
  await firebase.setCustomClaims(
    uid,
    {
      'subscriptionExpiry':
          DateTime.now().add(Duration(days: 365)).millisecondsSinceEpoch / 1000,
    },
  );

  // all other easily accessed functions

  // we may even delete users (careful):
  await firebase.deleteUser(uid);
}
