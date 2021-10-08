// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_services_base.dart';

// **************************************************************************
// ProtoServicesServiceGenerator
// **************************************************************************

typedef RecipeServiceFactory = RecipeServiceBase Function(ServiceCall call);

class GRecipeService extends GRecipeServiceBase {
  final RecipeServiceFactory $serviceFactory;
  final void Function(ServiceCall call) $authenticator;

  GRecipeService(
    this.$serviceFactory,
    this.$authenticator,
  );

  @override
  void $onMetadata(ServiceCall context) {
    $authenticator(context);
  }

  @override
  Future<GRecipe> create(
    ServiceCall call,
    GRecipe request,
  ) async {
    final service = $serviceFactory(call);

    final entity = request.toRecipe();

    final $result = await service.create(entity);
    final proto = $result.toProto();
    return proto;
  }

  @override
  Future<GRecipe> update(
    ServiceCall call,
    GRecipe request,
  ) async {
    final service = $serviceFactory(call);

    final entity = request.toRecipe();

    final $result = await service.update(entity);
    final proto = $result.toProto();
    return proto;
  }

  @override
  Future<G_GRecipeService_Delete_Return> delete(
    ServiceCall call,
    GKey request,
  ) async {
    final service = $serviceFactory(call);

    final entity = request.toKey();

    await service.delete(entity);
    final proto = G_GRecipeService_Delete_Return();
    return proto;
  }

  @override
  Future<GRecipe> get(
    ServiceCall call,
    GKey request,
  ) async {
    final service = $serviceFactory(call);

    final entity = request.toKey();

    final $result = await service.get(entity);
    final proto = $result.toProto();
    return proto;
  }

  @override
  Future<GListOfRecipe> search(
    ServiceCall call,
    G_GRecipeService_Search_Parameters request,
  ) async {
    final service = $serviceFactory(call);

    final $result = await service.search();
    final proto = GListOfRecipe()
      ..items.addAll($result.map((i) => i.toProto()));
    return proto;
  }

  @override
  Future<G_GRecipeService_SearchNullable_Return> searchNullable(
    ServiceCall call,
    G_GRecipeService_SearchNullable_Parameters request,
  ) async {
    final service = $serviceFactory(call);

    final value = await service.searchNullable();
    final proto = G_GRecipeService_SearchNullable_Return();
    proto.value
        .addAll(value?.map((e) => const $RecipeProtoMapper().toProto(e)) ?? []);
    proto.valueHasValue = value != null;

    return proto;
  }

  @override
  Future<G_GRecipeService_InsertMany_Return> insertMany(
    ServiceCall call,
    GListOfRecipe request,
  ) async {
    final service = $serviceFactory(call);

    final entity = request.items.map((i) => i.toRecipe()).toList();

    await service.insertMany(entity);
    final proto = G_GRecipeService_InsertMany_Return();
    return proto;
  }

  @override
  Future<G_GRecipeService_GetNullable_Return> getNullable(
    ServiceCall call,
    G_GRecipeService_GetNullable_Parameters request,
  ) async {
    final service = $serviceFactory(call);

    final value = await service.getNullable();
    final proto = G_GRecipeService_GetNullable_Return();
    if (value != null) {
      proto.value = const $RecipeProtoMapper().toProto(value);
    }
    proto.valueHasValue = value != null;

    return proto;
  }

  @override
  Future<G_GRecipeService_Count_Return> count(
    ServiceCall call,
    G_GRecipeService_Count_Parameters request,
  ) async {
    final service = $serviceFactory(call);

    final value = await service.count();
    final proto = G_GRecipeService_Count_Return();
    proto.value = value;

    return proto;
  }

  @override
  Future<G_GRecipeService_CountNullable_Return> countNullable(
    ServiceCall call,
    G_GRecipeService_CountNullable_Parameters request,
  ) async {
    final service = $serviceFactory(call);

    final p0 = request.returnNull;

    final value = await service.countNullable(
      p0,
    );
    final proto = G_GRecipeService_CountNullable_Return();
    if (value != null) {
      proto.value = value;
    }
    proto.valueHasValue = value != null;

    return proto;
  }

  @override
  Future<G_GRecipeService_Reindex_Return> reindex(
    ServiceCall call,
    G_GRecipeService_Reindex_Parameters request,
  ) async {
    final service = $serviceFactory(call);

    await service.reindex();
    final proto = G_GRecipeService_Reindex_Return();
    return proto;
  }

  @override
  Future<G_GRecipeService_GetMainRecipeType_Return> getMainRecipeType(
    ServiceCall call,
    G_GRecipeService_GetMainRecipeType_Parameters request,
  ) async {
    final service = $serviceFactory(call);

    final value = await service.getMainRecipeType();
    final proto = G_GRecipeService_GetMainRecipeType_Return();
    proto.value = GRecipeTypes.valueOf(value.index)!;

    return proto;
  }

  @override
  Future<G_GRecipeService_GetMainRecipeTypeNullable_Return>
      getMainRecipeTypeNullable(
    ServiceCall call,
    G_GRecipeService_GetMainRecipeTypeNullable_Parameters request,
  ) async {
    final service = $serviceFactory(call);

    final value = await service.getMainRecipeTypeNullable();
    final proto = G_GRecipeService_GetMainRecipeTypeNullable_Return();
    if (value != null) {
      proto.value = GRecipeTypes.valueOf(value.index)!;
    }
    proto.valueHasValue = value != null;

    return proto;
  }

  @override
  Future<G_GRecipeService_GetRecipeTypeList_Return> getRecipeTypeList(
    ServiceCall call,
    G_GRecipeService_GetRecipeTypeList_Parameters request,
  ) async {
    final service = $serviceFactory(call);

    final value = await service.getRecipeTypeList();
    final proto = G_GRecipeService_GetRecipeTypeList_Return();
    proto.value
        .addAll(value.map((e) => const $RecipeTypesProtoMapper().toProto(e)));

    return proto;
  }

  @override
  Future<G_GRecipeService_GetRecipeTypeListNullable_Return>
      getRecipeTypeListNullable(
    ServiceCall call,
    G_GRecipeService_GetRecipeTypeListNullable_Parameters request,
  ) async {
    final service = $serviceFactory(call);

    final value = await service.getRecipeTypeListNullable();
    final proto = G_GRecipeService_GetRecipeTypeListNullable_Return();
    proto.value.addAll(
        value?.map((e) => const $RecipeTypesProtoMapper().toProto(e)) ?? []);
    proto.valueHasValue = value != null;

    return proto;
  }

  @override
  Future<G_GRecipeService_GetListOfInts_Return> getListOfInts(
    ServiceCall call,
    G_GRecipeService_GetListOfInts_Parameters request,
  ) async {
    final service = $serviceFactory(call);

    final value = await service.getListOfInts();
    final proto = G_GRecipeService_GetListOfInts_Return();
    proto.value.addAll(value);

    return proto;
  }

  @override
  Future<G_GRecipeService_GetListOfIntsNullable_Return> getListOfIntsNullable(
    ServiceCall call,
    G_GRecipeService_GetListOfIntsNullable_Parameters request,
  ) async {
    final service = $serviceFactory(call);

    final value = await service.getListOfIntsNullable();
    final proto = G_GRecipeService_GetListOfIntsNullable_Return();
    proto.value.addAll(value ?? []);
    proto.valueHasValue = value != null;

    return proto;
  }

  @override
  Future<GCalcResult> doCalculation(
    ServiceCall call,
    GCalcParameters request,
  ) async {
    final service = $serviceFactory(call);

    final entity = request.toCalcParameters();

    final $result = await service.doCalculation(entity);
    final proto = $result.toProto();
    return proto;
  }

  @override
  Future<G_GRecipeService_ReceiveLotsOfArgs_Return> receiveLotsOfArgs(
    ServiceCall call,
    G_GRecipeService_ReceiveLotsOfArgs_Parameters request,
  ) async {
    final service = $serviceFactory(call);

    final p0 = request.pString;
    final p1 = request.pInt;
    final p2 = RecipeTypes.values[request.pRecipeTypes.value];
    final p3 = const $RecipeProtoMapper().fromProto(request.pRecipe);
    final p4 = List<String>.unmodifiable(request.pListStrings.map((e) => e));
    final p5 = List<int>.unmodifiable(request.pListInts.map((e) => e));
    final p6 = List<RecipeTypes>.unmodifiable(request.pListRecipeTypes
        .map((e) => const $RecipeTypesProtoMapper().fromProto(e)));
    final p7 = List<Recipe>.unmodifiable(request.pListRecipes
        .map((e) => const $RecipeProtoMapper().fromProto(e)));
    final p8 = Set<String>.unmodifiable(request.pSetString.map((e) => e));
    final p9 = Set<int>.unmodifiable(request.pSetInt.map((e) => e));
    final p10 = Set<RecipeTypes>.unmodifiable(request.pSetRecipeTypes
        .map((e) => const $RecipeTypesProtoMapper().fromProto(e)));
    final p11 = Set<Recipe>.unmodifiable(
        request.pSetRecipe.map((e) => const $RecipeProtoMapper().fromProto(e)));
    final p12 =
        List<String>.unmodifiable(request.pIterableString.map((e) => e));
    final p13 = List<int>.unmodifiable(request.pIterableInt.map((e) => e));
    final p14 = List<RecipeTypes>.unmodifiable(request.pIterableRecipeTypes
        .map((e) => const $RecipeTypesProtoMapper().fromProto(e)));
    final p15 = List<Recipe>.unmodifiable(request.pIterableRecipe
        .map((e) => const $RecipeProtoMapper().fromProto(e)));

    await service.receiveLotsOfArgs(
      p0,
      p1,
      p2,
      p3,
      p4,
      p5,
      p6,
      p7,
      p8,
      p9,
      p10,
      p11,
      p12,
      p13,
      p14,
      p15,
    );
    final proto = G_GRecipeService_ReceiveLotsOfArgs_Return();
    return proto;
  }

  @override
  Future<G_GRecipeService_ReceiveLotsOfNullableArgs_Return>
      receiveLotsOfNullableArgs(
    ServiceCall call,
    G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters request,
  ) async {
    final service = $serviceFactory(call);

    final p0 = (request.pStringHasValue ? (request.pString) : null);
    final p1 = (request.pIntHasValue ? (request.pInt) : null);
    final p2 = (request.pRecipeTypesHasValue
        ? (RecipeTypes.values[request.pRecipeTypes.value])
        : null);
    final p3 = (request.pRecipeHasValue
        ? (const $RecipeProtoMapper().fromProto(request.pRecipe))
        : null);
    final p4 = (request.pListStringsHasValue
        ? (List<String>.unmodifiable(request.pListStrings.map((e) => e)))
        : null);
    final p5 = (request.pListIntsHasValue
        ? (List<int>.unmodifiable(request.pListInts.map((e) => e)))
        : null);
    final p6 = (request.pListRecipeTypesHasValue
        ? (List<RecipeTypes>.unmodifiable(request.pListRecipeTypes
            .map((e) => const $RecipeTypesProtoMapper().fromProto(e))))
        : null);
    final p7 = (request.pListRecipesHasValue
        ? (List<Recipe>.unmodifiable(request.pListRecipes
            .map((e) => const $RecipeProtoMapper().fromProto(e))))
        : null);
    final p8 = (request.pSetStringHasValue
        ? (Set<String>.unmodifiable(request.pSetString.map((e) => e)))
        : null);
    final p9 = (request.pSetIntHasValue
        ? (Set<int>.unmodifiable(request.pSetInt.map((e) => e)))
        : null);
    final p10 = (request.pSetRecipeTypesHasValue
        ? (Set<RecipeTypes>.unmodifiable(request.pSetRecipeTypes
            .map((e) => const $RecipeTypesProtoMapper().fromProto(e))))
        : null);
    final p11 = (request.pSetRecipeHasValue
        ? (Set<Recipe>.unmodifiable(request.pSetRecipe
            .map((e) => const $RecipeProtoMapper().fromProto(e))))
        : null);
    final p12 = (request.pIterableStringHasValue
        ? (List<String>.unmodifiable(request.pIterableString.map((e) => e)))
        : null);
    final p13 = (request.pIterableIntHasValue
        ? (List<int>.unmodifiable(request.pIterableInt.map((e) => e)))
        : null);
    final p14 = (request.pIterableRecipeTypesHasValue
        ? (List<RecipeTypes>.unmodifiable(request.pIterableRecipeTypes
            .map((e) => const $RecipeTypesProtoMapper().fromProto(e))))
        : null);
    final p15 = (request.pIterableRecipeHasValue
        ? (List<Recipe>.unmodifiable(request.pIterableRecipe
            .map((e) => const $RecipeProtoMapper().fromProto(e))))
        : null);

    final value = await service.receiveLotsOfNullableArgs(
      p0,
      p1,
      p2,
      p3,
      p4,
      p5,
      p6,
      p7,
      p8,
      p9,
      p10,
      p11,
      p12,
      p13,
      p14,
      p15,
    );
    final proto = G_GRecipeService_ReceiveLotsOfNullableArgs_Return();
    proto.value.addAll(value);

    return proto;
  }
}

// **************************************************************************
// ProtoServicesClientGenerator
// **************************************************************************

abstract class RecipeServiceClientBase implements RecipeServiceBase {
  Future<GRecipeServiceClient> getGServiceClient();

  @override
  Future<Recipe> create(
    Recipe entity,
  ) async {
    final serviceClient = await getGServiceClient();
    final $parm = entity.toProto();

    final $result = await serviceClient.create($parm);

    final $ret = $result.toRecipe();
    return $ret;
  }

  @override
  Future<Recipe> update(
    Recipe entity,
  ) async {
    final serviceClient = await getGServiceClient();
    final $parm = entity.toProto();

    final $result = await serviceClient.update($parm);

    final $ret = $result.toRecipe();
    return $ret;
  }

  @override
  Future<void> delete(
    Key key,
  ) async {
    final serviceClient = await getGServiceClient();
    final $parm = key.toProto();

    await serviceClient.delete($parm);
  }

  @override
  Future<Recipe> get(
    Key key,
  ) async {
    final serviceClient = await getGServiceClient();
    final $parm = key.toProto();

    final $result = await serviceClient.get($parm);

    final $ret = $result.toRecipe();
    return $ret;
  }

  @override
  Future<List<Recipe>> search() async {
    final serviceClient = await getGServiceClient();
    final $parm = G_GRecipeService_Search_Parameters();

    final $result = await serviceClient.search($parm);

    final $ret = $result.items.map((i) => i.toRecipe()).toList();
    return $ret;
  }

  @override
  Future<List<Recipe>?> searchNullable() async {
    final serviceClient = await getGServiceClient();
    final $parm = G_GRecipeService_SearchNullable_Parameters();

    final $result = await serviceClient.searchNullable($parm);

    final $ret = ($result.valueHasValue
        ? (List<Recipe>.unmodifiable(
            $result.value.map((e) => const $RecipeProtoMapper().fromProto(e))))
        : null);
    return $ret;
  }

  @override
  Future<void> insertMany(
    List<Recipe> recipes,
  ) async {
    final serviceClient = await getGServiceClient();
    final $parm = GListOfRecipe(items: recipes.map((i) => i.toProto()));

    await serviceClient.insertMany($parm);
  }

  @override
  Future<Recipe?> getNullable() async {
    final serviceClient = await getGServiceClient();
    final $parm = G_GRecipeService_GetNullable_Parameters();

    final $result = await serviceClient.getNullable($parm);

    final $ret = ($result.valueHasValue
        ? (const $RecipeProtoMapper().fromProto($result.value))
        : null);
    return $ret;
  }

  @override
  Future<int> count() async {
    final serviceClient = await getGServiceClient();
    final $parm = G_GRecipeService_Count_Parameters();

    final $result = await serviceClient.count($parm);

    final $ret = $result.value;
    return $ret;
  }

  @override
  Future<int?> countNullable(
    bool returnNull,
  ) async {
    final serviceClient = await getGServiceClient();
    final $parm = G_GRecipeService_CountNullable_Parameters();

    $parm.returnNull = returnNull;

    final $result = await serviceClient.countNullable($parm);

    final $ret = ($result.valueHasValue ? ($result.value) : null);
    return $ret;
  }

  @override
  Future<void> reindex() async {
    final serviceClient = await getGServiceClient();
    final $parm = G_GRecipeService_Reindex_Parameters();

    await serviceClient.reindex($parm);
  }

  @override
  Future<RecipeTypes> getMainRecipeType() async {
    final serviceClient = await getGServiceClient();
    final $parm = G_GRecipeService_GetMainRecipeType_Parameters();

    final $result = await serviceClient.getMainRecipeType($parm);

    final $ret = RecipeTypes.values[$result.value.value];
    return $ret;
  }

  @override
  Future<RecipeTypes?> getMainRecipeTypeNullable() async {
    final serviceClient = await getGServiceClient();
    final $parm = G_GRecipeService_GetMainRecipeTypeNullable_Parameters();

    final $result = await serviceClient.getMainRecipeTypeNullable($parm);

    final $ret = ($result.valueHasValue
        ? (RecipeTypes.values[$result.value.value])
        : null);
    return $ret;
  }

  @override
  Future<List<RecipeTypes>> getRecipeTypeList() async {
    final serviceClient = await getGServiceClient();
    final $parm = G_GRecipeService_GetRecipeTypeList_Parameters();

    final $result = await serviceClient.getRecipeTypeList($parm);

    final $ret = List<RecipeTypes>.unmodifiable(
        $result.value.map((e) => const $RecipeTypesProtoMapper().fromProto(e)));
    return $ret;
  }

  @override
  Future<List<RecipeTypes>?> getRecipeTypeListNullable() async {
    final serviceClient = await getGServiceClient();
    final $parm = G_GRecipeService_GetRecipeTypeListNullable_Parameters();

    final $result = await serviceClient.getRecipeTypeListNullable($parm);

    final $ret = ($result.valueHasValue
        ? (List<RecipeTypes>.unmodifiable($result.value
            .map((e) => const $RecipeTypesProtoMapper().fromProto(e))))
        : null);
    return $ret;
  }

  @override
  Future<List<int>> getListOfInts() async {
    final serviceClient = await getGServiceClient();
    final $parm = G_GRecipeService_GetListOfInts_Parameters();

    final $result = await serviceClient.getListOfInts($parm);

    final $ret = List<int>.unmodifiable($result.value.map((e) => e));
    return $ret;
  }

  @override
  Future<List<int>?> getListOfIntsNullable() async {
    final serviceClient = await getGServiceClient();
    final $parm = G_GRecipeService_GetListOfIntsNullable_Parameters();

    final $result = await serviceClient.getListOfIntsNullable($parm);

    final $ret = ($result.valueHasValue
        ? (List<int>.unmodifiable($result.value.map((e) => e)))
        : null);
    return $ret;
  }

  @override
  Future<CalcResult> doCalculation(
    CalcParameters parameters,
  ) async {
    final serviceClient = await getGServiceClient();
    final $parm = parameters.toProto();

    final $result = await serviceClient.doCalculation($parm);

    final $ret = $result.toCalcResult();
    return $ret;
  }

  @override
  Future<void> receiveLotsOfArgs(
    String pString,
    int pInt,
    RecipeTypes pRecipeTypes,
    Recipe pRecipe,
    List<String> pListStrings,
    List<int> pListInts,
    List<RecipeTypes> pListRecipeTypes,
    List<Recipe> pListRecipes,
    Set<String> pSetString,
    Set<int> pSetInt,
    Set<RecipeTypes> pSetRecipeTypes,
    Set<Recipe> pSetRecipe,
    Iterable<String> pIterableString,
    Iterable<int> pIterableInt,
    Iterable<RecipeTypes> pIterableRecipeTypes,
    Iterable<Recipe> pIterableRecipe,
  ) async {
    final serviceClient = await getGServiceClient();
    final $parm = G_GRecipeService_ReceiveLotsOfArgs_Parameters();

    $parm.pString = pString;
    $parm.pInt = pInt;
    $parm.pRecipeTypes = GRecipeTypes.valueOf(pRecipeTypes.index)!;
    $parm.pRecipe = const $RecipeProtoMapper().toProto(pRecipe);
    $parm.pListStrings.addAll(pListStrings);

    $parm.pListInts.addAll(pListInts);

    $parm.pListRecipeTypes.addAll(pListRecipeTypes
        .map((e) => const $RecipeTypesProtoMapper().toProto(e)));

    $parm.pListRecipes
        .addAll(pListRecipes.map((e) => const $RecipeProtoMapper().toProto(e)));

    $parm.pSetString.addAll(pSetString);

    $parm.pSetInt.addAll(pSetInt);

    $parm.pSetRecipeTypes.addAll(
        pSetRecipeTypes.map((e) => const $RecipeTypesProtoMapper().toProto(e)));

    $parm.pSetRecipe
        .addAll(pSetRecipe.map((e) => const $RecipeProtoMapper().toProto(e)));

    $parm.pIterableString.addAll(pIterableString);

    $parm.pIterableInt.addAll(pIterableInt);

    $parm.pIterableRecipeTypes.addAll(pIterableRecipeTypes
        .map((e) => const $RecipeTypesProtoMapper().toProto(e)));

    $parm.pIterableRecipe.addAll(
        pIterableRecipe.map((e) => const $RecipeProtoMapper().toProto(e)));

    await serviceClient.receiveLotsOfArgs($parm);
  }

  @override
  Future<List<int>> receiveLotsOfNullableArgs(
    String? pString,
    int? pInt,
    RecipeTypes? pRecipeTypes,
    Recipe? pRecipe,
    List<String>? pListStrings,
    List<int>? pListInts,
    List<RecipeTypes>? pListRecipeTypes,
    List<Recipe>? pListRecipes,
    Set<String>? pSetString,
    Set<int>? pSetInt,
    Set<RecipeTypes>? pSetRecipeTypes,
    Set<Recipe>? pSetRecipe,
    Iterable<String>? pIterableString,
    Iterable<int>? pIterableInt,
    Iterable<RecipeTypes>? pIterableRecipeTypes,
    Iterable<Recipe>? pIterableRecipe,
  ) async {
    final serviceClient = await getGServiceClient();
    final $parm = G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters();

    if (pString != null) {
      $parm.pString = pString;
    }
    $parm.pStringHasValue = pString != null;

    if (pInt != null) {
      $parm.pInt = pInt;
    }
    $parm.pIntHasValue = pInt != null;

    if (pRecipeTypes != null) {
      $parm.pRecipeTypes = GRecipeTypes.valueOf(pRecipeTypes.index)!;
    }
    $parm.pRecipeTypesHasValue = pRecipeTypes != null;

    if (pRecipe != null) {
      $parm.pRecipe = const $RecipeProtoMapper().toProto(pRecipe);
    }
    $parm.pRecipeHasValue = pRecipe != null;

    $parm.pListStrings.addAll(pListStrings ?? []);
    $parm.pListStringsHasValue = pListStrings != null;

    $parm.pListInts.addAll(pListInts ?? []);
    $parm.pListIntsHasValue = pListInts != null;

    $parm.pListRecipeTypes.addAll(pListRecipeTypes
            ?.map((e) => const $RecipeTypesProtoMapper().toProto(e)) ??
        []);
    $parm.pListRecipeTypesHasValue = pListRecipeTypes != null;

    $parm.pListRecipes.addAll(
        pListRecipes?.map((e) => const $RecipeProtoMapper().toProto(e)) ?? []);
    $parm.pListRecipesHasValue = pListRecipes != null;

    $parm.pSetString.addAll(pSetString ?? []);
    $parm.pSetStringHasValue = pSetString != null;

    $parm.pSetInt.addAll(pSetInt ?? []);
    $parm.pSetIntHasValue = pSetInt != null;

    $parm.pSetRecipeTypes.addAll(pSetRecipeTypes
            ?.map((e) => const $RecipeTypesProtoMapper().toProto(e)) ??
        []);
    $parm.pSetRecipeTypesHasValue = pSetRecipeTypes != null;

    $parm.pSetRecipe.addAll(
        pSetRecipe?.map((e) => const $RecipeProtoMapper().toProto(e)) ?? []);
    $parm.pSetRecipeHasValue = pSetRecipe != null;

    $parm.pIterableString.addAll(pIterableString ?? []);
    $parm.pIterableStringHasValue = pIterableString != null;

    $parm.pIterableInt.addAll(pIterableInt ?? []);
    $parm.pIterableIntHasValue = pIterableInt != null;

    $parm.pIterableRecipeTypes.addAll(pIterableRecipeTypes
            ?.map((e) => const $RecipeTypesProtoMapper().toProto(e)) ??
        []);
    $parm.pIterableRecipeTypesHasValue = pIterableRecipeTypes != null;

    $parm.pIterableRecipe.addAll(
        pIterableRecipe?.map((e) => const $RecipeProtoMapper().toProto(e)) ??
            []);
    $parm.pIterableRecipeHasValue = pIterableRecipe != null;

    final $result = await serviceClient.receiveLotsOfNullableArgs($parm);

    final $ret = List<int>.unmodifiable($result.value.map((e) => e));
    return $ret;
  }
}
