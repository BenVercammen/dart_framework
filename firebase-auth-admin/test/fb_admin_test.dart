import 'dart:convert';

import 'package:firebase_auth_admin/firebase_auth_admin.dart' as firebase;
import 'package:test/test.dart';

const testEmail = 'fbtest@test.com';
const testDisplayName = 'Test User';
const userInfo = firebase.FirebaseUserInfo(
  email: testEmail,
  displayName: 'Test User',
  password: 'xpto123_',
  disabled: false,
  emailVerified: true,
  photoUrl: 'https://www.somewhere.com/myself.jpg',
);

void main() {
  group('A group of tests', () {
    late final String uid;

    setUpAll(() async {
      firebase.initialize('service-account.json');
      final usr = firebase.FirebaseCreateUser(
        info: userInfo,
        uid: 'testuseruid',
      );
      uid = await firebase.createUser(usr);
    });

    tearDownAll(() async {
      await firebase.deleteUser(uid);
    });

    test('Create empty user', () async {
      final usr =
          firebase.FirebaseCreateUser(info: firebase.FirebaseUserInfo());
      final uid = await firebase.createUser(usr);
      await firebase.deleteUser(uid);
      expect(uid, isNotEmpty);
    });

    test('Update user', () async {
      final uinfo = userInfo.copyWith(displayName: 'Changed');
      final updateUser = firebase.FirebaseUpdateUser(uid: uid, info: uinfo);
      await firebase.updateUser(updateUser);

      final user = await firebase.getUser(uid);
      expect(user.displayName, 'Changed');
    });

    test('Set and retrieve custom claims', () async {
      final name = 'adhoc';
      final value = 'abracadabra';
      await firebase.setCustomClaims(uid, {name: value});
      final claims = await firebase.getCustomClaims(uid);

      expect(claims[name], value);
    });

    test('Set, clear and retrieve custom claims', () async {
      final name = 'adhoc';
      final value = 'abracadabra';
      await firebase.setCustomClaims(uid, {name: value});
      await firebase.setCustomClaims(uid, {});
      final claims = await firebase.getCustomClaims(uid);

      expect(claims[name], isNull);
    });

    test('Set custom claims and retrieve user', () async {
      final name = 'adhoc';
      final value = 'abracadabra';
      await firebase.setCustomClaims(uid, {name: value});
      final user = await firebase.getUser(uid);
      expect(user.customClaims?[name], value);
    });

    test('retrieve user by email', () async {
      final user = await firebase.getUserByEmail(testEmail);
      expect(user.email, testEmail);
    });

    test('create customTokenWithClaims', () async {
      final name = 'tid';
      final value = '54432';
      final ctoken =
          await firebase.createCustomTokenWithClaims(uid, {name: value});

      final content = ctoken.split('.')[1];
      final json = decodeB64Json(content);
      final map = jsonDecode(json);

      expect(ctoken, isNotEmpty);
      expect(map['claims'][name], value);
    });

    test('create customToken', () async {
      final ctoken = await firebase.createCustomToken(uid);

      expect(ctoken, isNotEmpty);
    });
  });
}

String decodeB64Json(String payloadBase64) {
  var delta4 = payloadBase64.length % 4;
  if (delta4 > 0 && delta4 < 4) {
    payloadBase64 =
        payloadBase64.padRight(payloadBase64.length + (4 - delta4), '=');
  }

  var json = utf8.decode(base64Decode(payloadBase64));
  return json;
}
