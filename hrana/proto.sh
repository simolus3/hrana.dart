#!/usr/bin/env bash

protoc --dart_out=. lib/src/protocol.proto
dart format lib/
