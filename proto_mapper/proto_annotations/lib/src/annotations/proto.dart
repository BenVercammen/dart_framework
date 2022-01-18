class Proto {
  const Proto({
    this.prefix,
    this.packageName = '',
    this.includeFieldsByDefault = true,
    this.useProtoFieldNamingConventions,
    this.knownSubClasses,
  });
  final String packageName;
  final String? prefix;
  final bool includeFieldsByDefault;
  final bool? useProtoFieldNamingConventions;
  final List<Type>? knownSubClasses;
}

const proto = Proto();
