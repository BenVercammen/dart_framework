/// Represents the payload content of a JWT token.
class JwtPayload {
  final String subject;
  final String email;
  final String name;
  final String issuer;
  final String audience;
  final DateTime notBefore;
  final DateTime expires;
  final bool emailVerified;
  final bool isVerified;
  final String tenantId;
  final bool isAdministrator;
  final List<String> permissions;

  /// any other extra fields that are
  /// not represented in the available properties
  /// are stored in this property.
  final Map<String, dynamic> extra;

  const JwtPayload({
    required this.subject,
    required this.email,
    required this.name,
    required this.issuer,
    required this.audience,
    required this.notBefore,
    required this.expires,
    this.emailVerified = false,
    this.isVerified = false,
    this.tenantId = '',
    this.permissions = const [],
    this.isAdministrator = false,
    this.extra = const <String, dynamic>{},
  });

  factory JwtPayload.fromMap(Map<String, dynamic> map) {
    var name = '';
    var subject = '';
    var email = '';
    var tenantId = '';
    var issuer = '';
    var audience = '';
    var permissions = const <String>[];
    var isAdministrator = false;
    var nbf = DateTime.now();
    var exp = DateTime.now();
    var emailVerified = false;
    var extra = <String, dynamic>{};

    for (var entry in map.entries) {
      switch (entry.key) {
        case 'name':
          name = entry.value;
          break;
        case 'sub':
          subject = entry.value;
          break;
        case 'email':
          email = entry.value;
          break;
        case 'tenantId':
          tenantId = entry.value;
          break;
        case 'iss':
          issuer = entry.value;
          break;
        case 'aud':
          audience = entry.value;
          break;
        case 'nbf':
          nbf = _getDateTime(entry.value.toString());
          break;
        case 'exp':
          exp = _getDateTime(entry.value.toString());
          break;
        case 'scp':
          permissions = entry.value as List<String>;
          break;
        case 'adm':
          isAdministrator = entry.value;
          break;
        case 'email_verified':
          emailVerified =
              (entry.value.toString()).toLowerCase().trim() == 'true';
          break;
        default:
          extra[entry.key] = entry.value;
          break;
      }
    }

    var payload = JwtPayload(
        name: name,
        subject: subject,
        email: email,
        issuer: issuer,
        audience: audience,
        notBefore: nbf,
        expires: exp,
        extra: extra,
        emailVerified: emailVerified,
        tenantId: tenantId,
        permissions: permissions,
        isAdministrator: isAdministrator);
    return payload;
  }

  JwtPayload copyWith({
    String? subject,
    String? email,
    String? name,
    String? issuer,
    String? audience,
    DateTime? notBefore,
    DateTime? expires,
    String? userId,
    String? tenantId,
    List<String>? roles,
    bool? isVerified,
    bool? emailVerified,
    Map<String, dynamic>? extra,
  }) {
    var ret = JwtPayload(
      subject: subject ?? this.subject,
      email: email ?? this.email,
      name: name ?? this.name,
      issuer: issuer ?? this.issuer,
      audience: audience ?? this.audience,
      notBefore: notBefore ?? this.notBefore,
      expires: expires ?? this.expires,
      extra: extra ?? this.extra,
      isVerified: isVerified ?? this.isVerified,
      emailVerified: emailVerified ?? this.emailVerified,
    );
    return ret;
  }

  Map<String, dynamic> get claimsMap {
    var nbf = _getEpochSeconds(notBefore);
    var exp = _getEpochSeconds(expires);

    var map = <String, dynamic>{};
    _addClaimIfNotNull(map, 'name', name);
    _addClaimIfNotNull(map, 'sub', subject);
    _addClaimIfNotNull(map, 'email', email);
    _addClaimIfNotNull(map, 'iss', issuer);
    _addClaimIfNotNull(map, 'aud', audience);
    _addClaimIfNotNull(map, 'nbf', nbf);
    _addClaimIfNotNull(map, 'exp', exp);
    _addClaimIfNotNull(map, 'adm', isAdministrator);
    _addClaimIfNotNull(map, 'scp', permissions);
    for (var claim in extra.entries) {
      _addClaimIfNotNull(map, claim.key, claim.value);
    }

    return map;
  }

  static String? _getEpochSeconds(DateTime? value) =>
      value == null ? null : (value.millisecondsSinceEpoch ~/ 1000).toString();

  static DateTime _getDateTime(String secondsAsString) {
    var seconds = int.parse(secondsAsString);
    var dt = DateTime.fromMillisecondsSinceEpoch(seconds * 1000);
    return dt;
  }

  static void _addClaimIfNotNull(
    Map<String, dynamic> claimsMap,
    String? claim,
    dynamic value,
  ) {
    if (claim != null) claimsMap[claim] = value;
  }
}
