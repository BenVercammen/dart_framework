class FirebaseToken {
  final int authTime;
  final String issuer;
  final String audience;
  final int expires;
  final int issuedAt;
  final String subject;
  final String uid;
  final FirebaseInfo firebaseInfo;

  FirebaseToken({
    required this.authTime,
    required this.issuer,
    required this.audience,
    required this.expires,
    required this.issuedAt,
    required this.subject,
    required this.uid,
    required this.firebaseInfo,
  });
}

class FirebaseInfo {
  final String signInProvider;
  final String tenant;
  final Map<String, dynamic> identities;

  FirebaseInfo({
    required this.signInProvider,
    required this.tenant,
    required this.identities,
  });
}
