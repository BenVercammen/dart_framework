///
//  Generated code. Do not modify.
//  source: recipe_services_base.services.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'recipe.pb.dart' as $0;
import 'key.pb.dart' as $1;
import 'recipe_services_base.services.pb.dart' as $2;
import 'calc_parameters.pb.dart' as $3;
import 'calc_result.pb.dart' as $4;
export 'recipe_services_base.services.pb.dart';

class GRecipeServiceClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$0.GRecipe, $0.GRecipe>(
      '/GRecipeService/Create',
      ($0.GRecipe value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GRecipe.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$0.GRecipe, $0.GRecipe>(
      '/GRecipeService/Update',
      ($0.GRecipe value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GRecipe.fromBuffer(value));
  static final _$delete =
      $grpc.ClientMethod<$1.GKey, $2.G_GRecipeService_Delete_Return>(
          '/GRecipeService/Delete',
          ($1.GKey value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.G_GRecipeService_Delete_Return.fromBuffer(value));
  static final _$get = $grpc.ClientMethod<$1.GKey, $0.GRecipe>(
      '/GRecipeService/Get',
      ($1.GKey value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GRecipe.fromBuffer(value));
  static final _$search = $grpc.ClientMethod<
          $2.G_GRecipeService_Search_Parameters, $0.GListOfRecipe>(
      '/GRecipeService/Search',
      ($2.G_GRecipeService_Search_Parameters value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GListOfRecipe.fromBuffer(value));
  static final _$searchNullable = $grpc.ClientMethod<
          $2.G_GRecipeService_SearchNullable_Parameters,
          $2.G_GRecipeService_SearchNullable_Return>(
      '/GRecipeService/SearchNullable',
      ($2.G_GRecipeService_SearchNullable_Parameters value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.G_GRecipeService_SearchNullable_Return.fromBuffer(value));
  static final _$insertMany = $grpc.ClientMethod<$0.GListOfRecipe,
          $2.G_GRecipeService_InsertMany_Return>(
      '/GRecipeService/InsertMany',
      ($0.GListOfRecipe value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.G_GRecipeService_InsertMany_Return.fromBuffer(value));
  static final _$getNullable = $grpc.ClientMethod<
          $2.G_GRecipeService_GetNullable_Parameters,
          $2.G_GRecipeService_GetNullable_Return>(
      '/GRecipeService/GetNullable',
      ($2.G_GRecipeService_GetNullable_Parameters value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.G_GRecipeService_GetNullable_Return.fromBuffer(value));
  static final _$count = $grpc.ClientMethod<
          $2.G_GRecipeService_Count_Parameters,
          $2.G_GRecipeService_Count_Return>(
      '/GRecipeService/Count',
      ($2.G_GRecipeService_Count_Parameters value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.G_GRecipeService_Count_Return.fromBuffer(value));
  static final _$countNullable = $grpc.ClientMethod<
          $2.G_GRecipeService_CountNullable_Parameters,
          $2.G_GRecipeService_CountNullable_Return>(
      '/GRecipeService/CountNullable',
      ($2.G_GRecipeService_CountNullable_Parameters value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.G_GRecipeService_CountNullable_Return.fromBuffer(value));
  static final _$reindex = $grpc.ClientMethod<
          $2.G_GRecipeService_Reindex_Parameters,
          $2.G_GRecipeService_Reindex_Return>(
      '/GRecipeService/Reindex',
      ($2.G_GRecipeService_Reindex_Parameters value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.G_GRecipeService_Reindex_Return.fromBuffer(value));
  static final _$getMainRecipeType = $grpc.ClientMethod<
          $2.G_GRecipeService_GetMainRecipeType_Parameters,
          $2.G_GRecipeService_GetMainRecipeType_Return>(
      '/GRecipeService/GetMainRecipeType',
      ($2.G_GRecipeService_GetMainRecipeType_Parameters value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.G_GRecipeService_GetMainRecipeType_Return.fromBuffer(value));
  static final _$getMainRecipeTypeNullable = $grpc.ClientMethod<
          $2.G_GRecipeService_GetMainRecipeTypeNullable_Parameters,
          $2.G_GRecipeService_GetMainRecipeTypeNullable_Return>(
      '/GRecipeService/GetMainRecipeTypeNullable',
      ($2.G_GRecipeService_GetMainRecipeTypeNullable_Parameters value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.G_GRecipeService_GetMainRecipeTypeNullable_Return.fromBuffer(
              value));
  static final _$getRecipeTypeList = $grpc.ClientMethod<
          $2.G_GRecipeService_GetRecipeTypeList_Parameters,
          $2.G_GRecipeService_GetRecipeTypeList_Return>(
      '/GRecipeService/GetRecipeTypeList',
      ($2.G_GRecipeService_GetRecipeTypeList_Parameters value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.G_GRecipeService_GetRecipeTypeList_Return.fromBuffer(value));
  static final _$getRecipeTypeListNullable = $grpc.ClientMethod<
          $2.G_GRecipeService_GetRecipeTypeListNullable_Parameters,
          $2.G_GRecipeService_GetRecipeTypeListNullable_Return>(
      '/GRecipeService/GetRecipeTypeListNullable',
      ($2.G_GRecipeService_GetRecipeTypeListNullable_Parameters value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.G_GRecipeService_GetRecipeTypeListNullable_Return.fromBuffer(
              value));
  static final _$getListOfInts = $grpc.ClientMethod<
          $2.G_GRecipeService_GetListOfInts_Parameters,
          $2.G_GRecipeService_GetListOfInts_Return>(
      '/GRecipeService/GetListOfInts',
      ($2.G_GRecipeService_GetListOfInts_Parameters value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.G_GRecipeService_GetListOfInts_Return.fromBuffer(value));
  static final _$getListOfIntsNullable = $grpc.ClientMethod<
          $2.G_GRecipeService_GetListOfIntsNullable_Parameters,
          $2.G_GRecipeService_GetListOfIntsNullable_Return>(
      '/GRecipeService/GetListOfIntsNullable',
      ($2.G_GRecipeService_GetListOfIntsNullable_Parameters value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.G_GRecipeService_GetListOfIntsNullable_Return.fromBuffer(value));
  static final _$doCalculation =
      $grpc.ClientMethod<$3.GCalcParameters, $4.GCalcResult>(
          '/GRecipeService/DoCalculation',
          ($3.GCalcParameters value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.GCalcResult.fromBuffer(value));
  static final _$receiveLotsOfArgs = $grpc.ClientMethod<
          $2.G_GRecipeService_ReceiveLotsOfArgs_Parameters,
          $2.G_GRecipeService_ReceiveLotsOfArgs_Return>(
      '/GRecipeService/ReceiveLotsOfArgs',
      ($2.G_GRecipeService_ReceiveLotsOfArgs_Parameters value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.G_GRecipeService_ReceiveLotsOfArgs_Return.fromBuffer(value));
  static final _$receiveLotsOfNullableArgs = $grpc.ClientMethod<
          $2.G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters,
          $2.G_GRecipeService_ReceiveLotsOfNullableArgs_Return>(
      '/GRecipeService/ReceiveLotsOfNullableArgs',
      ($2.G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.G_GRecipeService_ReceiveLotsOfNullableArgs_Return.fromBuffer(
              value));

  GRecipeServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GRecipe> create($0.GRecipe request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.GRecipe> update($0.GRecipe request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$2.G_GRecipeService_Delete_Return> delete(
      $1.GKey request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$0.GRecipe> get($1.GKey request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$0.GListOfRecipe> search(
      $2.G_GRecipeService_Search_Parameters request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$search, request, options: options);
  }

  $grpc.ResponseFuture<$2.G_GRecipeService_SearchNullable_Return>
      searchNullable($2.G_GRecipeService_SearchNullable_Parameters request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchNullable, request, options: options);
  }

  $grpc.ResponseFuture<$2.G_GRecipeService_InsertMany_Return> insertMany(
      $0.GListOfRecipe request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertMany, request, options: options);
  }

  $grpc.ResponseFuture<$2.G_GRecipeService_GetNullable_Return> getNullable(
      $2.G_GRecipeService_GetNullable_Parameters request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getNullable, request, options: options);
  }

  $grpc.ResponseFuture<$2.G_GRecipeService_Count_Return> count(
      $2.G_GRecipeService_Count_Parameters request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$count, request, options: options);
  }

  $grpc.ResponseFuture<$2.G_GRecipeService_CountNullable_Return> countNullable(
      $2.G_GRecipeService_CountNullable_Parameters request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$countNullable, request, options: options);
  }

  $grpc.ResponseFuture<$2.G_GRecipeService_Reindex_Return> reindex(
      $2.G_GRecipeService_Reindex_Parameters request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$reindex, request, options: options);
  }

  $grpc.ResponseFuture<$2.G_GRecipeService_GetMainRecipeType_Return>
      getMainRecipeType(
          $2.G_GRecipeService_GetMainRecipeType_Parameters request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMainRecipeType, request, options: options);
  }

  $grpc.ResponseFuture<$2.G_GRecipeService_GetMainRecipeTypeNullable_Return>
      getMainRecipeTypeNullable(
          $2.G_GRecipeService_GetMainRecipeTypeNullable_Parameters request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMainRecipeTypeNullable, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.G_GRecipeService_GetRecipeTypeList_Return>
      getRecipeTypeList(
          $2.G_GRecipeService_GetRecipeTypeList_Parameters request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRecipeTypeList, request, options: options);
  }

  $grpc.ResponseFuture<$2.G_GRecipeService_GetRecipeTypeListNullable_Return>
      getRecipeTypeListNullable(
          $2.G_GRecipeService_GetRecipeTypeListNullable_Parameters request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRecipeTypeListNullable, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.G_GRecipeService_GetListOfInts_Return> getListOfInts(
      $2.G_GRecipeService_GetListOfInts_Parameters request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getListOfInts, request, options: options);
  }

  $grpc.ResponseFuture<$2.G_GRecipeService_GetListOfIntsNullable_Return>
      getListOfIntsNullable(
          $2.G_GRecipeService_GetListOfIntsNullable_Parameters request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getListOfIntsNullable, request, options: options);
  }

  $grpc.ResponseFuture<$4.GCalcResult> doCalculation($3.GCalcParameters request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$doCalculation, request, options: options);
  }

  $grpc.ResponseFuture<$2.G_GRecipeService_ReceiveLotsOfArgs_Return>
      receiveLotsOfArgs(
          $2.G_GRecipeService_ReceiveLotsOfArgs_Parameters request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$receiveLotsOfArgs, request, options: options);
  }

  $grpc.ResponseFuture<$2.G_GRecipeService_ReceiveLotsOfNullableArgs_Return>
      receiveLotsOfNullableArgs(
          $2.G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$receiveLotsOfNullableArgs, request,
        options: options);
  }
}

abstract class GRecipeServiceBase extends $grpc.Service {
  $core.String get $name => 'GRecipeService';

  GRecipeServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GRecipe, $0.GRecipe>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GRecipe.fromBuffer(value),
        ($0.GRecipe value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GRecipe, $0.GRecipe>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GRecipe.fromBuffer(value),
        ($0.GRecipe value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GKey, $2.G_GRecipeService_Delete_Return>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GKey.fromBuffer(value),
        ($2.G_GRecipeService_Delete_Return value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GKey, $0.GRecipe>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GKey.fromBuffer(value),
        ($0.GRecipe value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.G_GRecipeService_Search_Parameters,
            $0.GListOfRecipe>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.G_GRecipeService_Search_Parameters.fromBuffer(value),
        ($0.GListOfRecipe value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $2.G_GRecipeService_SearchNullable_Parameters,
            $2.G_GRecipeService_SearchNullable_Return>(
        'SearchNullable',
        searchNullable_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.G_GRecipeService_SearchNullable_Parameters.fromBuffer(value),
        ($2.G_GRecipeService_SearchNullable_Return value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GListOfRecipe,
            $2.G_GRecipeService_InsertMany_Return>(
        'InsertMany',
        insertMany_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GListOfRecipe.fromBuffer(value),
        ($2.G_GRecipeService_InsertMany_Return value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.G_GRecipeService_GetNullable_Parameters,
            $2.G_GRecipeService_GetNullable_Return>(
        'GetNullable',
        getNullable_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.G_GRecipeService_GetNullable_Parameters.fromBuffer(value),
        ($2.G_GRecipeService_GetNullable_Return value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.G_GRecipeService_Count_Parameters,
            $2.G_GRecipeService_Count_Return>(
        'Count',
        count_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.G_GRecipeService_Count_Parameters.fromBuffer(value),
        ($2.G_GRecipeService_Count_Return value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.G_GRecipeService_CountNullable_Parameters,
            $2.G_GRecipeService_CountNullable_Return>(
        'CountNullable',
        countNullable_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.G_GRecipeService_CountNullable_Parameters.fromBuffer(value),
        ($2.G_GRecipeService_CountNullable_Return value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.G_GRecipeService_Reindex_Parameters,
            $2.G_GRecipeService_Reindex_Return>(
        'Reindex',
        reindex_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.G_GRecipeService_Reindex_Parameters.fromBuffer(value),
        ($2.G_GRecipeService_Reindex_Return value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $2.G_GRecipeService_GetMainRecipeType_Parameters,
            $2.G_GRecipeService_GetMainRecipeType_Return>(
        'GetMainRecipeType',
        getMainRecipeType_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.G_GRecipeService_GetMainRecipeType_Parameters.fromBuffer(value),
        ($2.G_GRecipeService_GetMainRecipeType_Return value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $2.G_GRecipeService_GetMainRecipeTypeNullable_Parameters,
            $2.G_GRecipeService_GetMainRecipeTypeNullable_Return>(
        'GetMainRecipeTypeNullable',
        getMainRecipeTypeNullable_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.G_GRecipeService_GetMainRecipeTypeNullable_Parameters.fromBuffer(
                value),
        ($2.G_GRecipeService_GetMainRecipeTypeNullable_Return value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $2.G_GRecipeService_GetRecipeTypeList_Parameters,
            $2.G_GRecipeService_GetRecipeTypeList_Return>(
        'GetRecipeTypeList',
        getRecipeTypeList_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.G_GRecipeService_GetRecipeTypeList_Parameters.fromBuffer(value),
        ($2.G_GRecipeService_GetRecipeTypeList_Return value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $2.G_GRecipeService_GetRecipeTypeListNullable_Parameters,
            $2.G_GRecipeService_GetRecipeTypeListNullable_Return>(
        'GetRecipeTypeListNullable',
        getRecipeTypeListNullable_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.G_GRecipeService_GetRecipeTypeListNullable_Parameters.fromBuffer(
                value),
        ($2.G_GRecipeService_GetRecipeTypeListNullable_Return value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.G_GRecipeService_GetListOfInts_Parameters,
            $2.G_GRecipeService_GetListOfInts_Return>(
        'GetListOfInts',
        getListOfInts_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.G_GRecipeService_GetListOfInts_Parameters.fromBuffer(value),
        ($2.G_GRecipeService_GetListOfInts_Return value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $2.G_GRecipeService_GetListOfIntsNullable_Parameters,
            $2.G_GRecipeService_GetListOfIntsNullable_Return>(
        'GetListOfIntsNullable',
        getListOfIntsNullable_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.G_GRecipeService_GetListOfIntsNullable_Parameters.fromBuffer(
                value),
        ($2.G_GRecipeService_GetListOfIntsNullable_Return value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GCalcParameters, $4.GCalcResult>(
        'DoCalculation',
        doCalculation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GCalcParameters.fromBuffer(value),
        ($4.GCalcResult value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $2.G_GRecipeService_ReceiveLotsOfArgs_Parameters,
            $2.G_GRecipeService_ReceiveLotsOfArgs_Return>(
        'ReceiveLotsOfArgs',
        receiveLotsOfArgs_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.G_GRecipeService_ReceiveLotsOfArgs_Parameters.fromBuffer(value),
        ($2.G_GRecipeService_ReceiveLotsOfArgs_Return value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $2.G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters,
            $2.G_GRecipeService_ReceiveLotsOfNullableArgs_Return>(
        'ReceiveLotsOfNullableArgs',
        receiveLotsOfNullableArgs_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters.fromBuffer(
                value),
        ($2.G_GRecipeService_ReceiveLotsOfNullableArgs_Return value) =>
            value.writeToBuffer()));
  }

  $async.Future<$0.GRecipe> create_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GRecipe> request) async {
    return create(call, await request);
  }

  $async.Future<$0.GRecipe> update_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GRecipe> request) async {
    return update(call, await request);
  }

  $async.Future<$2.G_GRecipeService_Delete_Return> delete_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GKey> request) async {
    return delete(call, await request);
  }

  $async.Future<$0.GRecipe> get_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GKey> request) async {
    return get(call, await request);
  }

  $async.Future<$0.GListOfRecipe> search_Pre($grpc.ServiceCall call,
      $async.Future<$2.G_GRecipeService_Search_Parameters> request) async {
    return search(call, await request);
  }

  $async.Future<$2.G_GRecipeService_SearchNullable_Return> searchNullable_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.G_GRecipeService_SearchNullable_Parameters>
          request) async {
    return searchNullable(call, await request);
  }

  $async.Future<$2.G_GRecipeService_InsertMany_Return> insertMany_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GListOfRecipe> request) async {
    return insertMany(call, await request);
  }

  $async.Future<$2.G_GRecipeService_GetNullable_Return> getNullable_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.G_GRecipeService_GetNullable_Parameters> request) async {
    return getNullable(call, await request);
  }

  $async.Future<$2.G_GRecipeService_Count_Return> count_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.G_GRecipeService_Count_Parameters> request) async {
    return count(call, await request);
  }

  $async.Future<$2.G_GRecipeService_CountNullable_Return> countNullable_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.G_GRecipeService_CountNullable_Parameters>
          request) async {
    return countNullable(call, await request);
  }

  $async.Future<$2.G_GRecipeService_Reindex_Return> reindex_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.G_GRecipeService_Reindex_Parameters> request) async {
    return reindex(call, await request);
  }

  $async.Future<$2.G_GRecipeService_GetMainRecipeType_Return>
      getMainRecipeType_Pre(
          $grpc.ServiceCall call,
          $async.Future<$2.G_GRecipeService_GetMainRecipeType_Parameters>
              request) async {
    return getMainRecipeType(call, await request);
  }

  $async.Future<$2.G_GRecipeService_GetMainRecipeTypeNullable_Return>
      getMainRecipeTypeNullable_Pre(
          $grpc.ServiceCall call,
          $async.Future<
                  $2.G_GRecipeService_GetMainRecipeTypeNullable_Parameters>
              request) async {
    return getMainRecipeTypeNullable(call, await request);
  }

  $async.Future<$2.G_GRecipeService_GetRecipeTypeList_Return>
      getRecipeTypeList_Pre(
          $grpc.ServiceCall call,
          $async.Future<$2.G_GRecipeService_GetRecipeTypeList_Parameters>
              request) async {
    return getRecipeTypeList(call, await request);
  }

  $async.Future<$2.G_GRecipeService_GetRecipeTypeListNullable_Return>
      getRecipeTypeListNullable_Pre(
          $grpc.ServiceCall call,
          $async.Future<
                  $2.G_GRecipeService_GetRecipeTypeListNullable_Parameters>
              request) async {
    return getRecipeTypeListNullable(call, await request);
  }

  $async.Future<$2.G_GRecipeService_GetListOfInts_Return> getListOfInts_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.G_GRecipeService_GetListOfInts_Parameters>
          request) async {
    return getListOfInts(call, await request);
  }

  $async.Future<$2.G_GRecipeService_GetListOfIntsNullable_Return>
      getListOfIntsNullable_Pre(
          $grpc.ServiceCall call,
          $async.Future<$2.G_GRecipeService_GetListOfIntsNullable_Parameters>
              request) async {
    return getListOfIntsNullable(call, await request);
  }

  $async.Future<$4.GCalcResult> doCalculation_Pre(
      $grpc.ServiceCall call, $async.Future<$3.GCalcParameters> request) async {
    return doCalculation(call, await request);
  }

  $async.Future<$2.G_GRecipeService_ReceiveLotsOfArgs_Return>
      receiveLotsOfArgs_Pre(
          $grpc.ServiceCall call,
          $async.Future<$2.G_GRecipeService_ReceiveLotsOfArgs_Parameters>
              request) async {
    return receiveLotsOfArgs(call, await request);
  }

  $async.Future<$2.G_GRecipeService_ReceiveLotsOfNullableArgs_Return>
      receiveLotsOfNullableArgs_Pre(
          $grpc.ServiceCall call,
          $async.Future<
                  $2.G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters>
              request) async {
    return receiveLotsOfNullableArgs(call, await request);
  }

  $async.Future<$0.GRecipe> create($grpc.ServiceCall call, $0.GRecipe request);
  $async.Future<$0.GRecipe> update($grpc.ServiceCall call, $0.GRecipe request);
  $async.Future<$2.G_GRecipeService_Delete_Return> delete(
      $grpc.ServiceCall call, $1.GKey request);
  $async.Future<$0.GRecipe> get($grpc.ServiceCall call, $1.GKey request);
  $async.Future<$0.GListOfRecipe> search(
      $grpc.ServiceCall call, $2.G_GRecipeService_Search_Parameters request);
  $async.Future<$2.G_GRecipeService_SearchNullable_Return> searchNullable(
      $grpc.ServiceCall call,
      $2.G_GRecipeService_SearchNullable_Parameters request);
  $async.Future<$2.G_GRecipeService_InsertMany_Return> insertMany(
      $grpc.ServiceCall call, $0.GListOfRecipe request);
  $async.Future<$2.G_GRecipeService_GetNullable_Return> getNullable(
      $grpc.ServiceCall call,
      $2.G_GRecipeService_GetNullable_Parameters request);
  $async.Future<$2.G_GRecipeService_Count_Return> count(
      $grpc.ServiceCall call, $2.G_GRecipeService_Count_Parameters request);
  $async.Future<$2.G_GRecipeService_CountNullable_Return> countNullable(
      $grpc.ServiceCall call,
      $2.G_GRecipeService_CountNullable_Parameters request);
  $async.Future<$2.G_GRecipeService_Reindex_Return> reindex(
      $grpc.ServiceCall call, $2.G_GRecipeService_Reindex_Parameters request);
  $async.Future<$2.G_GRecipeService_GetMainRecipeType_Return> getMainRecipeType(
      $grpc.ServiceCall call,
      $2.G_GRecipeService_GetMainRecipeType_Parameters request);
  $async.Future<$2.G_GRecipeService_GetMainRecipeTypeNullable_Return>
      getMainRecipeTypeNullable($grpc.ServiceCall call,
          $2.G_GRecipeService_GetMainRecipeTypeNullable_Parameters request);
  $async.Future<$2.G_GRecipeService_GetRecipeTypeList_Return> getRecipeTypeList(
      $grpc.ServiceCall call,
      $2.G_GRecipeService_GetRecipeTypeList_Parameters request);
  $async.Future<$2.G_GRecipeService_GetRecipeTypeListNullable_Return>
      getRecipeTypeListNullable($grpc.ServiceCall call,
          $2.G_GRecipeService_GetRecipeTypeListNullable_Parameters request);
  $async.Future<$2.G_GRecipeService_GetListOfInts_Return> getListOfInts(
      $grpc.ServiceCall call,
      $2.G_GRecipeService_GetListOfInts_Parameters request);
  $async.Future<$2.G_GRecipeService_GetListOfIntsNullable_Return>
      getListOfIntsNullable($grpc.ServiceCall call,
          $2.G_GRecipeService_GetListOfIntsNullable_Parameters request);
  $async.Future<$4.GCalcResult> doCalculation(
      $grpc.ServiceCall call, $3.GCalcParameters request);
  $async.Future<$2.G_GRecipeService_ReceiveLotsOfArgs_Return> receiveLotsOfArgs(
      $grpc.ServiceCall call,
      $2.G_GRecipeService_ReceiveLotsOfArgs_Parameters request);
  $async.Future<$2.G_GRecipeService_ReceiveLotsOfNullableArgs_Return>
      receiveLotsOfNullableArgs($grpc.ServiceCall call,
          $2.G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters request);
}
