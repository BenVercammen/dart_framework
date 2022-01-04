#!/bin/bash
dart run build_runner build

# recreate proto_generated
rm -rf ./proto
mkdir ./proto
 


# move generated proto files to proto_generated
mv ./lib/src/*.proto ./proto/

# recreate grpc directory
rm -rf ./lib/grpc
mkdir ./lib/grpc


# generate dart grpc business model files
protoc --dart_out=grpc:lib/grpc -I%PROTOC_HOME%/include %PROTOC_HOME%/include/google/protobuf/any.proto
protoc --dart_out=grpc:lib/grpc -Iproto/ -I%PROTOC_HOME%/include ./proto/*.proto
dart format fix lib/grpc/