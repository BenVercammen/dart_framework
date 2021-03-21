import 'proto_base.dart';

class Proto extends ProtoBase {
  const Proto({
    String? prefix,
    String packageName = '',
    bool includeFieldsByDefault = true,
    bool nullableFieldsByDefault = false,
  }) : super(
          prefix: prefix,
          packageName: packageName,
          includeFieldsByDefault: includeFieldsByDefault,
          nullableFieldsByDefault: nullableFieldsByDefault,
        );
}

const proto = Proto();