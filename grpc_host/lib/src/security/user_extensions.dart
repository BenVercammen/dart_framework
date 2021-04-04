import 'package:grpc_host/grpc_host.dart';
import 'package:security_repository/security_repository.dart';
import 'package:squarealfa_security/squarealfa_security.dart';

extension UserExtensions on User {
  Principal toPrincipal() {
    final principal = Principal(
      userKey: key,
      tenantKey: meta.tenantKey,
      name: friendlyName,
      emailAddress: emailAddress,
      permissions: cache?.permissions ?? [],
      isAdministrator: cache?.isAdministrator ?? false,
      isAuthenticated: true,
    );
    return principal;
  }

  JwtPayload toJwtPayload({
    required String issuer,
    required String audience,
  }) {
    final payload = JwtPayload(
      name: friendlyName,
      email: emailAddress,
      subject: key,
      issuer: 'MentorAlfa Server',
      audience: 'MentorAlfa Server',
      notBefore: DateTime.now(),
      expires: DateTime.now().add(Duration(days: 365)),
    );
    return payload;
  }
}