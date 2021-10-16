class FirebaseUserInfo {
  final String? email;
  final bool? emailVerified;
  final String? displayName;
  final String? password;
  final bool? disabled;
  final String? phoneNumber;
  final String? photoUrl;

  const FirebaseUserInfo({
    this.email,
    this.emailVerified,
    this.displayName,
    this.password,
    this.disabled,
    this.phoneNumber,
    this.photoUrl,
  });

  FirebaseUserInfo copyWith({
    String? email,
    bool? emailVerified,
    String? displayName,
    String? password,
    bool? disabled,
    String? phoneNumber,
    String? photoUrl,
  }) {
    return FirebaseUserInfo(
      email: email ?? this.email,
      emailVerified: emailVerified ?? this.emailVerified,
      displayName: displayName ?? this.displayName,
      password: password ?? this.password,
      disabled: disabled ?? this.disabled,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      photoUrl: photoUrl ?? this.photoUrl,
    );
  }
}
