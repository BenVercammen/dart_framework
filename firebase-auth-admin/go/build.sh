#!/bin/bash

go build -buildmode=c-shared -o ../lib-auth.so auth.go
