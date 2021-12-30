// ignore_for_file: deprecated_member_use_from_same_package

import 'dart:io';

import 'package:grpc_host/grpc_host.dart';
import 'package:grpc_host/src/configuration/ssl_settings.dart';
import 'package:yaml/yaml.dart';

class HostSettings {
  static const defaultIsolatesMultiplier = 1;
  static const defaultExtraIsolates = 0;

  final int isolatesMultiplier;
  final int extraIsolates;
  final int port;
  final SslSettings sslSettings;
  @Deprecated(
      'All settings not related to grpc-hosting features are deprecated and will be removed in the next version.')
  final SmtpSettings smtpSettings;

  HostSettings({
    this.isolatesMultiplier = defaultIsolatesMultiplier,
    this.extraIsolates = defaultExtraIsolates,
    this.port = 8080,
    this.sslSettings = const SslSettings(),
    this.smtpSettings = const SmtpSettings(),
  });

  factory HostSettings.fromYamlFile({String filename = 'appsettings.yaml'}) {
    var yamlDocument = File(filename).readYaml();
    if (yamlDocument == null) return HostSettings();

    final ret = HostSettings.fromYaml(yamlDocument);

    return ret;
  }

  factory HostSettings.fromYaml(YamlMap yamlDocument) {
    final port = yamlDocument['port'] as int? ?? 8080;
    final server = yamlDocument['server'];
    final isolatesMultiplier = server != null
        ? server['isolatesMultiplier'] ?? defaultIsolatesMultiplier
        : defaultIsolatesMultiplier;
    final extraIsolates = server != null
        ? server['extraIsolates'] ?? defaultExtraIsolates
        : defaultIsolatesMultiplier;
    final sslSettingsYaml = yamlDocument['ssl'];
    final sslSettings = sslSettingsYaml == null
        ? SslSettings()
        : SslSettings.fromYaml(sslSettingsYaml);
    final smtpSettingsYaml = yamlDocument['smtp'];
    final smtpSettings = smtpSettingsYaml == null
        ? SmtpSettings()
        : SmtpSettings.fromYaml(smtpSettingsYaml);

    var ret = HostSettings(
      port: port,
      isolatesMultiplier: isolatesMultiplier,
      extraIsolates: extraIsolates,
      sslSettings: sslSettings,
      smtpSettings: smtpSettings,
    );

    return ret;
  }

  HostSettings copyWith({
    int? isolatesMultiplier,
    int? extraIsolates,
    int? port,
    SslSettings? sslSettings,
    SmtpSettings? smtpSettings,
  }) {
    return HostSettings(
      isolatesMultiplier: isolatesMultiplier ?? this.isolatesMultiplier,
      extraIsolates: extraIsolates ?? this.extraIsolates,
      port: port ?? this.port,
      sslSettings: sslSettings ?? this.sslSettings,
      smtpSettings: smtpSettings ?? this.smtpSettings,
    );
  }
}
