import 'dart:async';
import 'dart:convert';
import 'dart:ffi' as ffi; // For FFI
import 'dart:ffi';
import 'dart:isolate';
import 'package:path/path.dart';
import 'dart:io';
import 'package:ffi/ffi.dart';

import 'firebase_admin_exception.dart';
import 'firebase_token.dart';
import 'firebase_create_user.dart';
import 'firebase_update_user.dart';
import 'firebase_user.dart';
import 'lib_auth.dart';

final nl = _getNativeLibrary();

void initialize(String serviceFilePath) {
  final serviceAccount =
      serviceFilePath.toNativeUtf8(allocator: malloc).cast<Int8>();
  try {
    nl.initialize(NativeApi.initializeApiDLData, serviceAccount);
  } finally {
    malloc.free(serviceAccount);
  }
}

Future<void> setCustomClaims(String uid, Map<String, dynamic> claims) async {
  final claimsJson = jsonEncode(claims);

  final c = Completer<String>();
  final receivePort = _createReceivePort(c);

  try {
    final Pointer<Int8> pUid = uid.toNativeUtf8(allocator: malloc).cast<Int8>();
    final Pointer<Int8> pJson =
        claimsJson.toNativeUtf8(allocator: malloc).cast<Int8>();
    try {
      nl.setCustomUserClaims(receivePort.sendPort.nativePort, pUid, pJson);
    } finally {
      malloc.free(pUid);
      malloc.free(pJson);
    }
    await c.future;
  } finally {
    receivePort.close();
  }
}

Future<Map<String, dynamic>> getCustomClaims(String uid) async {
  final c = Completer<String>();
  final receivePort = _createReceivePort(c);

  try {
    final Pointer<Int8> pUid = uid.toNativeUtf8(allocator: malloc).cast<Int8>();
    try {
      nl.getCustomClaims(receivePort.sendPort.nativePort, pUid);
    } finally {
      malloc.free(pUid);
    }
    final claims = await c.future;
    if (claims == "null") return {};
    final ret = jsonDecode(claims);
    return ret;
  } finally {
    receivePort.close();
  }
}

Future<FirebaseUser> getUser(String uid) async {
  final user = await _getUser(uid, nl.getUser);
  return user;
}

Future<FirebaseUser> getUserByEmail(String email) async {
  final user = await _getUser(email, nl.getUserByEmail);
  return user;
}

Future<FirebaseUser> getUserByPhoneNumber(String phoneNumber) async {
  final user = await _getUser(phoneNumber, nl.getUserByPhoneNumber);
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

  final c = Completer<String>();
  final receivePort = _createReceivePort(c);

  try {
    final Pointer<Int8> pJson =
        json.toNativeUtf8(allocator: malloc).cast<Int8>();
    try {
      nl.createUser(receivePort.sendPort.nativePort, pJson);
    } finally {
      malloc.free(pJson);
    }
    final uid = await c.future;
    return uid;
  } finally {
    receivePort.close();
  }
}

Future<void> updateUser(FirebaseUpdateUser user) async {
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

  final c = Completer<String>();
  final receivePort = _createReceivePort(c);

  try {
    final Pointer<Int8> pJson =
        json.toNativeUtf8(allocator: malloc).cast<Int8>();
    try {
      nl.updateUser(receivePort.sendPort.nativePort, pJson);
    } finally {
      malloc.free(pJson);
    }
    await c.future;
  } finally {
    receivePort.close();
  }
}

Future<void> deleteUser(String uid) async {
  final c = Completer<String>();
  final receivePort = _createReceivePort(c);

  try {
    final Pointer<Int8> pUid = uid.toNativeUtf8(allocator: malloc).cast<Int8>();
    try {
      nl.deleteUser(receivePort.sendPort.nativePort, pUid);
    } finally {
      malloc.free(pUid);
    }
    await c.future;
  } finally {
    receivePort.close();
  }
}

Future<void> revokeRefreshTokens(String idToken) async {
  final c = Completer<String>();
  final receivePort = _createReceivePort(c);

  try {
    final Pointer<Int8> pIdToken =
        idToken.toNativeUtf8(allocator: malloc).cast<Int8>();
    try {
      nl.createUser(receivePort.sendPort.nativePort, pIdToken);
    } finally {
      malloc.free(pIdToken);
    }
    await c.future;
  } finally {
    receivePort.close();
  }
}

Future<FirebaseToken> verifyIdToken(String idToken) async {
  final c = Completer<String>();
  final receivePort = _createReceivePort(c);

  try {
    final Pointer<Int8> pIdToken =
        idToken.toNativeUtf8(allocator: malloc).cast<Int8>();
    try {
      nl.verifyToken(receivePort.sendPort.nativePort, pIdToken);
    } finally {
      malloc.free(pIdToken);
    }
    final data = await c.future;
    final token = _jsonToFirebaseToken(data);
    return token;
  } finally {
    receivePort.close();
  }
}

Future<FirebaseToken> verifyIDTokenAndCheckRevoked(String idToken) async {
  final c = Completer<String>();
  final receivePort = _createReceivePort(c);

  try {
    final Pointer<Int8> pIdToken =
        idToken.toNativeUtf8(allocator: malloc).cast<Int8>();
    try {
      nl.verifyIDTokenAndCheckRevoked(
          receivePort.sendPort.nativePort, pIdToken);
    } finally {
      malloc.free(pIdToken);
    }
    final data = await c.future;
    final token = _jsonToFirebaseToken(data);
    return token;
  } finally {
    receivePort.close();
  }
}

Future<String> createCustomTokenWithClaims(
    String uid, Map<String, dynamic> claims) async {
  final claimsJson = jsonEncode(claims);

  final c = Completer<String>();
  final receivePort = _createReceivePort(c);

  try {
    final Pointer<Int8> pUid = uid.toNativeUtf8(allocator: malloc).cast<Int8>();
    final Pointer<Int8> pClaims =
        claimsJson.toNativeUtf8(allocator: malloc).cast<Int8>();

    try {
      nl.createCustomTokenWithClaims(
          receivePort.sendPort.nativePort, pUid, pClaims);
    } finally {
      malloc.free(pUid);
      malloc.free(pClaims);
    }
    final data = await c.future;
    return data;
  } finally {
    receivePort.close();
  }
}

Future<String> createCustomToken(String uid) async {
  final c = Completer<String>();
  final receivePort = _createReceivePort(c);

  try {
    final Pointer<Int8> pUid = uid.toNativeUtf8(allocator: malloc).cast<Int8>();

    try {
      nl.createCustomToken(receivePort.sendPort.nativePort, pUid);
    } finally {
      malloc.free(pUid);
    }
    final data = await c.future;
    return data;
  } finally {
    receivePort.close();
  }
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

Future<FirebaseUser> _getUser(String criteria,
    void Function(int port, ffi.Pointer<ffi.Int8> uid) executer) async {
  final c = Completer<String>();
  final receivePort = _createReceivePort(c);

  try {
    final Pointer<Int8> pCriteria =
        criteria.toNativeUtf8(allocator: malloc).cast<Int8>();
    try {
      executer(receivePort.sendPort.nativePort, pCriteria);
    } finally {
      malloc.free(pCriteria);
    }
    final userJson = await c.future;
    final user = _mapToUser(userJson);
    return user;
  } finally {
    receivePort.close();
  }
}

FirebaseToken _jsonToFirebaseToken(String tokenJson) {
  final map = jsonDecode(tokenJson);

  final infoMap = map['firebase'] as Map<String, dynamic>;
  final signInProvider = infoMap['sign_in_provider'];
  final tenant = infoMap['tenant'];
  final fbInfo = FirebaseInfo(
    tenant: tenant,
    signInProvider: signInProvider,
    identities: infoMap['identities'],
  );
  final result = FirebaseToken(
    authTime: map['auth_time'],
    issuer: map['iss'],
    audience: map['aud'],
    expires: map['exp'],
    issuedAt: map['iat'],
    subject: map['sub'],
    uid: map['uid'],
    firebaseInfo: fbInfo,
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

ReceivePort _createReceivePort(Completer<String> c) {
  final receivePort = ReceivePort()
    ..listen((data) {
      final strData = data as String;
      final map = jsonDecode(strData) as Map<String, dynamic>;
      final error = map['error'];
      if (error != null) {
        c.completeError(FirebaseAdminException(error));
        return;
      }
      final ret = map['data'];
      c.complete(ret);
    });
  return receivePort;
}
