import 'dart:async';
import 'dart:convert';
import 'dart:ffi' as ffi; // For FFI
import 'dart:ffi';
import 'package:path/path.dart';
import 'dart:io';
import 'package:ffi/ffi.dart';

import 'firebase_admin_exception.dart';
import 'firebase_token.dart';
import 'firebase_create_user.dart';
import 'firebase_update_user.dart';
import 'firebase_user.dart';
import 'user_claims.dart';
import 'isolate_runner.dart';
import 'request.dart';
import 'lib_auth.dart';

void initialize(String serviceFilePath) {
  final nl = _getNativeLibrary();
  final serviceAccount =
      serviceFilePath.toNativeUtf8(allocator: malloc).cast<Int8>();
  try {
    nl.initialize(serviceAccount);
  } finally {
    malloc.free(serviceAccount);
  }
}

Future<void> setCustomClaims(String uid, Map<String, dynamic> claims) async {
  final claimsJson = jsonEncode(claims);
  final uc = UserClaims(uid: uid, claimsJson: claimsJson);
  await runNative<UserClaims, void>(_setCustomClaims, uc);
}

Future<Map<String, dynamic>> getCustomClaims(String uid) async {
  final claims = await runNative<String, String>(_getCustomClaims, uid);
  if (claims == "null") return {};
  final ret = jsonDecode(claims);
  return ret;
}

Future<FirebaseUser> getUser(String uid) async {
  final userJson = await runNative<String, String>(_getUser, uid);
  final user = _mapToUser(userJson);

  return user;
}

Future<FirebaseUser> getUserByEmail(String email) async {
  final userJson = await runNative<String, String>(_getUserByEmail, email);
  final user = _mapToUser(userJson);

  return user;
}

Future<FirebaseUser> getUserByPhoneNumber(String email) async {
  final userJson =
      await runNative<String, String>(_getUserByPhoneNumber, email);
  final user = _mapToUser(userJson);

  return user;
}

Future<String> createUser(FirebaseCreateUser user) async {
  final userMap = <String, dynamic>{};
  userMap['email'] = user.info.email;
  userMap['displayName'] = user.info.displayName;
  userMap['password'] = user.info.password;
  userMap['emailVerified'] = user.info.emailVerified;
  userMap['disabled'] = user.info.disabled;
  userMap['password'] = user.info.password;
  userMap['phoneNumber'] = user.info.phoneNumber;
  userMap['uid'] = user.uid;
  userMap['photoUrl'] = user.info.photoUrl;
  final json = jsonEncode(userMap);

  final result = await runNative<String, String>(_createUser, json);
  return result;
}

Future<String> updateUser(FirebaseUpdateUser user) async {
  final userMap = <String, dynamic>{};
  userMap['uid'] = user.uid;
  userMap['email'] = user.info.email;
  userMap['displayName'] = user.info.displayName;
  userMap['password'] = user.info.password;
  userMap['emailVerified'] = user.info.emailVerified;
  userMap['disabled'] = user.info.disabled;
  userMap['password'] = user.info.password;
  userMap['phoneNumber'] = user.info.phoneNumber;
  userMap['photoUrl'] = user.info.photoUrl;
  final json = jsonEncode(userMap);

  final result = await runNative<String, String>(_updateUser, json);
  return result;
}

Future<void> deleteUser(String uid) async {
  await runNative<String, void>(_deleteUser, uid);
}

Future<void> revokeRefreshTokens(String idToken) async {
  await runNative<String, void>(_revokeRefreshTokensRunner, idToken);
}

Future<FirebaseToken> verifyIdToken(String idToken) async {
  final tokenJson = await runNative<String, String>(_verifyToken, idToken);
  final token = _jsonToFirebaseToken(tokenJson);

  return token;
}

Future<FirebaseToken> verifyIDTokenAndCheckRevoked(String idToken) async {
  final tokenJson = await runNative<String, String>(
    _verifyIDTokenAndCheckRevoked,
    idToken,
  );
  final token = _jsonToFirebaseToken(tokenJson);

  return token;
}

Future<String> createCustomTokenWithClaims(
    String uid, Map<String, dynamic> claims) async {
  final claimsJson = jsonEncode(claims);

  final ctc = UserClaims(uid: uid, claimsJson: claimsJson);
  final result =
      await runNative<UserClaims, String>(_createCustomTokenWithClaims, ctc);
  return result;
}

Future<String> createCustomToken(String uid) async {
  final result = await runNative<String, String>(_createCustomToken, uid);
  return result;
}

FirebaseUser _mapToUser(String userJson) {
  final map = jsonDecode(userJson);

  final user = FirebaseUser(
    email: map['email'],
    displayName: map['displayName'],
    providerId: map['providerId'],
    rawId: map['rawId'],
    customClaims: map['CustomClaims'],
    disabled: map['Disabled'],
    emailVerified: map['EmailVerified'],
    providerUserInfo: map['ProviderUserInfo'],
    tokensValidAfterMillis: map['TokensValidAfterMillis'],
    userMetadata: map['UserMetadata'],
    tenantId: map['TenantId'],
  );
  return user;
}

void _setCustomClaims(Request<UserClaims> request) {
  final msg = request.message;

  final uClaims = msg.claimsJson.toNativeUtf8(allocator: malloc).cast<Int8>();
  final uUid = msg.uid.toNativeUtf8(allocator: malloc).cast<Int8>();

  try {
    final nl = _getNativeLibrary();
    final result = nl.setCustomUserClaims(uUid, uClaims);
    if (result != ffi.nullptr) {
      try {
        final errorMsg = result.cast<Utf8>().toDartString();
        throw FirebaseAdminException(errorMsg);
      } finally {
        nl.freeMem(result);
      }
    }
  } finally {
    malloc.free(uUid);
    malloc.free(uClaims);
  }
  request.sendPort.send('');
}

void _getCustomClaims(Request<String> request) {
  final memList = <Pointer>[];
  late final Pointer<Int8> uid;
  late final Pointer<Pointer<Int8>> pClaims;
  late final String dClams;

  try {
    memList.add(
        uid = request.message.toNativeUtf8(allocator: malloc).cast<Int8>());
    memList.add(pClaims = malloc(ffi.sizeOf<Pointer>()));

    final nl = _getNativeLibrary();
    final error = nl.getCustomClaims(uid, pClaims);
    if (error != ffi.nullptr) {
      try {
        final dError = error.cast<Utf8>().toDartString();
        throw FirebaseAdminException(dError);
      } finally {
        nl.freeMem(error);
      }
    }

    final cClaims = (pClaims.value.cast<Utf8>());
    try {
      dClams = cClaims.toDartString();
    } finally {
      nl.freeMem(pClaims.value);
    }
  } finally {
    for (final mem in memList) {
      try {
        malloc.free(mem);
      } catch (_) {}
    }
  }
  request.sendPort.send(dClams);
}

void _getUser(Request<String> request) {
  final nl = _getNativeLibrary();
  _getUserImpl(request, nl, nl.getUser);
}

void _getUserByEmail(Request<String> request) {
  final nl = _getNativeLibrary();
  _getUserImpl(request, nl, nl.getUserByEmail);
}

void _getUserByPhoneNumber(Request<String> request) {
  final nl = _getNativeLibrary();
  _getUserImpl(request, nl, nl.getUserByPhoneNumber);
}

void _getUserImpl(Request<String> request, LibAuth nl,
    Pointer<Int8> Function(Pointer<Int8>, Pointer<Pointer<Int8>>) retriever) {
  final memList = <Pointer>[];
  late final Pointer<Int8> parm;
  late final Pointer<Pointer<Int8>> pUser;
  late final String dUser;

  try {
    memList.add(
        parm = request.message.toNativeUtf8(allocator: malloc).cast<Int8>());
    memList.add(pUser = malloc(ffi.sizeOf<Pointer>()));

    final error = retriever(parm, pUser);
    if (error != ffi.nullptr) {
      try {
        final dError = error.cast<Utf8>().toDartString();
        throw FirebaseAdminException(dError);
      } finally {
        nl.freeMem(error);
      }
    }

    final cUser = (pUser.value.cast<Utf8>());
    try {
      dUser = cUser.toDartString();
    } finally {
      nl.freeMem(pUser.value);
    }
  } finally {
    for (final mem in memList) {
      try {
        malloc.free(mem);
      } catch (_) {}
    }
  }
  request.sendPort.send(dUser);
}

void _createUser(Request<String> request) {
  final memList = <Pointer>[];
  late final Pointer<Int8> userJson;
  late final Pointer<Pointer<Int8>> pUid;
  late final String dUid;

  try {
    memList.add(userJson =
        request.message.toNativeUtf8(allocator: malloc).cast<Int8>());
    memList.add(pUid = malloc(ffi.sizeOf<Pointer>()));

    final nl = _getNativeLibrary();
    final error = nl.createUser(userJson, pUid);
    if (error != ffi.nullptr) {
      try {
        final dError = error.cast<Utf8>().toDartString();
        throw FirebaseAdminException(dError);
      } finally {
        nl.freeMem(error);
      }
    }

    final uid = (pUid.value.cast<Utf8>());
    try {
      dUid = uid.toDartString();
    } finally {
      nl.freeMem(pUid.value);
    }
  } finally {
    for (final mem in memList) {
      try {
        malloc.free(mem);
      } catch (_) {}
    }
  }
  request.sendPort.send(dUid);
}

void _updateUser(Request<String> request) {
  late final Pointer<Int8> userJson;

  try {
    userJson = request.message.toNativeUtf8(allocator: malloc).cast<Int8>();

    final nl = _getNativeLibrary();
    final error = nl.updateUser(userJson);
    if (error != ffi.nullptr) {
      try {
        final dError = error.cast<Utf8>().toDartString();
        throw FirebaseAdminException(dError);
      } finally {
        nl.freeMem(error);
      }
    }
  } finally {
    malloc.free(userJson);
  }
  request.sendPort.send('');
}

void _deleteUser(Request<String> request) {
  late final Pointer<Int8> uid;

  try {
    uid = request.message.toNativeUtf8(allocator: malloc).cast<Int8>();

    final nl = _getNativeLibrary();
    final error = nl.deleteUser(uid);
    if (error != ffi.nullptr) {
      try {
        final dError = error.cast<Utf8>().toDartString();
        throw FirebaseAdminException(dError);
      } finally {
        nl.freeMem(error);
      }
    }
  } finally {
    malloc.free(uid);
  }
  request.sendPort.send('');
}

void _createCustomTokenWithClaims(Request<UserClaims> request) {
  final msg = request.message;

  final memList = <Pointer>[];
  late final Pointer<Int8> uid;
  late final Pointer<Int8> claims;
  late final Pointer<Pointer<Int8>> pUid;
  late final String idToken;

  try {
    memList.add(uid = msg.uid.toNativeUtf8(allocator: malloc).cast<Int8>());
    memList.add(
        claims = msg.claimsJson.toNativeUtf8(allocator: malloc).cast<Int8>());
    memList.add(pUid = malloc(ffi.sizeOf<Pointer>()));

    final nl = _getNativeLibrary();
    final error = nl.createCustomTokenWithClaims(uid, claims, pUid);
    if (error != ffi.nullptr) {
      try {
        final dError = error.cast<Utf8>().toDartString();
        throw FirebaseAdminException(dError);
      } finally {
        nl.freeMem(error);
      }
    }

    final nToken = (pUid.value.cast<Utf8>());
    try {
      idToken = nToken.toDartString();
    } finally {
      nl.freeMem(pUid.value);
    }
  } finally {
    for (final mem in memList) {
      try {
        malloc.free(mem);
      } catch (_) {}
    }
  }
  request.sendPort.send(idToken);
}

void _createCustomToken(Request<String> request) {
  final msg = request.message;

  final memList = <Pointer>[];
  late final Pointer<Int8> uid;
  late final Pointer<Pointer<Int8>> pUid;
  late final String idToken;

  try {
    memList.add(uid = msg.toNativeUtf8(allocator: malloc).cast<Int8>());
    memList.add(pUid = malloc(ffi.sizeOf<Pointer>()));

    final nl = _getNativeLibrary();
    final error = nl.createCustomToken(uid, pUid);
    if (error != ffi.nullptr) {
      try {
        final dError = error.cast<Utf8>().toDartString();
        throw FirebaseAdminException(dError);
      } finally {
        nl.freeMem(error);
      }
    }

    final nToken = (pUid.value.cast<Utf8>());
    try {
      idToken = nToken.toDartString();
    } finally {
      nl.freeMem(pUid.value);
    }
  } finally {
    for (final mem in memList) {
      try {
        malloc.free(mem);
      } catch (_) {}
    }
  }
  request.sendPort.send(idToken);
}

void _verifyToken(Request<String> request) {
  final memList = <Pointer>[];
  late final Pointer<Int8> idToken;
  late final Pointer<Pointer<Int8>> pToken;
  late final String token;

  try {
    memList.add(
        idToken = request.message.toNativeUtf8(allocator: malloc).cast<Int8>());
    memList.add(pToken = malloc(ffi.sizeOf<Pointer>()));

    final nl = _getNativeLibrary();
    final error = nl.verifyToken(idToken, pToken);
    if (error != ffi.nullptr) {
      try {
        final dError = error.cast<Utf8>().toDartString();
        throw FirebaseAdminException(dError);
      } finally {
        nl.freeMem(error);
      }
    }

    final nToken = (pToken.value.cast<Utf8>());
    try {
      token = nToken.toDartString();
    } finally {
      nl.freeMem(pToken.value);
    }
  } finally {
    for (final mem in memList) {
      try {
        malloc.free(mem);
      } catch (_) {}
    }
  }
  request.sendPort.send(token);
}

void _verifyIDTokenAndCheckRevoked(Request<String> request) {
  final memList = <Pointer>[];
  late final Pointer<Int8> idToken;
  late final Pointer<Pointer<Int8>> pToken;
  late final String token;

  try {
    memList.add(
        idToken = request.message.toNativeUtf8(allocator: malloc).cast<Int8>());
    memList.add(pToken = malloc(ffi.sizeOf<Pointer>()));

    final nl = _getNativeLibrary();
    final error = nl.verifyIDTokenAndCheckRevoked(idToken, pToken);
    if (error != ffi.nullptr) {
      try {
        final dError = error.cast<Utf8>().toDartString();
        throw FirebaseAdminException(dError);
      } finally {
        nl.freeMem(error);
      }
    }

    final nToken = (pToken.value.cast<Utf8>());
    try {
      token = nToken.toDartString();
    } finally {
      nl.freeMem(pToken.value);
    }
  } finally {
    for (final mem in memList) {
      try {
        malloc.free(mem);
      } catch (_) {}
    }
  }
  request.sendPort.send(token);
}

void _revokeRefreshTokensRunner(Request<String> request) {
  final idToken = request.message.toNativeUtf8(allocator: malloc).cast<Int8>();

  try {
    final nl = _getNativeLibrary();
    final error = nl.revokeRefreshTokens(idToken);
    if (error != ffi.nullptr) {
      try {
        final msg = error.cast<Utf8>().toDartString();
        throw FirebaseAdminException(msg);
      } finally {
        nl.freeMem(error);
      }
    }
  } finally {
    malloc.free(idToken);
  }
  request.sendPort.send('');
}

FirebaseToken _jsonToFirebaseToken(String tokenJson) {
  final map = jsonDecode(tokenJson);

  final infoMap = map['firebaseInfo'] as Map<String, dynamic>;
  final signInProvider = infoMap['signInProvider'];
  final tenant = infoMap['tenant'];
  final fbInfo = FirebaseInfo(
    tenant: tenant,
    signInProvider: signInProvider,
    identities: infoMap['identities'],
  );
  final result = FirebaseToken(
    authTime: map['authTime'],
    issuer: map['issuer'],
    audience: map['audience'],
    expires: map['expires'],
    issuedAt: map['issuedAt'],
    subject: map['subject'],
    uid: map['uid'],
    firebaseInfo: fbInfo,
    claims: map['claims'],
  );
  return result;
}

LibAuth _getNativeLibrary() {
  final ext = Platform.isLinux
      ? 'so'
      : Platform.isMacOS
          ? 'dylib'
          : 'dll';

  final dylib =
      ffi.DynamicLibrary.open(join(Directory.current.path, 'lib-auth.$ext'));
  final nl = LibAuth(dylib);
  return nl;
}
