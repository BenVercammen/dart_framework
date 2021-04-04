// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_cache.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

extension UserCacheCopyWithExtension on UserCache {
  UserCache copyWith({
    DateTime? updateTimestamp,
    List<String>? permissions,
    bool? isAdministrator,
  }) {
    return UserCache(
      updateTimestamp: updateTimestamp ?? this.updateTimestamp,
      permissions: permissions ?? this.permissions,
      isAdministrator: isAdministrator ?? this.isAdministrator,
    );
  }
}

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class UserCacheMapMapper extends MapMapper<UserCache> {
  static final UserCacheMapMapper _singleton = UserCacheMapMapper._();

  UserCacheMapMapper._();
  factory UserCacheMapMapper() => _singleton;

  @override
  UserCache fromMap(Map<String, dynamic> map) {
    return UserCache(
      updateTimestamp: DateTime.parse(map['updateTimestamp']),
      permissions: List<String>.from(map['permissions']),
      isAdministrator: map['isAdministrator'] as bool,
    );
  }

  @override
  Map<String, dynamic> toMap(UserCache instance) {
    final map = <String, dynamic>{};

    map['updateTimestamp'] = instance.updateTimestamp.toIso8601String();
    map['permissions'] = instance.permissions;
    ;
    map['isAdministrator'] = instance.isAdministrator;

    return map;
  }
}

extension UserCacheMapExtension on UserCache {
  Map<String, dynamic> toMap() => UserCacheMapMapper().toMap(this);
  static UserCache fromMap(Map<String, dynamic> map) =>
      UserCacheMapMapper().fromMap(map);
}

extension MapUserCacheExtension on Map<String, dynamic> {
  UserCache toUserCache() => UserCacheMapMapper().fromMap(this);
}