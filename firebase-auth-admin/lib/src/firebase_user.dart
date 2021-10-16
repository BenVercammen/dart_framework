class FirebaseUser {
  final String? email;
  final String? displayName;
  final String? providerId;
  final String? rawId;
  final bool disabled;
  final bool emailVerified;
  final String? tenantId;
  final List<dynamic>? providerUserInfo;
  final int tokensValidAfterMillis;
  final Map<String, dynamic>? userMetadata;
  final Map<String, dynamic>? customClaims;

  FirebaseUser({
    required this.email,
    required this.displayName,
    required this.providerId,
    required this.rawId,
    required this.disabled,
    required this.emailVerified,
    required this.tokensValidAfterMillis,
    this.providerUserInfo,
    this.userMetadata,
    this.customClaims,
    required this.tenantId,
  });
}
