#!/usr/bin/sh

protoc --dart_out=. lib/src/protocol.protoc
dart format lib/
