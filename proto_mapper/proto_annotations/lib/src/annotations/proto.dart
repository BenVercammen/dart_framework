class Proto {
  const Proto({
    this.prefix,
    this.packageName = '',
    this.includeFieldsByDefault = true,
    this.useProtoFieldNamingConventions,
  });
  final String packageName;
  final String? prefix;
  final bool includeFieldsByDefault;
  final bool? useProtoFieldNamingConventions;
}

const proto = Proto();
