//
//  Generated code. Do not modify.
//  source: lib/src/protocol.protoc
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use errorDescriptor instead')
const Error$json = {
  '1': 'Error',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    {'1': 'code', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'code', '17': true},
  ],
  '8': [
    {'1': '_code'},
  ],
};

/// Descriptor for `Error`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errorDescriptor = $convert.base64Decode(
    'CgVFcnJvchIYCgdtZXNzYWdlGAEgASgJUgdtZXNzYWdlEhcKBGNvZGUYAiABKAlIAFIEY29kZY'
    'gBAUIHCgVfY29kZQ==');

@$core.Deprecated('Use stmtDescriptor instead')
const Stmt$json = {
  '1': 'Stmt',
  '2': [
    {'1': 'sql', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'sql', '17': true},
    {'1': 'sql_id', '3': 2, '4': 1, '5': 5, '9': 1, '10': 'sqlId', '17': true},
    {'1': 'args', '3': 3, '4': 3, '5': 11, '6': '.Value', '10': 'args'},
    {
      '1': 'named_args',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.NamedArg',
      '10': 'namedArgs'
    },
    {
      '1': 'want_rows',
      '3': 5,
      '4': 1,
      '5': 8,
      '9': 2,
      '10': 'wantRows',
      '17': true
    },
  ],
  '8': [
    {'1': '_sql'},
    {'1': '_sql_id'},
    {'1': '_want_rows'},
  ],
};

/// Descriptor for `Stmt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stmtDescriptor = $convert.base64Decode(
    'CgRTdG10EhUKA3NxbBgBIAEoCUgAUgNzcWyIAQESGgoGc3FsX2lkGAIgASgFSAFSBXNxbElkiA'
    'EBEhoKBGFyZ3MYAyADKAsyBi5WYWx1ZVIEYXJncxIoCgpuYW1lZF9hcmdzGAQgAygLMgkuTmFt'
    'ZWRBcmdSCW5hbWVkQXJncxIgCgl3YW50X3Jvd3MYBSABKAhIAlIId2FudFJvd3OIAQFCBgoEX3'
    'NxbEIJCgdfc3FsX2lkQgwKCl93YW50X3Jvd3M=');

@$core.Deprecated('Use namedArgDescriptor instead')
const NamedArg$json = {
  '1': 'NamedArg',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.Value', '10': 'value'},
  ],
};

/// Descriptor for `NamedArg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List namedArgDescriptor = $convert.base64Decode(
    'CghOYW1lZEFyZxISCgRuYW1lGAEgASgJUgRuYW1lEhwKBXZhbHVlGAIgASgLMgYuVmFsdWVSBX'
    'ZhbHVl');

@$core.Deprecated('Use stmtResultDescriptor instead')
const StmtResult$json = {
  '1': 'StmtResult',
  '2': [
    {'1': 'cols', '3': 1, '4': 3, '5': 11, '6': '.Col', '10': 'cols'},
    {'1': 'rows', '3': 2, '4': 3, '5': 11, '6': '.Row', '10': 'rows'},
    {
      '1': 'affected_row_count',
      '3': 3,
      '4': 1,
      '5': 4,
      '10': 'affectedRowCount'
    },
    {
      '1': 'last_insert_rowid',
      '3': 4,
      '4': 1,
      '5': 18,
      '9': 0,
      '10': 'lastInsertRowid',
      '17': true
    },
    {
      '1': 'replication_index',
      '3': 5,
      '4': 1,
      '5': 4,
      '9': 1,
      '10': 'replicationIndex',
      '17': true
    },
    {'1': 'rows_read', '3': 6, '4': 1, '5': 4, '10': 'rowsRead'},
    {'1': 'rows_written', '3': 7, '4': 1, '5': 4, '10': 'rowsWritten'},
    {'1': 'query_duration_ms', '3': 8, '4': 1, '5': 1, '10': 'queryDurationMs'},
  ],
  '8': [
    {'1': '_last_insert_rowid'},
    {'1': '_replication_index'},
  ],
};

/// Descriptor for `StmtResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stmtResultDescriptor = $convert.base64Decode(
    'CgpTdG10UmVzdWx0EhgKBGNvbHMYASADKAsyBC5Db2xSBGNvbHMSGAoEcm93cxgCIAMoCzIELl'
    'Jvd1IEcm93cxIsChJhZmZlY3RlZF9yb3dfY291bnQYAyABKARSEGFmZmVjdGVkUm93Q291bnQS'
    'LwoRbGFzdF9pbnNlcnRfcm93aWQYBCABKBJIAFIPbGFzdEluc2VydFJvd2lkiAEBEjAKEXJlcG'
    'xpY2F0aW9uX2luZGV4GAUgASgESAFSEHJlcGxpY2F0aW9uSW5kZXiIAQESGwoJcm93c19yZWFk'
    'GAYgASgEUghyb3dzUmVhZBIhCgxyb3dzX3dyaXR0ZW4YByABKARSC3Jvd3NXcml0dGVuEioKEX'
    'F1ZXJ5X2R1cmF0aW9uX21zGAggASgBUg9xdWVyeUR1cmF0aW9uTXNCFAoSX2xhc3RfaW5zZXJ0'
    'X3Jvd2lkQhQKEl9yZXBsaWNhdGlvbl9pbmRleA==');

@$core.Deprecated('Use colDescriptor instead')
const Col$json = {
  '1': 'Col',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    {
      '1': 'decltype',
      '3': 2,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'decltype',
      '17': true
    },
  ],
  '8': [
    {'1': '_name'},
    {'1': '_decltype'},
  ],
};

/// Descriptor for `Col`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List colDescriptor = $convert.base64Decode(
    'CgNDb2wSFwoEbmFtZRgBIAEoCUgAUgRuYW1liAEBEh8KCGRlY2x0eXBlGAIgASgJSAFSCGRlY2'
    'x0eXBliAEBQgcKBV9uYW1lQgsKCV9kZWNsdHlwZQ==');

@$core.Deprecated('Use rowDescriptor instead')
const Row$json = {
  '1': 'Row',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 11, '6': '.Value', '10': 'values'},
  ],
};

/// Descriptor for `Row`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rowDescriptor = $convert
    .base64Decode('CgNSb3cSHgoGdmFsdWVzGAEgAygLMgYuVmFsdWVSBnZhbHVlcw==');

@$core.Deprecated('Use batchDescriptor instead')
const Batch$json = {
  '1': 'Batch',
  '2': [
    {'1': 'steps', '3': 1, '4': 3, '5': 11, '6': '.BatchStep', '10': 'steps'},
  ],
};

/// Descriptor for `Batch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchDescriptor = $convert
    .base64Decode('CgVCYXRjaBIgCgVzdGVwcxgBIAMoCzIKLkJhdGNoU3RlcFIFc3RlcHM=');

@$core.Deprecated('Use batchStepDescriptor instead')
const BatchStep$json = {
  '1': 'BatchStep',
  '2': [
    {
      '1': 'condition',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.BatchCond',
      '9': 0,
      '10': 'condition',
      '17': true
    },
    {'1': 'stmt', '3': 2, '4': 1, '5': 11, '6': '.Stmt', '10': 'stmt'},
  ],
  '8': [
    {'1': '_condition'},
  ],
};

/// Descriptor for `BatchStep`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchStepDescriptor = $convert.base64Decode(
    'CglCYXRjaFN0ZXASLQoJY29uZGl0aW9uGAEgASgLMgouQmF0Y2hDb25kSABSCWNvbmRpdGlvbo'
    'gBARIZCgRzdG10GAIgASgLMgUuU3RtdFIEc3RtdEIMCgpfY29uZGl0aW9u');

@$core.Deprecated('Use batchCondDescriptor instead')
const BatchCond$json = {
  '1': 'BatchCond',
  '2': [
    {'1': 'step_ok', '3': 1, '4': 1, '5': 13, '9': 0, '10': 'stepOk'},
    {'1': 'step_error', '3': 2, '4': 1, '5': 13, '9': 0, '10': 'stepError'},
    {
      '1': 'not',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.BatchCond',
      '9': 0,
      '10': 'not'
    },
    {
      '1': 'and',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.BatchCond.CondList',
      '9': 0,
      '10': 'and'
    },
    {
      '1': 'or',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.BatchCond.CondList',
      '9': 0,
      '10': 'or'
    },
    {
      '1': 'is_autocommit',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.BatchCond.IsAutocommit',
      '9': 0,
      '10': 'isAutocommit'
    },
  ],
  '3': [BatchCond_CondList$json, BatchCond_IsAutocommit$json],
  '8': [
    {'1': 'cond'},
  ],
};

@$core.Deprecated('Use batchCondDescriptor instead')
const BatchCond_CondList$json = {
  '1': 'CondList',
  '2': [
    {'1': 'conds', '3': 1, '4': 3, '5': 11, '6': '.BatchCond', '10': 'conds'},
  ],
};

@$core.Deprecated('Use batchCondDescriptor instead')
const BatchCond_IsAutocommit$json = {
  '1': 'IsAutocommit',
};

/// Descriptor for `BatchCond`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchCondDescriptor = $convert.base64Decode(
    'CglCYXRjaENvbmQSGQoHc3RlcF9vaxgBIAEoDUgAUgZzdGVwT2sSHwoKc3RlcF9lcnJvchgCIA'
    'EoDUgAUglzdGVwRXJyb3ISHgoDbm90GAMgASgLMgouQmF0Y2hDb25kSABSA25vdBInCgNhbmQY'
    'BCABKAsyEy5CYXRjaENvbmQuQ29uZExpc3RIAFIDYW5kEiUKAm9yGAUgASgLMhMuQmF0Y2hDb2'
    '5kLkNvbmRMaXN0SABSAm9yEj4KDWlzX2F1dG9jb21taXQYBiABKAsyFy5CYXRjaENvbmQuSXNB'
    'dXRvY29tbWl0SABSDGlzQXV0b2NvbW1pdBosCghDb25kTGlzdBIgCgVjb25kcxgBIAMoCzIKLk'
    'JhdGNoQ29uZFIFY29uZHMaDgoMSXNBdXRvY29tbWl0QgYKBGNvbmQ=');

@$core.Deprecated('Use batchResultDescriptor instead')
const BatchResult$json = {
  '1': 'BatchResult',
  '2': [
    {
      '1': 'step_results',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.BatchResult.StepResultsEntry',
      '10': 'stepResults'
    },
    {
      '1': 'step_errors',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.BatchResult.StepErrorsEntry',
      '10': 'stepErrors'
    },
  ],
  '3': [BatchResult_StepResultsEntry$json, BatchResult_StepErrorsEntry$json],
};

@$core.Deprecated('Use batchResultDescriptor instead')
const BatchResult_StepResultsEntry$json = {
  '1': 'StepResultsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 13, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.StmtResult', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use batchResultDescriptor instead')
const BatchResult_StepErrorsEntry$json = {
  '1': 'StepErrorsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 13, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.Error', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `BatchResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchResultDescriptor = $convert.base64Decode(
    'CgtCYXRjaFJlc3VsdBJACgxzdGVwX3Jlc3VsdHMYASADKAsyHS5CYXRjaFJlc3VsdC5TdGVwUm'
    'VzdWx0c0VudHJ5UgtzdGVwUmVzdWx0cxI9CgtzdGVwX2Vycm9ycxgCIAMoCzIcLkJhdGNoUmVz'
    'dWx0LlN0ZXBFcnJvcnNFbnRyeVIKc3RlcEVycm9ycxpLChBTdGVwUmVzdWx0c0VudHJ5EhAKA2'
    'tleRgBIAEoDVIDa2V5EiEKBXZhbHVlGAIgASgLMgsuU3RtdFJlc3VsdFIFdmFsdWU6AjgBGkUK'
    'D1N0ZXBFcnJvcnNFbnRyeRIQCgNrZXkYASABKA1SA2tleRIcCgV2YWx1ZRgCIAEoCzIGLkVycm'
    '9yUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use cursorEntryDescriptor instead')
const CursorEntry$json = {
  '1': 'CursorEntry',
  '2': [
    {
      '1': 'step_begin',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.StepBeginEntry',
      '9': 0,
      '10': 'stepBegin'
    },
    {
      '1': 'step_end',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.StepEndEntry',
      '9': 0,
      '10': 'stepEnd'
    },
    {
      '1': 'step_error',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.StepErrorEntry',
      '9': 0,
      '10': 'stepError'
    },
    {'1': 'row', '3': 4, '4': 1, '5': 11, '6': '.Row', '9': 0, '10': 'row'},
    {
      '1': 'error',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.Error',
      '9': 0,
      '10': 'error'
    },
  ],
  '8': [
    {'1': 'entry'},
  ],
};

/// Descriptor for `CursorEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cursorEntryDescriptor = $convert.base64Decode(
    'CgtDdXJzb3JFbnRyeRIwCgpzdGVwX2JlZ2luGAEgASgLMg8uU3RlcEJlZ2luRW50cnlIAFIJc3'
    'RlcEJlZ2luEioKCHN0ZXBfZW5kGAIgASgLMg0uU3RlcEVuZEVudHJ5SABSB3N0ZXBFbmQSMAoK'
    'c3RlcF9lcnJvchgDIAEoCzIPLlN0ZXBFcnJvckVudHJ5SABSCXN0ZXBFcnJvchIYCgNyb3cYBC'
    'ABKAsyBC5Sb3dIAFIDcm93Eh4KBWVycm9yGAUgASgLMgYuRXJyb3JIAFIFZXJyb3JCBwoFZW50'
    'cnk=');

@$core.Deprecated('Use stepBeginEntryDescriptor instead')
const StepBeginEntry$json = {
  '1': 'StepBeginEntry',
  '2': [
    {'1': 'step', '3': 1, '4': 1, '5': 13, '10': 'step'},
    {'1': 'cols', '3': 2, '4': 3, '5': 11, '6': '.Col', '10': 'cols'},
  ],
};

/// Descriptor for `StepBeginEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stepBeginEntryDescriptor = $convert.base64Decode(
    'Cg5TdGVwQmVnaW5FbnRyeRISCgRzdGVwGAEgASgNUgRzdGVwEhgKBGNvbHMYAiADKAsyBC5Db2'
    'xSBGNvbHM=');

@$core.Deprecated('Use stepEndEntryDescriptor instead')
const StepEndEntry$json = {
  '1': 'StepEndEntry',
  '2': [
    {
      '1': 'affected_row_count',
      '3': 1,
      '4': 1,
      '5': 4,
      '10': 'affectedRowCount'
    },
    {
      '1': 'last_insert_rowid',
      '3': 2,
      '4': 1,
      '5': 18,
      '9': 0,
      '10': 'lastInsertRowid',
      '17': true
    },
  ],
  '8': [
    {'1': '_last_insert_rowid'},
  ],
};

/// Descriptor for `StepEndEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stepEndEntryDescriptor = $convert.base64Decode(
    'CgxTdGVwRW5kRW50cnkSLAoSYWZmZWN0ZWRfcm93X2NvdW50GAEgASgEUhBhZmZlY3RlZFJvd0'
    'NvdW50Ei8KEWxhc3RfaW5zZXJ0X3Jvd2lkGAIgASgSSABSD2xhc3RJbnNlcnRSb3dpZIgBAUIU'
    'ChJfbGFzdF9pbnNlcnRfcm93aWQ=');

@$core.Deprecated('Use stepErrorEntryDescriptor instead')
const StepErrorEntry$json = {
  '1': 'StepErrorEntry',
  '2': [
    {'1': 'step', '3': 1, '4': 1, '5': 13, '10': 'step'},
    {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.Error', '10': 'error'},
  ],
};

/// Descriptor for `StepErrorEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stepErrorEntryDescriptor = $convert.base64Decode(
    'Cg5TdGVwRXJyb3JFbnRyeRISCgRzdGVwGAEgASgNUgRzdGVwEhwKBWVycm9yGAIgASgLMgYuRX'
    'Jyb3JSBWVycm9y');

@$core.Deprecated('Use describeResultDescriptor instead')
const DescribeResult$json = {
  '1': 'DescribeResult',
  '2': [
    {
      '1': 'params',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.DescribeParam',
      '10': 'params'
    },
    {'1': 'cols', '3': 2, '4': 3, '5': 11, '6': '.DescribeCol', '10': 'cols'},
    {'1': 'is_explain', '3': 3, '4': 1, '5': 8, '10': 'isExplain'},
    {'1': 'is_readonly', '3': 4, '4': 1, '5': 8, '10': 'isReadonly'},
  ],
};

/// Descriptor for `DescribeResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List describeResultDescriptor = $convert.base64Decode(
    'Cg5EZXNjcmliZVJlc3VsdBImCgZwYXJhbXMYASADKAsyDi5EZXNjcmliZVBhcmFtUgZwYXJhbX'
    'MSIAoEY29scxgCIAMoCzIMLkRlc2NyaWJlQ29sUgRjb2xzEh0KCmlzX2V4cGxhaW4YAyABKAhS'
    'CWlzRXhwbGFpbhIfCgtpc19yZWFkb25seRgEIAEoCFIKaXNSZWFkb25seQ==');

@$core.Deprecated('Use describeParamDescriptor instead')
const DescribeParam$json = {
  '1': 'DescribeParam',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
  ],
  '8': [
    {'1': '_name'},
  ],
};

/// Descriptor for `DescribeParam`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List describeParamDescriptor = $convert.base64Decode(
    'Cg1EZXNjcmliZVBhcmFtEhcKBG5hbWUYASABKAlIAFIEbmFtZYgBAUIHCgVfbmFtZQ==');

@$core.Deprecated('Use describeColDescriptor instead')
const DescribeCol$json = {
  '1': 'DescribeCol',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'decltype',
      '3': 2,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'decltype',
      '17': true
    },
  ],
  '8': [
    {'1': '_decltype'},
  ],
};

/// Descriptor for `DescribeCol`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List describeColDescriptor = $convert.base64Decode(
    'CgtEZXNjcmliZUNvbBISCgRuYW1lGAEgASgJUgRuYW1lEh8KCGRlY2x0eXBlGAIgASgJSABSCG'
    'RlY2x0eXBliAEBQgsKCV9kZWNsdHlwZQ==');

@$core.Deprecated('Use valueDescriptor instead')
const Value$json = {
  '1': 'Value',
  '2': [
    {
      '1': 'null',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.Value.Null',
      '9': 0,
      '10': 'null'
    },
    {'1': 'integer', '3': 2, '4': 1, '5': 18, '9': 0, '10': 'integer'},
    {'1': 'float', '3': 3, '4': 1, '5': 1, '9': 0, '10': 'float'},
    {'1': 'text', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'text'},
    {'1': 'blob', '3': 5, '4': 1, '5': 12, '9': 0, '10': 'blob'},
  ],
  '3': [Value_Null$json],
  '8': [
    {'1': 'value'},
  ],
};

@$core.Deprecated('Use valueDescriptor instead')
const Value_Null$json = {
  '1': 'Null',
};

/// Descriptor for `Value`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List valueDescriptor = $convert.base64Decode(
    'CgVWYWx1ZRIhCgRudWxsGAEgASgLMgsuVmFsdWUuTnVsbEgAUgRudWxsEhoKB2ludGVnZXIYAi'
    'ABKBJIAFIHaW50ZWdlchIWCgVmbG9hdBgDIAEoAUgAUgVmbG9hdBIUCgR0ZXh0GAQgASgJSABS'
    'BHRleHQSFAoEYmxvYhgFIAEoDEgAUgRibG9iGgYKBE51bGxCBwoFdmFsdWU=');

@$core.Deprecated('Use clientMsgDescriptor instead')
const ClientMsg$json = {
  '1': 'ClientMsg',
  '2': [
    {
      '1': 'hello',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.HelloMsg',
      '9': 0,
      '10': 'hello'
    },
    {
      '1': 'request',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.RequestMsg',
      '9': 0,
      '10': 'request'
    },
  ],
  '8': [
    {'1': 'msg'},
  ],
};

/// Descriptor for `ClientMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientMsgDescriptor = $convert.base64Decode(
    'CglDbGllbnRNc2cSIQoFaGVsbG8YASABKAsyCS5IZWxsb01zZ0gAUgVoZWxsbxInCgdyZXF1ZX'
    'N0GAIgASgLMgsuUmVxdWVzdE1zZ0gAUgdyZXF1ZXN0QgUKA21zZw==');

@$core.Deprecated('Use serverMsgDescriptor instead')
const ServerMsg$json = {
  '1': 'ServerMsg',
  '2': [
    {
      '1': 'hello_ok',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.HelloOkMsg',
      '9': 0,
      '10': 'helloOk'
    },
    {
      '1': 'hello_error',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.HelloErrorMsg',
      '9': 0,
      '10': 'helloError'
    },
    {
      '1': 'response_ok',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.ResponseOkMsg',
      '9': 0,
      '10': 'responseOk'
    },
    {
      '1': 'response_error',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.ResponseErrorMsg',
      '9': 0,
      '10': 'responseError'
    },
  ],
  '8': [
    {'1': 'msg'},
  ],
};

/// Descriptor for `ServerMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serverMsgDescriptor = $convert.base64Decode(
    'CglTZXJ2ZXJNc2cSKAoIaGVsbG9fb2sYASABKAsyCy5IZWxsb09rTXNnSABSB2hlbGxvT2sSMQ'
    'oLaGVsbG9fZXJyb3IYAiABKAsyDi5IZWxsb0Vycm9yTXNnSABSCmhlbGxvRXJyb3ISMQoLcmVz'
    'cG9uc2Vfb2sYAyABKAsyDi5SZXNwb25zZU9rTXNnSABSCnJlc3BvbnNlT2sSOgoOcmVzcG9uc2'
    'VfZXJyb3IYBCABKAsyES5SZXNwb25zZUVycm9yTXNnSABSDXJlc3BvbnNlRXJyb3JCBQoDbXNn');

@$core.Deprecated('Use helloMsgDescriptor instead')
const HelloMsg$json = {
  '1': 'HelloMsg',
  '2': [
    {'1': 'jwt', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'jwt', '17': true},
  ],
  '8': [
    {'1': '_jwt'},
  ],
};

/// Descriptor for `HelloMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helloMsgDescriptor = $convert
    .base64Decode('CghIZWxsb01zZxIVCgNqd3QYASABKAlIAFIDand0iAEBQgYKBF9qd3Q=');

@$core.Deprecated('Use helloOkMsgDescriptor instead')
const HelloOkMsg$json = {
  '1': 'HelloOkMsg',
};

/// Descriptor for `HelloOkMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helloOkMsgDescriptor =
    $convert.base64Decode('CgpIZWxsb09rTXNn');

@$core.Deprecated('Use helloErrorMsgDescriptor instead')
const HelloErrorMsg$json = {
  '1': 'HelloErrorMsg',
  '2': [
    {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.Error', '10': 'error'},
  ],
};

/// Descriptor for `HelloErrorMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helloErrorMsgDescriptor = $convert.base64Decode(
    'Cg1IZWxsb0Vycm9yTXNnEhwKBWVycm9yGAEgASgLMgYuRXJyb3JSBWVycm9y');

@$core.Deprecated('Use requestMsgDescriptor instead')
const RequestMsg$json = {
  '1': 'RequestMsg',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 5, '10': 'requestId'},
    {
      '1': 'open_stream',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.OpenStreamReq',
      '9': 0,
      '10': 'openStream'
    },
    {
      '1': 'close_stream',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.CloseStreamReq',
      '9': 0,
      '10': 'closeStream'
    },
    {
      '1': 'execute',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.ExecuteReq',
      '9': 0,
      '10': 'execute'
    },
    {
      '1': 'batch',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.BatchReq',
      '9': 0,
      '10': 'batch'
    },
    {
      '1': 'open_cursor',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.OpenCursorReq',
      '9': 0,
      '10': 'openCursor'
    },
    {
      '1': 'close_cursor',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.CloseCursorReq',
      '9': 0,
      '10': 'closeCursor'
    },
    {
      '1': 'fetch_cursor',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.FetchCursorReq',
      '9': 0,
      '10': 'fetchCursor'
    },
    {
      '1': 'sequence',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.SequenceReq',
      '9': 0,
      '10': 'sequence'
    },
    {
      '1': 'describe',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.DescribeReq',
      '9': 0,
      '10': 'describe'
    },
    {
      '1': 'store_sql',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.StoreSqlReq',
      '9': 0,
      '10': 'storeSql'
    },
    {
      '1': 'close_sql',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.CloseSqlReq',
      '9': 0,
      '10': 'closeSql'
    },
    {
      '1': 'get_autocommit',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.GetAutocommitReq',
      '9': 0,
      '10': 'getAutocommit'
    },
  ],
  '8': [
    {'1': 'request'},
  ],
};

/// Descriptor for `RequestMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestMsgDescriptor = $convert.base64Decode(
    'CgpSZXF1ZXN0TXNnEh0KCnJlcXVlc3RfaWQYASABKAVSCXJlcXVlc3RJZBIxCgtvcGVuX3N0cm'
    'VhbRgCIAEoCzIOLk9wZW5TdHJlYW1SZXFIAFIKb3BlblN0cmVhbRI0CgxjbG9zZV9zdHJlYW0Y'
    'AyABKAsyDy5DbG9zZVN0cmVhbVJlcUgAUgtjbG9zZVN0cmVhbRInCgdleGVjdXRlGAQgASgLMg'
    'suRXhlY3V0ZVJlcUgAUgdleGVjdXRlEiEKBWJhdGNoGAUgASgLMgkuQmF0Y2hSZXFIAFIFYmF0'
    'Y2gSMQoLb3Blbl9jdXJzb3IYBiABKAsyDi5PcGVuQ3Vyc29yUmVxSABSCm9wZW5DdXJzb3ISNA'
    'oMY2xvc2VfY3Vyc29yGAcgASgLMg8uQ2xvc2VDdXJzb3JSZXFIAFILY2xvc2VDdXJzb3ISNAoM'
    'ZmV0Y2hfY3Vyc29yGAggASgLMg8uRmV0Y2hDdXJzb3JSZXFIAFILZmV0Y2hDdXJzb3ISKgoIc2'
    'VxdWVuY2UYCSABKAsyDC5TZXF1ZW5jZVJlcUgAUghzZXF1ZW5jZRIqCghkZXNjcmliZRgKIAEo'
    'CzIMLkRlc2NyaWJlUmVxSABSCGRlc2NyaWJlEisKCXN0b3JlX3NxbBgLIAEoCzIMLlN0b3JlU3'
    'FsUmVxSABSCHN0b3JlU3FsEisKCWNsb3NlX3NxbBgMIAEoCzIMLkNsb3NlU3FsUmVxSABSCGNs'
    'b3NlU3FsEjoKDmdldF9hdXRvY29tbWl0GA0gASgLMhEuR2V0QXV0b2NvbW1pdFJlcUgAUg1nZX'
    'RBdXRvY29tbWl0QgkKB3JlcXVlc3Q=');

@$core.Deprecated('Use responseOkMsgDescriptor instead')
const ResponseOkMsg$json = {
  '1': 'ResponseOkMsg',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 5, '10': 'requestId'},
    {
      '1': 'open_stream',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.OpenStreamResp',
      '9': 0,
      '10': 'openStream'
    },
    {
      '1': 'close_stream',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.CloseStreamResp',
      '9': 0,
      '10': 'closeStream'
    },
    {
      '1': 'execute',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.ExecuteResp',
      '9': 0,
      '10': 'execute'
    },
    {
      '1': 'batch',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.BatchResp',
      '9': 0,
      '10': 'batch'
    },
    {
      '1': 'open_cursor',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.OpenCursorResp',
      '9': 0,
      '10': 'openCursor'
    },
    {
      '1': 'close_cursor',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.CloseCursorResp',
      '9': 0,
      '10': 'closeCursor'
    },
    {
      '1': 'fetch_cursor',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.FetchCursorResp',
      '9': 0,
      '10': 'fetchCursor'
    },
    {
      '1': 'sequence',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.SequenceResp',
      '9': 0,
      '10': 'sequence'
    },
    {
      '1': 'describe',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.DescribeResp',
      '9': 0,
      '10': 'describe'
    },
    {
      '1': 'store_sql',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.StoreSqlResp',
      '9': 0,
      '10': 'storeSql'
    },
    {
      '1': 'close_sql',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.CloseSqlResp',
      '9': 0,
      '10': 'closeSql'
    },
    {
      '1': 'get_autocommit',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.GetAutocommitResp',
      '9': 0,
      '10': 'getAutocommit'
    },
  ],
  '8': [
    {'1': 'response'},
  ],
};

/// Descriptor for `ResponseOkMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseOkMsgDescriptor = $convert.base64Decode(
    'Cg1SZXNwb25zZU9rTXNnEh0KCnJlcXVlc3RfaWQYASABKAVSCXJlcXVlc3RJZBIyCgtvcGVuX3'
    'N0cmVhbRgCIAEoCzIPLk9wZW5TdHJlYW1SZXNwSABSCm9wZW5TdHJlYW0SNQoMY2xvc2Vfc3Ry'
    'ZWFtGAMgASgLMhAuQ2xvc2VTdHJlYW1SZXNwSABSC2Nsb3NlU3RyZWFtEigKB2V4ZWN1dGUYBC'
    'ABKAsyDC5FeGVjdXRlUmVzcEgAUgdleGVjdXRlEiIKBWJhdGNoGAUgASgLMgouQmF0Y2hSZXNw'
    'SABSBWJhdGNoEjIKC29wZW5fY3Vyc29yGAYgASgLMg8uT3BlbkN1cnNvclJlc3BIAFIKb3Blbk'
    'N1cnNvchI1CgxjbG9zZV9jdXJzb3IYByABKAsyEC5DbG9zZUN1cnNvclJlc3BIAFILY2xvc2VD'
    'dXJzb3ISNQoMZmV0Y2hfY3Vyc29yGAggASgLMhAuRmV0Y2hDdXJzb3JSZXNwSABSC2ZldGNoQ3'
    'Vyc29yEisKCHNlcXVlbmNlGAkgASgLMg0uU2VxdWVuY2VSZXNwSABSCHNlcXVlbmNlEisKCGRl'
    'c2NyaWJlGAogASgLMg0uRGVzY3JpYmVSZXNwSABSCGRlc2NyaWJlEiwKCXN0b3JlX3NxbBgLIA'
    'EoCzINLlN0b3JlU3FsUmVzcEgAUghzdG9yZVNxbBIsCgljbG9zZV9zcWwYDCABKAsyDS5DbG9z'
    'ZVNxbFJlc3BIAFIIY2xvc2VTcWwSOwoOZ2V0X2F1dG9jb21taXQYDSABKAsyEi5HZXRBdXRvY2'
    '9tbWl0UmVzcEgAUg1nZXRBdXRvY29tbWl0QgoKCHJlc3BvbnNl');

@$core.Deprecated('Use responseErrorMsgDescriptor instead')
const ResponseErrorMsg$json = {
  '1': 'ResponseErrorMsg',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 5, '10': 'requestId'},
    {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.Error', '10': 'error'},
  ],
};

/// Descriptor for `ResponseErrorMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseErrorMsgDescriptor = $convert.base64Decode(
    'ChBSZXNwb25zZUVycm9yTXNnEh0KCnJlcXVlc3RfaWQYASABKAVSCXJlcXVlc3RJZBIcCgVlcn'
    'JvchgCIAEoCzIGLkVycm9yUgVlcnJvcg==');

@$core.Deprecated('Use openStreamReqDescriptor instead')
const OpenStreamReq$json = {
  '1': 'OpenStreamReq',
  '2': [
    {'1': 'stream_id', '3': 1, '4': 1, '5': 5, '10': 'streamId'},
  ],
};

/// Descriptor for `OpenStreamReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openStreamReqDescriptor = $convert.base64Decode(
    'Cg1PcGVuU3RyZWFtUmVxEhsKCXN0cmVhbV9pZBgBIAEoBVIIc3RyZWFtSWQ=');

@$core.Deprecated('Use openStreamRespDescriptor instead')
const OpenStreamResp$json = {
  '1': 'OpenStreamResp',
};

/// Descriptor for `OpenStreamResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openStreamRespDescriptor =
    $convert.base64Decode('Cg5PcGVuU3RyZWFtUmVzcA==');

@$core.Deprecated('Use closeStreamReqDescriptor instead')
const CloseStreamReq$json = {
  '1': 'CloseStreamReq',
  '2': [
    {'1': 'stream_id', '3': 1, '4': 1, '5': 5, '10': 'streamId'},
  ],
};

/// Descriptor for `CloseStreamReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closeStreamReqDescriptor = $convert.base64Decode(
    'Cg5DbG9zZVN0cmVhbVJlcRIbCglzdHJlYW1faWQYASABKAVSCHN0cmVhbUlk');

@$core.Deprecated('Use closeStreamRespDescriptor instead')
const CloseStreamResp$json = {
  '1': 'CloseStreamResp',
};

/// Descriptor for `CloseStreamResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closeStreamRespDescriptor =
    $convert.base64Decode('Cg9DbG9zZVN0cmVhbVJlc3A=');

@$core.Deprecated('Use executeReqDescriptor instead')
const ExecuteReq$json = {
  '1': 'ExecuteReq',
  '2': [
    {'1': 'stream_id', '3': 1, '4': 1, '5': 5, '10': 'streamId'},
    {'1': 'stmt', '3': 2, '4': 1, '5': 11, '6': '.Stmt', '10': 'stmt'},
  ],
};

/// Descriptor for `ExecuteReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executeReqDescriptor = $convert.base64Decode(
    'CgpFeGVjdXRlUmVxEhsKCXN0cmVhbV9pZBgBIAEoBVIIc3RyZWFtSWQSGQoEc3RtdBgCIAEoCz'
    'IFLlN0bXRSBHN0bXQ=');

@$core.Deprecated('Use executeRespDescriptor instead')
const ExecuteResp$json = {
  '1': 'ExecuteResp',
  '2': [
    {
      '1': 'result',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.StmtResult',
      '10': 'result'
    },
  ],
};

/// Descriptor for `ExecuteResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executeRespDescriptor = $convert.base64Decode(
    'CgtFeGVjdXRlUmVzcBIjCgZyZXN1bHQYASABKAsyCy5TdG10UmVzdWx0UgZyZXN1bHQ=');

@$core.Deprecated('Use batchReqDescriptor instead')
const BatchReq$json = {
  '1': 'BatchReq',
  '2': [
    {'1': 'stream_id', '3': 1, '4': 1, '5': 5, '10': 'streamId'},
    {'1': 'batch', '3': 2, '4': 1, '5': 11, '6': '.Batch', '10': 'batch'},
  ],
};

/// Descriptor for `BatchReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchReqDescriptor = $convert.base64Decode(
    'CghCYXRjaFJlcRIbCglzdHJlYW1faWQYASABKAVSCHN0cmVhbUlkEhwKBWJhdGNoGAIgASgLMg'
    'YuQmF0Y2hSBWJhdGNo');

@$core.Deprecated('Use batchRespDescriptor instead')
const BatchResp$json = {
  '1': 'BatchResp',
  '2': [
    {
      '1': 'result',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.BatchResult',
      '10': 'result'
    },
  ],
};

/// Descriptor for `BatchResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchRespDescriptor = $convert.base64Decode(
    'CglCYXRjaFJlc3ASJAoGcmVzdWx0GAEgASgLMgwuQmF0Y2hSZXN1bHRSBnJlc3VsdA==');

@$core.Deprecated('Use openCursorReqDescriptor instead')
const OpenCursorReq$json = {
  '1': 'OpenCursorReq',
  '2': [
    {'1': 'stream_id', '3': 1, '4': 1, '5': 5, '10': 'streamId'},
    {'1': 'cursor_id', '3': 2, '4': 1, '5': 5, '10': 'cursorId'},
    {'1': 'batch', '3': 3, '4': 1, '5': 11, '6': '.Batch', '10': 'batch'},
  ],
};

/// Descriptor for `OpenCursorReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openCursorReqDescriptor = $convert.base64Decode(
    'Cg1PcGVuQ3Vyc29yUmVxEhsKCXN0cmVhbV9pZBgBIAEoBVIIc3RyZWFtSWQSGwoJY3Vyc29yX2'
    'lkGAIgASgFUghjdXJzb3JJZBIcCgViYXRjaBgDIAEoCzIGLkJhdGNoUgViYXRjaA==');

@$core.Deprecated('Use openCursorRespDescriptor instead')
const OpenCursorResp$json = {
  '1': 'OpenCursorResp',
};

/// Descriptor for `OpenCursorResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openCursorRespDescriptor =
    $convert.base64Decode('Cg5PcGVuQ3Vyc29yUmVzcA==');

@$core.Deprecated('Use closeCursorReqDescriptor instead')
const CloseCursorReq$json = {
  '1': 'CloseCursorReq',
  '2': [
    {'1': 'cursor_id', '3': 1, '4': 1, '5': 5, '10': 'cursorId'},
  ],
};

/// Descriptor for `CloseCursorReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closeCursorReqDescriptor = $convert.base64Decode(
    'Cg5DbG9zZUN1cnNvclJlcRIbCgljdXJzb3JfaWQYASABKAVSCGN1cnNvcklk');

@$core.Deprecated('Use closeCursorRespDescriptor instead')
const CloseCursorResp$json = {
  '1': 'CloseCursorResp',
};

/// Descriptor for `CloseCursorResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closeCursorRespDescriptor =
    $convert.base64Decode('Cg9DbG9zZUN1cnNvclJlc3A=');

@$core.Deprecated('Use fetchCursorReqDescriptor instead')
const FetchCursorReq$json = {
  '1': 'FetchCursorReq',
  '2': [
    {'1': 'cursor_id', '3': 1, '4': 1, '5': 5, '10': 'cursorId'},
    {'1': 'max_count', '3': 2, '4': 1, '5': 13, '10': 'maxCount'},
  ],
};

/// Descriptor for `FetchCursorReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchCursorReqDescriptor = $convert.base64Decode(
    'Cg5GZXRjaEN1cnNvclJlcRIbCgljdXJzb3JfaWQYASABKAVSCGN1cnNvcklkEhsKCW1heF9jb3'
    'VudBgCIAEoDVIIbWF4Q291bnQ=');

@$core.Deprecated('Use fetchCursorRespDescriptor instead')
const FetchCursorResp$json = {
  '1': 'FetchCursorResp',
  '2': [
    {
      '1': 'entries',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.CursorEntry',
      '10': 'entries'
    },
    {'1': 'done', '3': 2, '4': 1, '5': 8, '10': 'done'},
  ],
};

/// Descriptor for `FetchCursorResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchCursorRespDescriptor = $convert.base64Decode(
    'Cg9GZXRjaEN1cnNvclJlc3ASJgoHZW50cmllcxgBIAMoCzIMLkN1cnNvckVudHJ5UgdlbnRyaW'
    'VzEhIKBGRvbmUYAiABKAhSBGRvbmU=');

@$core.Deprecated('Use storeSqlReqDescriptor instead')
const StoreSqlReq$json = {
  '1': 'StoreSqlReq',
  '2': [
    {'1': 'sql_id', '3': 1, '4': 1, '5': 5, '10': 'sqlId'},
    {'1': 'sql', '3': 2, '4': 1, '5': 9, '10': 'sql'},
  ],
};

/// Descriptor for `StoreSqlReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storeSqlReqDescriptor = $convert.base64Decode(
    'CgtTdG9yZVNxbFJlcRIVCgZzcWxfaWQYASABKAVSBXNxbElkEhAKA3NxbBgCIAEoCVIDc3Fs');

@$core.Deprecated('Use storeSqlRespDescriptor instead')
const StoreSqlResp$json = {
  '1': 'StoreSqlResp',
};

/// Descriptor for `StoreSqlResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storeSqlRespDescriptor =
    $convert.base64Decode('CgxTdG9yZVNxbFJlc3A=');

@$core.Deprecated('Use closeSqlReqDescriptor instead')
const CloseSqlReq$json = {
  '1': 'CloseSqlReq',
  '2': [
    {'1': 'sql_id', '3': 1, '4': 1, '5': 5, '10': 'sqlId'},
  ],
};

/// Descriptor for `CloseSqlReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closeSqlReqDescriptor =
    $convert.base64Decode('CgtDbG9zZVNxbFJlcRIVCgZzcWxfaWQYASABKAVSBXNxbElk');

@$core.Deprecated('Use closeSqlRespDescriptor instead')
const CloseSqlResp$json = {
  '1': 'CloseSqlResp',
};

/// Descriptor for `CloseSqlResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closeSqlRespDescriptor =
    $convert.base64Decode('CgxDbG9zZVNxbFJlc3A=');

@$core.Deprecated('Use sequenceReqDescriptor instead')
const SequenceReq$json = {
  '1': 'SequenceReq',
  '2': [
    {'1': 'stream_id', '3': 1, '4': 1, '5': 5, '10': 'streamId'},
    {'1': 'sql', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'sql', '17': true},
    {'1': 'sql_id', '3': 3, '4': 1, '5': 5, '9': 1, '10': 'sqlId', '17': true},
  ],
  '8': [
    {'1': '_sql'},
    {'1': '_sql_id'},
  ],
};

/// Descriptor for `SequenceReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sequenceReqDescriptor = $convert.base64Decode(
    'CgtTZXF1ZW5jZVJlcRIbCglzdHJlYW1faWQYASABKAVSCHN0cmVhbUlkEhUKA3NxbBgCIAEoCU'
    'gAUgNzcWyIAQESGgoGc3FsX2lkGAMgASgFSAFSBXNxbElkiAEBQgYKBF9zcWxCCQoHX3NxbF9p'
    'ZA==');

@$core.Deprecated('Use sequenceRespDescriptor instead')
const SequenceResp$json = {
  '1': 'SequenceResp',
};

/// Descriptor for `SequenceResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sequenceRespDescriptor =
    $convert.base64Decode('CgxTZXF1ZW5jZVJlc3A=');

@$core.Deprecated('Use describeReqDescriptor instead')
const DescribeReq$json = {
  '1': 'DescribeReq',
  '2': [
    {'1': 'stream_id', '3': 1, '4': 1, '5': 5, '10': 'streamId'},
    {'1': 'sql', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'sql', '17': true},
    {'1': 'sql_id', '3': 3, '4': 1, '5': 5, '9': 1, '10': 'sqlId', '17': true},
  ],
  '8': [
    {'1': '_sql'},
    {'1': '_sql_id'},
  ],
};

/// Descriptor for `DescribeReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List describeReqDescriptor = $convert.base64Decode(
    'CgtEZXNjcmliZVJlcRIbCglzdHJlYW1faWQYASABKAVSCHN0cmVhbUlkEhUKA3NxbBgCIAEoCU'
    'gAUgNzcWyIAQESGgoGc3FsX2lkGAMgASgFSAFSBXNxbElkiAEBQgYKBF9zcWxCCQoHX3NxbF9p'
    'ZA==');

@$core.Deprecated('Use describeRespDescriptor instead')
const DescribeResp$json = {
  '1': 'DescribeResp',
  '2': [
    {
      '1': 'result',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.DescribeResult',
      '10': 'result'
    },
  ],
};

/// Descriptor for `DescribeResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List describeRespDescriptor = $convert.base64Decode(
    'CgxEZXNjcmliZVJlc3ASJwoGcmVzdWx0GAEgASgLMg8uRGVzY3JpYmVSZXN1bHRSBnJlc3VsdA'
    '==');

@$core.Deprecated('Use getAutocommitReqDescriptor instead')
const GetAutocommitReq$json = {
  '1': 'GetAutocommitReq',
  '2': [
    {'1': 'stream_id', '3': 1, '4': 1, '5': 5, '10': 'streamId'},
  ],
};

/// Descriptor for `GetAutocommitReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAutocommitReqDescriptor = $convert.base64Decode(
    'ChBHZXRBdXRvY29tbWl0UmVxEhsKCXN0cmVhbV9pZBgBIAEoBVIIc3RyZWFtSWQ=');

@$core.Deprecated('Use getAutocommitRespDescriptor instead')
const GetAutocommitResp$json = {
  '1': 'GetAutocommitResp',
  '2': [
    {'1': 'is_autocommit', '3': 1, '4': 1, '5': 8, '10': 'isAutocommit'},
  ],
};

/// Descriptor for `GetAutocommitResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAutocommitRespDescriptor = $convert.base64Decode(
    'ChFHZXRBdXRvY29tbWl0UmVzcBIjCg1pc19hdXRvY29tbWl0GAEgASgIUgxpc0F1dG9jb21taX'
    'Q=');

@$core.Deprecated('Use pipelineReqDescriptor instead')
const PipelineReq$json = {
  '1': 'PipelineReq',
  '2': [
    {'1': 'baton', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'baton', '17': true},
    {
      '1': 'requests',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.StreamRequest',
      '10': 'requests'
    },
  ],
  '8': [
    {'1': '_baton'},
  ],
};

/// Descriptor for `PipelineReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pipelineReqDescriptor = $convert.base64Decode(
    'CgtQaXBlbGluZVJlcRIZCgViYXRvbhgBIAEoCUgAUgViYXRvbogBARIqCghyZXF1ZXN0cxgCIA'
    'MoCzIOLlN0cmVhbVJlcXVlc3RSCHJlcXVlc3RzQggKBl9iYXRvbg==');

@$core.Deprecated('Use streamRequestDescriptor instead')
const StreamRequest$json = {
  '1': 'StreamRequest',
  '2': [
    {
      '1': 'close',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.CloseStreamReq',
      '9': 0,
      '10': 'close'
    },
    {
      '1': 'execute',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.ExecuteStreamReq',
      '9': 0,
      '10': 'execute'
    },
    {
      '1': 'batch',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.BatchStreamReq',
      '9': 0,
      '10': 'batch'
    },
    {
      '1': 'sequence',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.SequenceStreamReq',
      '9': 0,
      '10': 'sequence'
    },
    {
      '1': 'describe',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.DescribeStreamReq',
      '9': 0,
      '10': 'describe'
    },
    {
      '1': 'store_sql',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.StoreSqlReq',
      '9': 0,
      '10': 'storeSql'
    },
    {
      '1': 'close_sql',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.CloseSqlReq',
      '9': 0,
      '10': 'closeSql'
    },
    {
      '1': 'get_autocommit',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.GetAutocommitReq',
      '9': 0,
      '10': 'getAutocommit'
    },
  ],
  '8': [
    {'1': 'request'},
  ],
};

/// Descriptor for `StreamRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamRequestDescriptor = $convert.base64Decode(
    'Cg1TdHJlYW1SZXF1ZXN0EicKBWNsb3NlGAEgASgLMg8uQ2xvc2VTdHJlYW1SZXFIAFIFY2xvc2'
    'USLQoHZXhlY3V0ZRgCIAEoCzIRLkV4ZWN1dGVTdHJlYW1SZXFIAFIHZXhlY3V0ZRInCgViYXRj'
    'aBgDIAEoCzIPLkJhdGNoU3RyZWFtUmVxSABSBWJhdGNoEjAKCHNlcXVlbmNlGAQgASgLMhIuU2'
    'VxdWVuY2VTdHJlYW1SZXFIAFIIc2VxdWVuY2USMAoIZGVzY3JpYmUYBSABKAsyEi5EZXNjcmli'
    'ZVN0cmVhbVJlcUgAUghkZXNjcmliZRIrCglzdG9yZV9zcWwYBiABKAsyDC5TdG9yZVNxbFJlcU'
    'gAUghzdG9yZVNxbBIrCgljbG9zZV9zcWwYByABKAsyDC5DbG9zZVNxbFJlcUgAUghjbG9zZVNx'
    'bBI6Cg5nZXRfYXV0b2NvbW1pdBgIIAEoCzIRLkdldEF1dG9jb21taXRSZXFIAFINZ2V0QXV0b2'
    'NvbW1pdEIJCgdyZXF1ZXN0');

@$core.Deprecated('Use executeStreamReqDescriptor instead')
const ExecuteStreamReq$json = {
  '1': 'ExecuteStreamReq',
  '2': [
    {'1': 'stmt', '3': 1, '4': 1, '5': 11, '6': '.Stmt', '10': 'stmt'},
  ],
};

/// Descriptor for `ExecuteStreamReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executeStreamReqDescriptor = $convert.base64Decode(
    'ChBFeGVjdXRlU3RyZWFtUmVxEhkKBHN0bXQYASABKAsyBS5TdG10UgRzdG10');

@$core.Deprecated('Use batchStreamReqDescriptor instead')
const BatchStreamReq$json = {
  '1': 'BatchStreamReq',
  '2': [
    {'1': 'batch', '3': 1, '4': 1, '5': 11, '6': '.Batch', '10': 'batch'},
  ],
};

/// Descriptor for `BatchStreamReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchStreamReqDescriptor = $convert.base64Decode(
    'Cg5CYXRjaFN0cmVhbVJlcRIcCgViYXRjaBgBIAEoCzIGLkJhdGNoUgViYXRjaA==');

@$core.Deprecated('Use sequenceStreamReqDescriptor instead')
const SequenceStreamReq$json = {
  '1': 'SequenceStreamReq',
  '2': [
    {'1': 'sql', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'sql', '17': true},
    {'1': 'sql_id', '3': 2, '4': 1, '5': 5, '9': 1, '10': 'sqlId', '17': true},
  ],
  '8': [
    {'1': '_sql'},
    {'1': '_sql_id'},
  ],
};

/// Descriptor for `SequenceStreamReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sequenceStreamReqDescriptor = $convert.base64Decode(
    'ChFTZXF1ZW5jZVN0cmVhbVJlcRIVCgNzcWwYASABKAlIAFIDc3FsiAEBEhoKBnNxbF9pZBgCIA'
    'EoBUgBUgVzcWxJZIgBAUIGCgRfc3FsQgkKB19zcWxfaWQ=');

@$core.Deprecated('Use describeStreamReqDescriptor instead')
const DescribeStreamReq$json = {
  '1': 'DescribeStreamReq',
  '2': [
    {'1': 'sql', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'sql', '17': true},
    {'1': 'sql_id', '3': 2, '4': 1, '5': 5, '9': 1, '10': 'sqlId', '17': true},
  ],
  '8': [
    {'1': '_sql'},
    {'1': '_sql_id'},
  ],
};

/// Descriptor for `DescribeStreamReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List describeStreamReqDescriptor = $convert.base64Decode(
    'ChFEZXNjcmliZVN0cmVhbVJlcRIVCgNzcWwYASABKAlIAFIDc3FsiAEBEhoKBnNxbF9pZBgCIA'
    'EoBUgBUgVzcWxJZIgBAUIGCgRfc3FsQgkKB19zcWxfaWQ=');

@$core.Deprecated('Use pipelineRespDescriptor instead')
const PipelineResp$json = {
  '1': 'PipelineResp',
  '2': [
    {'1': 'baton', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'baton', '17': true},
    {
      '1': 'base_url',
      '3': 2,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'baseUrl',
      '17': true
    },
    {
      '1': 'results',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.StreamResult',
      '10': 'results'
    },
  ],
  '8': [
    {'1': '_baton'},
    {'1': '_base_url'},
  ],
};

/// Descriptor for `PipelineResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pipelineRespDescriptor = $convert.base64Decode(
    'CgxQaXBlbGluZVJlc3ASGQoFYmF0b24YASABKAlIAFIFYmF0b26IAQESHgoIYmFzZV91cmwYAi'
    'ABKAlIAVIHYmFzZVVybIgBARInCgdyZXN1bHRzGAMgAygLMg0uU3RyZWFtUmVzdWx0UgdyZXN1'
    'bHRzQggKBl9iYXRvbkILCglfYmFzZV91cmw=');

@$core.Deprecated('Use streamResultDescriptor instead')
const StreamResult$json = {
  '1': 'StreamResult',
  '2': [
    {
      '1': 'ok',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.StreamResponse',
      '9': 0,
      '10': 'ok'
    },
    {
      '1': 'error',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.Error',
      '9': 0,
      '10': 'error'
    },
  ],
  '8': [
    {'1': 'result'},
  ],
};

/// Descriptor for `StreamResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamResultDescriptor = $convert.base64Decode(
    'CgxTdHJlYW1SZXN1bHQSIQoCb2sYASABKAsyDy5TdHJlYW1SZXNwb25zZUgAUgJvaxIeCgVlcn'
    'JvchgCIAEoCzIGLkVycm9ySABSBWVycm9yQggKBnJlc3VsdA==');

@$core.Deprecated('Use streamResponseDescriptor instead')
const StreamResponse$json = {
  '1': 'StreamResponse',
  '2': [
    {
      '1': 'close',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.CloseStreamResp',
      '9': 0,
      '10': 'close'
    },
    {
      '1': 'execute',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.ExecuteResp',
      '9': 0,
      '10': 'execute'
    },
    {
      '1': 'batch',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.BatchResp',
      '9': 0,
      '10': 'batch'
    },
    {
      '1': 'sequence',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.SequenceResp',
      '9': 0,
      '10': 'sequence'
    },
    {
      '1': 'describe',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.DescribeResp',
      '9': 0,
      '10': 'describe'
    },
    {
      '1': 'store_sql',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.StoreSqlResp',
      '9': 0,
      '10': 'storeSql'
    },
    {
      '1': 'close_sql',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.CloseSqlResp',
      '9': 0,
      '10': 'closeSql'
    },
    {
      '1': 'get_autocommit',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.GetAutocommitResp',
      '9': 0,
      '10': 'getAutocommit'
    },
  ],
  '8': [
    {'1': 'response'},
  ],
};

/// Descriptor for `StreamResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamResponseDescriptor = $convert.base64Decode(
    'Cg5TdHJlYW1SZXNwb25zZRIoCgVjbG9zZRgBIAEoCzIQLkNsb3NlU3RyZWFtUmVzcEgAUgVjbG'
    '9zZRIoCgdleGVjdXRlGAIgASgLMgwuRXhlY3V0ZVJlc3BIAFIHZXhlY3V0ZRIiCgViYXRjaBgD'
    'IAEoCzIKLkJhdGNoUmVzcEgAUgViYXRjaBIrCghzZXF1ZW5jZRgEIAEoCzINLlNlcXVlbmNlUm'
    'VzcEgAUghzZXF1ZW5jZRIrCghkZXNjcmliZRgFIAEoCzINLkRlc2NyaWJlUmVzcEgAUghkZXNj'
    'cmliZRIsCglzdG9yZV9zcWwYBiABKAsyDS5TdG9yZVNxbFJlc3BIAFIIc3RvcmVTcWwSLAoJY2'
    'xvc2Vfc3FsGAcgASgLMg0uQ2xvc2VTcWxSZXNwSABSCGNsb3NlU3FsEjsKDmdldF9hdXRvY29t'
    'bWl0GAggASgLMhIuR2V0QXV0b2NvbW1pdFJlc3BIAFINZ2V0QXV0b2NvbW1pdEIKCghyZXNwb2'
    '5zZQ==');
