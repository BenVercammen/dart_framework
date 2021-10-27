#!/bin/bash

go build -buildmode=c-shared -o lib-auth.dylib auth.go
