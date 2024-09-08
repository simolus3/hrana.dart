//
//  Generated code. Do not modify.
//  source: lib/src/protocol.protoc
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Error extends $pb.GeneratedMessage {
  factory Error({
    $core.String? message,
    $core.String? code,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    if (code != null) {
      $result.code = code;
    }
    return $result;
  }
  Error._() : super();
  factory Error.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Error.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Error',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..aOS(2, _omitFieldNames ? '' : 'code')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Error clone() => Error()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Error copyWith(void Function(Error) updates) =>
      super.copyWith((message) => updates(message as Error)) as Error;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Error create() => Error._();
  Error createEmptyInstance() => create();
  static $pb.PbList<Error> createRepeated() => $pb.PbList<Error>();
  @$core.pragma('dart2js:noInline')
  static Error getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Error>(create);
  static Error? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get code => $_getSZ(1);
  @$pb.TagNumber(2)
  set code($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);
}

class Stmt extends $pb.GeneratedMessage {
  factory Stmt({
    $core.String? sql,
    $core.int? sqlId,
    $core.Iterable<Value>? args,
    $core.Iterable<NamedArg>? namedArgs,
    $core.bool? wantRows,
  }) {
    final $result = create();
    if (sql != null) {
      $result.sql = sql;
    }
    if (sqlId != null) {
      $result.sqlId = sqlId;
    }
    if (args != null) {
      $result.args.addAll(args);
    }
    if (namedArgs != null) {
      $result.namedArgs.addAll(namedArgs);
    }
    if (wantRows != null) {
      $result.wantRows = wantRows;
    }
    return $result;
  }
  Stmt._() : super();
  factory Stmt.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Stmt.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Stmt',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sql')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'sqlId', $pb.PbFieldType.O3)
    ..pc<Value>(3, _omitFieldNames ? '' : 'args', $pb.PbFieldType.PM,
        subBuilder: Value.create)
    ..pc<NamedArg>(4, _omitFieldNames ? '' : 'namedArgs', $pb.PbFieldType.PM,
        subBuilder: NamedArg.create)
    ..aOB(5, _omitFieldNames ? '' : 'wantRows')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Stmt clone() => Stmt()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Stmt copyWith(void Function(Stmt) updates) =>
      super.copyWith((message) => updates(message as Stmt)) as Stmt;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Stmt create() => Stmt._();
  Stmt createEmptyInstance() => create();
  static $pb.PbList<Stmt> createRepeated() => $pb.PbList<Stmt>();
  @$core.pragma('dart2js:noInline')
  static Stmt getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Stmt>(create);
  static Stmt? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sql => $_getSZ(0);
  @$pb.TagNumber(1)
  set sql($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSql() => $_has(0);
  @$pb.TagNumber(1)
  void clearSql() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get sqlId => $_getIZ(1);
  @$pb.TagNumber(2)
  set sqlId($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSqlId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSqlId() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<Value> get args => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<NamedArg> get namedArgs => $_getList(3);

  @$pb.TagNumber(5)
  $core.bool get wantRows => $_getBF(4);
  @$pb.TagNumber(5)
  set wantRows($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasWantRows() => $_has(4);
  @$pb.TagNumber(5)
  void clearWantRows() => clearField(5);
}

class NamedArg extends $pb.GeneratedMessage {
  factory NamedArg({
    $core.String? name,
    Value? value,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  NamedArg._() : super();
  factory NamedArg.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NamedArg.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NamedArg',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<Value>(2, _omitFieldNames ? '' : 'value', subBuilder: Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NamedArg clone() => NamedArg()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NamedArg copyWith(void Function(NamedArg) updates) =>
      super.copyWith((message) => updates(message as NamedArg)) as NamedArg;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NamedArg create() => NamedArg._();
  NamedArg createEmptyInstance() => create();
  static $pb.PbList<NamedArg> createRepeated() => $pb.PbList<NamedArg>();
  @$core.pragma('dart2js:noInline')
  static NamedArg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NamedArg>(create);
  static NamedArg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  Value get value => $_getN(1);
  @$pb.TagNumber(2)
  set value(Value v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
  @$pb.TagNumber(2)
  Value ensureValue() => $_ensure(1);
}

class StmtResult extends $pb.GeneratedMessage {
  factory StmtResult({
    $core.Iterable<Col>? cols,
    $core.Iterable<Row>? rows,
    $fixnum.Int64? affectedRowCount,
    $fixnum.Int64? lastInsertRowid,
    $fixnum.Int64? replicationIndex,
    $fixnum.Int64? rowsRead,
    $fixnum.Int64? rowsWritten,
    $core.double? queryDurationMs,
  }) {
    final $result = create();
    if (cols != null) {
      $result.cols.addAll(cols);
    }
    if (rows != null) {
      $result.rows.addAll(rows);
    }
    if (affectedRowCount != null) {
      $result.affectedRowCount = affectedRowCount;
    }
    if (lastInsertRowid != null) {
      $result.lastInsertRowid = lastInsertRowid;
    }
    if (replicationIndex != null) {
      $result.replicationIndex = replicationIndex;
    }
    if (rowsRead != null) {
      $result.rowsRead = rowsRead;
    }
    if (rowsWritten != null) {
      $result.rowsWritten = rowsWritten;
    }
    if (queryDurationMs != null) {
      $result.queryDurationMs = queryDurationMs;
    }
    return $result;
  }
  StmtResult._() : super();
  factory StmtResult.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StmtResult.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StmtResult',
      createEmptyInstance: create)
    ..pc<Col>(1, _omitFieldNames ? '' : 'cols', $pb.PbFieldType.PM,
        subBuilder: Col.create)
    ..pc<Row>(2, _omitFieldNames ? '' : 'rows', $pb.PbFieldType.PM,
        subBuilder: Row.create)
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'affectedRowCount', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'lastInsertRowid', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        5, _omitFieldNames ? '' : 'replicationIndex', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        6, _omitFieldNames ? '' : 'rowsRead', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        7, _omitFieldNames ? '' : 'rowsWritten', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.double>(
        8, _omitFieldNames ? '' : 'queryDurationMs', $pb.PbFieldType.OD)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StmtResult clone() => StmtResult()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StmtResult copyWith(void Function(StmtResult) updates) =>
      super.copyWith((message) => updates(message as StmtResult)) as StmtResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StmtResult create() => StmtResult._();
  StmtResult createEmptyInstance() => create();
  static $pb.PbList<StmtResult> createRepeated() => $pb.PbList<StmtResult>();
  @$core.pragma('dart2js:noInline')
  static StmtResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StmtResult>(create);
  static StmtResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Col> get cols => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<Row> get rows => $_getList(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get affectedRowCount => $_getI64(2);
  @$pb.TagNumber(3)
  set affectedRowCount($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAffectedRowCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAffectedRowCount() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get lastInsertRowid => $_getI64(3);
  @$pb.TagNumber(4)
  set lastInsertRowid($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasLastInsertRowid() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastInsertRowid() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get replicationIndex => $_getI64(4);
  @$pb.TagNumber(5)
  set replicationIndex($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasReplicationIndex() => $_has(4);
  @$pb.TagNumber(5)
  void clearReplicationIndex() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get rowsRead => $_getI64(5);
  @$pb.TagNumber(6)
  set rowsRead($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasRowsRead() => $_has(5);
  @$pb.TagNumber(6)
  void clearRowsRead() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get rowsWritten => $_getI64(6);
  @$pb.TagNumber(7)
  set rowsWritten($fixnum.Int64 v) {
    $_setInt64(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasRowsWritten() => $_has(6);
  @$pb.TagNumber(7)
  void clearRowsWritten() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get queryDurationMs => $_getN(7);
  @$pb.TagNumber(8)
  set queryDurationMs($core.double v) {
    $_setDouble(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasQueryDurationMs() => $_has(7);
  @$pb.TagNumber(8)
  void clearQueryDurationMs() => clearField(8);
}

class Col extends $pb.GeneratedMessage {
  factory Col({
    $core.String? name,
    $core.String? decltype,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (decltype != null) {
      $result.decltype = decltype;
    }
    return $result;
  }
  Col._() : super();
  factory Col.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Col.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Col',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'decltype')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Col clone() => Col()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Col copyWith(void Function(Col) updates) =>
      super.copyWith((message) => updates(message as Col)) as Col;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Col create() => Col._();
  Col createEmptyInstance() => create();
  static $pb.PbList<Col> createRepeated() => $pb.PbList<Col>();
  @$core.pragma('dart2js:noInline')
  static Col getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Col>(create);
  static Col? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get decltype => $_getSZ(1);
  @$pb.TagNumber(2)
  set decltype($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDecltype() => $_has(1);
  @$pb.TagNumber(2)
  void clearDecltype() => clearField(2);
}

class Row extends $pb.GeneratedMessage {
  factory Row({
    $core.Iterable<Value>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  Row._() : super();
  factory Row.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Row.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Row',
      createEmptyInstance: create)
    ..pc<Value>(1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.PM,
        subBuilder: Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Row clone() => Row()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Row copyWith(void Function(Row) updates) =>
      super.copyWith((message) => updates(message as Row)) as Row;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Row create() => Row._();
  Row createEmptyInstance() => create();
  static $pb.PbList<Row> createRepeated() => $pb.PbList<Row>();
  @$core.pragma('dart2js:noInline')
  static Row getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Row>(create);
  static Row? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Value> get values => $_getList(0);
}

class Batch extends $pb.GeneratedMessage {
  factory Batch({
    $core.Iterable<BatchStep>? steps,
  }) {
    final $result = create();
    if (steps != null) {
      $result.steps.addAll(steps);
    }
    return $result;
  }
  Batch._() : super();
  factory Batch.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Batch.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Batch',
      createEmptyInstance: create)
    ..pc<BatchStep>(1, _omitFieldNames ? '' : 'steps', $pb.PbFieldType.PM,
        subBuilder: BatchStep.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Batch clone() => Batch()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Batch copyWith(void Function(Batch) updates) =>
      super.copyWith((message) => updates(message as Batch)) as Batch;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Batch create() => Batch._();
  Batch createEmptyInstance() => create();
  static $pb.PbList<Batch> createRepeated() => $pb.PbList<Batch>();
  @$core.pragma('dart2js:noInline')
  static Batch getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Batch>(create);
  static Batch? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BatchStep> get steps => $_getList(0);
}

class BatchStep extends $pb.GeneratedMessage {
  factory BatchStep({
    BatchCond? condition,
    Stmt? stmt,
  }) {
    final $result = create();
    if (condition != null) {
      $result.condition = condition;
    }
    if (stmt != null) {
      $result.stmt = stmt;
    }
    return $result;
  }
  BatchStep._() : super();
  factory BatchStep.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BatchStep.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BatchStep',
      createEmptyInstance: create)
    ..aOM<BatchCond>(1, _omitFieldNames ? '' : 'condition',
        subBuilder: BatchCond.create)
    ..aOM<Stmt>(2, _omitFieldNames ? '' : 'stmt', subBuilder: Stmt.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BatchStep clone() => BatchStep()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BatchStep copyWith(void Function(BatchStep) updates) =>
      super.copyWith((message) => updates(message as BatchStep)) as BatchStep;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchStep create() => BatchStep._();
  BatchStep createEmptyInstance() => create();
  static $pb.PbList<BatchStep> createRepeated() => $pb.PbList<BatchStep>();
  @$core.pragma('dart2js:noInline')
  static BatchStep getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BatchStep>(create);
  static BatchStep? _defaultInstance;

  @$pb.TagNumber(1)
  BatchCond get condition => $_getN(0);
  @$pb.TagNumber(1)
  set condition(BatchCond v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCondition() => $_has(0);
  @$pb.TagNumber(1)
  void clearCondition() => clearField(1);
  @$pb.TagNumber(1)
  BatchCond ensureCondition() => $_ensure(0);

  @$pb.TagNumber(2)
  Stmt get stmt => $_getN(1);
  @$pb.TagNumber(2)
  set stmt(Stmt v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStmt() => $_has(1);
  @$pb.TagNumber(2)
  void clearStmt() => clearField(2);
  @$pb.TagNumber(2)
  Stmt ensureStmt() => $_ensure(1);
}

class BatchCond_CondList extends $pb.GeneratedMessage {
  factory BatchCond_CondList({
    $core.Iterable<BatchCond>? conds,
  }) {
    final $result = create();
    if (conds != null) {
      $result.conds.addAll(conds);
    }
    return $result;
  }
  BatchCond_CondList._() : super();
  factory BatchCond_CondList.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BatchCond_CondList.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BatchCond.CondList',
      createEmptyInstance: create)
    ..pc<BatchCond>(1, _omitFieldNames ? '' : 'conds', $pb.PbFieldType.PM,
        subBuilder: BatchCond.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BatchCond_CondList clone() => BatchCond_CondList()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BatchCond_CondList copyWith(void Function(BatchCond_CondList) updates) =>
      super.copyWith((message) => updates(message as BatchCond_CondList))
          as BatchCond_CondList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchCond_CondList create() => BatchCond_CondList._();
  BatchCond_CondList createEmptyInstance() => create();
  static $pb.PbList<BatchCond_CondList> createRepeated() =>
      $pb.PbList<BatchCond_CondList>();
  @$core.pragma('dart2js:noInline')
  static BatchCond_CondList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BatchCond_CondList>(create);
  static BatchCond_CondList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BatchCond> get conds => $_getList(0);
}

class BatchCond_IsAutocommit extends $pb.GeneratedMessage {
  factory BatchCond_IsAutocommit() => create();
  BatchCond_IsAutocommit._() : super();
  factory BatchCond_IsAutocommit.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BatchCond_IsAutocommit.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BatchCond.IsAutocommit',
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BatchCond_IsAutocommit clone() =>
      BatchCond_IsAutocommit()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BatchCond_IsAutocommit copyWith(
          void Function(BatchCond_IsAutocommit) updates) =>
      super.copyWith((message) => updates(message as BatchCond_IsAutocommit))
          as BatchCond_IsAutocommit;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchCond_IsAutocommit create() => BatchCond_IsAutocommit._();
  BatchCond_IsAutocommit createEmptyInstance() => create();
  static $pb.PbList<BatchCond_IsAutocommit> createRepeated() =>
      $pb.PbList<BatchCond_IsAutocommit>();
  @$core.pragma('dart2js:noInline')
  static BatchCond_IsAutocommit getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BatchCond_IsAutocommit>(create);
  static BatchCond_IsAutocommit? _defaultInstance;
}

enum BatchCond_Cond { stepOk, stepError, not, and, or, isAutocommit, notSet }

class BatchCond extends $pb.GeneratedMessage {
  factory BatchCond({
    $core.int? stepOk,
    $core.int? stepError,
    BatchCond? not,
    BatchCond_CondList? and,
    BatchCond_CondList? or,
    BatchCond_IsAutocommit? isAutocommit,
  }) {
    final $result = create();
    if (stepOk != null) {
      $result.stepOk = stepOk;
    }
    if (stepError != null) {
      $result.stepError = stepError;
    }
    if (not != null) {
      $result.not = not;
    }
    if (and != null) {
      $result.and = and;
    }
    if (or != null) {
      $result.or = or;
    }
    if (isAutocommit != null) {
      $result.isAutocommit = isAutocommit;
    }
    return $result;
  }
  BatchCond._() : super();
  factory BatchCond.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BatchCond.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, BatchCond_Cond> _BatchCond_CondByTag = {
    1: BatchCond_Cond.stepOk,
    2: BatchCond_Cond.stepError,
    3: BatchCond_Cond.not,
    4: BatchCond_Cond.and,
    5: BatchCond_Cond.or,
    6: BatchCond_Cond.isAutocommit,
    0: BatchCond_Cond.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BatchCond',
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6])
    ..a<$core.int>(1, _omitFieldNames ? '' : 'stepOk', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'stepError', $pb.PbFieldType.OU3)
    ..aOM<BatchCond>(3, _omitFieldNames ? '' : 'not',
        subBuilder: BatchCond.create)
    ..aOM<BatchCond_CondList>(4, _omitFieldNames ? '' : 'and',
        subBuilder: BatchCond_CondList.create)
    ..aOM<BatchCond_CondList>(5, _omitFieldNames ? '' : 'or',
        subBuilder: BatchCond_CondList.create)
    ..aOM<BatchCond_IsAutocommit>(6, _omitFieldNames ? '' : 'isAutocommit',
        subBuilder: BatchCond_IsAutocommit.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BatchCond clone() => BatchCond()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BatchCond copyWith(void Function(BatchCond) updates) =>
      super.copyWith((message) => updates(message as BatchCond)) as BatchCond;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchCond create() => BatchCond._();
  BatchCond createEmptyInstance() => create();
  static $pb.PbList<BatchCond> createRepeated() => $pb.PbList<BatchCond>();
  @$core.pragma('dart2js:noInline')
  static BatchCond getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BatchCond>(create);
  static BatchCond? _defaultInstance;

  BatchCond_Cond whichCond() => _BatchCond_CondByTag[$_whichOneof(0)]!;
  void clearCond() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.int get stepOk => $_getIZ(0);
  @$pb.TagNumber(1)
  set stepOk($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStepOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearStepOk() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get stepError => $_getIZ(1);
  @$pb.TagNumber(2)
  set stepError($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStepError() => $_has(1);
  @$pb.TagNumber(2)
  void clearStepError() => clearField(2);

  @$pb.TagNumber(3)
  BatchCond get not => $_getN(2);
  @$pb.TagNumber(3)
  set not(BatchCond v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasNot() => $_has(2);
  @$pb.TagNumber(3)
  void clearNot() => clearField(3);
  @$pb.TagNumber(3)
  BatchCond ensureNot() => $_ensure(2);

  @$pb.TagNumber(4)
  BatchCond_CondList get and => $_getN(3);
  @$pb.TagNumber(4)
  set and(BatchCond_CondList v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasAnd() => $_has(3);
  @$pb.TagNumber(4)
  void clearAnd() => clearField(4);
  @$pb.TagNumber(4)
  BatchCond_CondList ensureAnd() => $_ensure(3);

  @$pb.TagNumber(5)
  BatchCond_CondList get or => $_getN(4);
  @$pb.TagNumber(5)
  set or(BatchCond_CondList v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasOr() => $_has(4);
  @$pb.TagNumber(5)
  void clearOr() => clearField(5);
  @$pb.TagNumber(5)
  BatchCond_CondList ensureOr() => $_ensure(4);

  @$pb.TagNumber(6)
  BatchCond_IsAutocommit get isAutocommit => $_getN(5);
  @$pb.TagNumber(6)
  set isAutocommit(BatchCond_IsAutocommit v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasIsAutocommit() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsAutocommit() => clearField(6);
  @$pb.TagNumber(6)
  BatchCond_IsAutocommit ensureIsAutocommit() => $_ensure(5);
}

class BatchResult extends $pb.GeneratedMessage {
  factory BatchResult({
    $core.Map<$core.int, StmtResult>? stepResults,
    $core.Map<$core.int, Error>? stepErrors,
  }) {
    final $result = create();
    if (stepResults != null) {
      $result.stepResults.addAll(stepResults);
    }
    if (stepErrors != null) {
      $result.stepErrors.addAll(stepErrors);
    }
    return $result;
  }
  BatchResult._() : super();
  factory BatchResult.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BatchResult.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BatchResult',
      createEmptyInstance: create)
    ..m<$core.int, StmtResult>(1, _omitFieldNames ? '' : 'stepResults',
        entryClassName: 'BatchResult.StepResultsEntry',
        keyFieldType: $pb.PbFieldType.OU3,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: StmtResult.create,
        valueDefaultOrMaker: StmtResult.getDefault)
    ..m<$core.int, Error>(2, _omitFieldNames ? '' : 'stepErrors',
        entryClassName: 'BatchResult.StepErrorsEntry',
        keyFieldType: $pb.PbFieldType.OU3,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: Error.create,
        valueDefaultOrMaker: Error.getDefault)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BatchResult clone() => BatchResult()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BatchResult copyWith(void Function(BatchResult) updates) =>
      super.copyWith((message) => updates(message as BatchResult))
          as BatchResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchResult create() => BatchResult._();
  BatchResult createEmptyInstance() => create();
  static $pb.PbList<BatchResult> createRepeated() => $pb.PbList<BatchResult>();
  @$core.pragma('dart2js:noInline')
  static BatchResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BatchResult>(create);
  static BatchResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.int, StmtResult> get stepResults => $_getMap(0);

  @$pb.TagNumber(2)
  $core.Map<$core.int, Error> get stepErrors => $_getMap(1);
}

enum CursorEntry_Entry { stepBegin, stepEnd, stepError, row, error, notSet }

class CursorEntry extends $pb.GeneratedMessage {
  factory CursorEntry({
    StepBeginEntry? stepBegin,
    StepEndEntry? stepEnd,
    StepErrorEntry? stepError,
    Row? row,
    Error? error,
  }) {
    final $result = create();
    if (stepBegin != null) {
      $result.stepBegin = stepBegin;
    }
    if (stepEnd != null) {
      $result.stepEnd = stepEnd;
    }
    if (stepError != null) {
      $result.stepError = stepError;
    }
    if (row != null) {
      $result.row = row;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  CursorEntry._() : super();
  factory CursorEntry.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CursorEntry.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, CursorEntry_Entry> _CursorEntry_EntryByTag =
      {
    1: CursorEntry_Entry.stepBegin,
    2: CursorEntry_Entry.stepEnd,
    3: CursorEntry_Entry.stepError,
    4: CursorEntry_Entry.row,
    5: CursorEntry_Entry.error,
    0: CursorEntry_Entry.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CursorEntry',
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5])
    ..aOM<StepBeginEntry>(1, _omitFieldNames ? '' : 'stepBegin',
        subBuilder: StepBeginEntry.create)
    ..aOM<StepEndEntry>(2, _omitFieldNames ? '' : 'stepEnd',
        subBuilder: StepEndEntry.create)
    ..aOM<StepErrorEntry>(3, _omitFieldNames ? '' : 'stepError',
        subBuilder: StepErrorEntry.create)
    ..aOM<Row>(4, _omitFieldNames ? '' : 'row', subBuilder: Row.create)
    ..aOM<Error>(5, _omitFieldNames ? '' : 'error', subBuilder: Error.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CursorEntry clone() => CursorEntry()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CursorEntry copyWith(void Function(CursorEntry) updates) =>
      super.copyWith((message) => updates(message as CursorEntry))
          as CursorEntry;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CursorEntry create() => CursorEntry._();
  CursorEntry createEmptyInstance() => create();
  static $pb.PbList<CursorEntry> createRepeated() => $pb.PbList<CursorEntry>();
  @$core.pragma('dart2js:noInline')
  static CursorEntry getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CursorEntry>(create);
  static CursorEntry? _defaultInstance;

  CursorEntry_Entry whichEntry() => _CursorEntry_EntryByTag[$_whichOneof(0)]!;
  void clearEntry() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  StepBeginEntry get stepBegin => $_getN(0);
  @$pb.TagNumber(1)
  set stepBegin(StepBeginEntry v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStepBegin() => $_has(0);
  @$pb.TagNumber(1)
  void clearStepBegin() => clearField(1);
  @$pb.TagNumber(1)
  StepBeginEntry ensureStepBegin() => $_ensure(0);

  @$pb.TagNumber(2)
  StepEndEntry get stepEnd => $_getN(1);
  @$pb.TagNumber(2)
  set stepEnd(StepEndEntry v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStepEnd() => $_has(1);
  @$pb.TagNumber(2)
  void clearStepEnd() => clearField(2);
  @$pb.TagNumber(2)
  StepEndEntry ensureStepEnd() => $_ensure(1);

  @$pb.TagNumber(3)
  StepErrorEntry get stepError => $_getN(2);
  @$pb.TagNumber(3)
  set stepError(StepErrorEntry v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasStepError() => $_has(2);
  @$pb.TagNumber(3)
  void clearStepError() => clearField(3);
  @$pb.TagNumber(3)
  StepErrorEntry ensureStepError() => $_ensure(2);

  @$pb.TagNumber(4)
  Row get row => $_getN(3);
  @$pb.TagNumber(4)
  set row(Row v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasRow() => $_has(3);
  @$pb.TagNumber(4)
  void clearRow() => clearField(4);
  @$pb.TagNumber(4)
  Row ensureRow() => $_ensure(3);

  @$pb.TagNumber(5)
  Error get error => $_getN(4);
  @$pb.TagNumber(5)
  set error(Error v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasError() => $_has(4);
  @$pb.TagNumber(5)
  void clearError() => clearField(5);
  @$pb.TagNumber(5)
  Error ensureError() => $_ensure(4);
}

class StepBeginEntry extends $pb.GeneratedMessage {
  factory StepBeginEntry({
    $core.int? step,
    $core.Iterable<Col>? cols,
  }) {
    final $result = create();
    if (step != null) {
      $result.step = step;
    }
    if (cols != null) {
      $result.cols.addAll(cols);
    }
    return $result;
  }
  StepBeginEntry._() : super();
  factory StepBeginEntry.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StepBeginEntry.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StepBeginEntry',
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'step', $pb.PbFieldType.OU3)
    ..pc<Col>(2, _omitFieldNames ? '' : 'cols', $pb.PbFieldType.PM,
        subBuilder: Col.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StepBeginEntry clone() => StepBeginEntry()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StepBeginEntry copyWith(void Function(StepBeginEntry) updates) =>
      super.copyWith((message) => updates(message as StepBeginEntry))
          as StepBeginEntry;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StepBeginEntry create() => StepBeginEntry._();
  StepBeginEntry createEmptyInstance() => create();
  static $pb.PbList<StepBeginEntry> createRepeated() =>
      $pb.PbList<StepBeginEntry>();
  @$core.pragma('dart2js:noInline')
  static StepBeginEntry getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StepBeginEntry>(create);
  static StepBeginEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get step => $_getIZ(0);
  @$pb.TagNumber(1)
  set step($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStep() => $_has(0);
  @$pb.TagNumber(1)
  void clearStep() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Col> get cols => $_getList(1);
}

class StepEndEntry extends $pb.GeneratedMessage {
  factory StepEndEntry({
    $fixnum.Int64? affectedRowCount,
    $fixnum.Int64? lastInsertRowid,
  }) {
    final $result = create();
    if (affectedRowCount != null) {
      $result.affectedRowCount = affectedRowCount;
    }
    if (lastInsertRowid != null) {
      $result.lastInsertRowid = lastInsertRowid;
    }
    return $result;
  }
  StepEndEntry._() : super();
  factory StepEndEntry.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StepEndEntry.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StepEndEntry',
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'affectedRowCount', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'lastInsertRowid', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StepEndEntry clone() => StepEndEntry()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StepEndEntry copyWith(void Function(StepEndEntry) updates) =>
      super.copyWith((message) => updates(message as StepEndEntry))
          as StepEndEntry;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StepEndEntry create() => StepEndEntry._();
  StepEndEntry createEmptyInstance() => create();
  static $pb.PbList<StepEndEntry> createRepeated() =>
      $pb.PbList<StepEndEntry>();
  @$core.pragma('dart2js:noInline')
  static StepEndEntry getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StepEndEntry>(create);
  static StepEndEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get affectedRowCount => $_getI64(0);
  @$pb.TagNumber(1)
  set affectedRowCount($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAffectedRowCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAffectedRowCount() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get lastInsertRowid => $_getI64(1);
  @$pb.TagNumber(2)
  set lastInsertRowid($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLastInsertRowid() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastInsertRowid() => clearField(2);
}

class StepErrorEntry extends $pb.GeneratedMessage {
  factory StepErrorEntry({
    $core.int? step,
    Error? error,
  }) {
    final $result = create();
    if (step != null) {
      $result.step = step;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  StepErrorEntry._() : super();
  factory StepErrorEntry.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StepErrorEntry.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StepErrorEntry',
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'step', $pb.PbFieldType.OU3)
    ..aOM<Error>(2, _omitFieldNames ? '' : 'error', subBuilder: Error.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StepErrorEntry clone() => StepErrorEntry()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StepErrorEntry copyWith(void Function(StepErrorEntry) updates) =>
      super.copyWith((message) => updates(message as StepErrorEntry))
          as StepErrorEntry;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StepErrorEntry create() => StepErrorEntry._();
  StepErrorEntry createEmptyInstance() => create();
  static $pb.PbList<StepErrorEntry> createRepeated() =>
      $pb.PbList<StepErrorEntry>();
  @$core.pragma('dart2js:noInline')
  static StepErrorEntry getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StepErrorEntry>(create);
  static StepErrorEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get step => $_getIZ(0);
  @$pb.TagNumber(1)
  set step($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStep() => $_has(0);
  @$pb.TagNumber(1)
  void clearStep() => clearField(1);

  @$pb.TagNumber(2)
  Error get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(Error v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  Error ensureError() => $_ensure(1);
}

class DescribeResult extends $pb.GeneratedMessage {
  factory DescribeResult({
    $core.Iterable<DescribeParam>? params,
    $core.Iterable<DescribeCol>? cols,
    $core.bool? isExplain,
    $core.bool? isReadonly,
  }) {
    final $result = create();
    if (params != null) {
      $result.params.addAll(params);
    }
    if (cols != null) {
      $result.cols.addAll(cols);
    }
    if (isExplain != null) {
      $result.isExplain = isExplain;
    }
    if (isReadonly != null) {
      $result.isReadonly = isReadonly;
    }
    return $result;
  }
  DescribeResult._() : super();
  factory DescribeResult.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DescribeResult.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DescribeResult',
      createEmptyInstance: create)
    ..pc<DescribeParam>(1, _omitFieldNames ? '' : 'params', $pb.PbFieldType.PM,
        subBuilder: DescribeParam.create)
    ..pc<DescribeCol>(2, _omitFieldNames ? '' : 'cols', $pb.PbFieldType.PM,
        subBuilder: DescribeCol.create)
    ..aOB(3, _omitFieldNames ? '' : 'isExplain')
    ..aOB(4, _omitFieldNames ? '' : 'isReadonly')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DescribeResult clone() => DescribeResult()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DescribeResult copyWith(void Function(DescribeResult) updates) =>
      super.copyWith((message) => updates(message as DescribeResult))
          as DescribeResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DescribeResult create() => DescribeResult._();
  DescribeResult createEmptyInstance() => create();
  static $pb.PbList<DescribeResult> createRepeated() =>
      $pb.PbList<DescribeResult>();
  @$core.pragma('dart2js:noInline')
  static DescribeResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DescribeResult>(create);
  static DescribeResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<DescribeParam> get params => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<DescribeCol> get cols => $_getList(1);

  @$pb.TagNumber(3)
  $core.bool get isExplain => $_getBF(2);
  @$pb.TagNumber(3)
  set isExplain($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIsExplain() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsExplain() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isReadonly => $_getBF(3);
  @$pb.TagNumber(4)
  set isReadonly($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasIsReadonly() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsReadonly() => clearField(4);
}

class DescribeParam extends $pb.GeneratedMessage {
  factory DescribeParam({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  DescribeParam._() : super();
  factory DescribeParam.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DescribeParam.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DescribeParam',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DescribeParam clone() => DescribeParam()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DescribeParam copyWith(void Function(DescribeParam) updates) =>
      super.copyWith((message) => updates(message as DescribeParam))
          as DescribeParam;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DescribeParam create() => DescribeParam._();
  DescribeParam createEmptyInstance() => create();
  static $pb.PbList<DescribeParam> createRepeated() =>
      $pb.PbList<DescribeParam>();
  @$core.pragma('dart2js:noInline')
  static DescribeParam getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DescribeParam>(create);
  static DescribeParam? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class DescribeCol extends $pb.GeneratedMessage {
  factory DescribeCol({
    $core.String? name,
    $core.String? decltype,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (decltype != null) {
      $result.decltype = decltype;
    }
    return $result;
  }
  DescribeCol._() : super();
  factory DescribeCol.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DescribeCol.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DescribeCol',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'decltype')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DescribeCol clone() => DescribeCol()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DescribeCol copyWith(void Function(DescribeCol) updates) =>
      super.copyWith((message) => updates(message as DescribeCol))
          as DescribeCol;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DescribeCol create() => DescribeCol._();
  DescribeCol createEmptyInstance() => create();
  static $pb.PbList<DescribeCol> createRepeated() => $pb.PbList<DescribeCol>();
  @$core.pragma('dart2js:noInline')
  static DescribeCol getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DescribeCol>(create);
  static DescribeCol? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get decltype => $_getSZ(1);
  @$pb.TagNumber(2)
  set decltype($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDecltype() => $_has(1);
  @$pb.TagNumber(2)
  void clearDecltype() => clearField(2);
}

class Value_Null extends $pb.GeneratedMessage {
  factory Value_Null() => create();
  Value_Null._() : super();
  factory Value_Null.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Value_Null.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Value.Null',
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Value_Null clone() => Value_Null()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Value_Null copyWith(void Function(Value_Null) updates) =>
      super.copyWith((message) => updates(message as Value_Null)) as Value_Null;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Value_Null create() => Value_Null._();
  Value_Null createEmptyInstance() => create();
  static $pb.PbList<Value_Null> createRepeated() => $pb.PbList<Value_Null>();
  @$core.pragma('dart2js:noInline')
  static Value_Null getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Value_Null>(create);
  static Value_Null? _defaultInstance;
}

enum Value_Value { null_1, integer, float, text, blob, notSet }

class Value extends $pb.GeneratedMessage {
  factory Value({
    Value_Null? null_1,
    $fixnum.Int64? integer,
    $core.double? float,
    $core.String? text,
    $core.List<$core.int>? blob,
  }) {
    final $result = create();
    if (null_1 != null) {
      $result.null_1 = null_1;
    }
    if (integer != null) {
      $result.integer = integer;
    }
    if (float != null) {
      $result.float = float;
    }
    if (text != null) {
      $result.text = text;
    }
    if (blob != null) {
      $result.blob = blob;
    }
    return $result;
  }
  Value._() : super();
  factory Value.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Value.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Value_Value> _Value_ValueByTag = {
    1: Value_Value.null_1,
    2: Value_Value.integer,
    3: Value_Value.float,
    4: Value_Value.text,
    5: Value_Value.blob,
    0: Value_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Value',
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5])
    ..aOM<Value_Null>(1, _omitFieldNames ? '' : 'null',
        subBuilder: Value_Null.create)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'integer', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'float', $pb.PbFieldType.OD)
    ..aOS(4, _omitFieldNames ? '' : 'text')
    ..a<$core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'blob', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Value clone() => Value()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Value copyWith(void Function(Value) updates) =>
      super.copyWith((message) => updates(message as Value)) as Value;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Value create() => Value._();
  Value createEmptyInstance() => create();
  static $pb.PbList<Value> createRepeated() => $pb.PbList<Value>();
  @$core.pragma('dart2js:noInline')
  static Value getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Value>(create);
  static Value? _defaultInstance;

  Value_Value whichValue() => _Value_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Value_Null get null_1 => $_getN(0);
  @$pb.TagNumber(1)
  set null_1(Value_Null v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNull_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearNull_1() => clearField(1);
  @$pb.TagNumber(1)
  Value_Null ensureNull_1() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get integer => $_getI64(1);
  @$pb.TagNumber(2)
  set integer($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasInteger() => $_has(1);
  @$pb.TagNumber(2)
  void clearInteger() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get float => $_getN(2);
  @$pb.TagNumber(3)
  set float($core.double v) {
    $_setDouble(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFloat() => $_has(2);
  @$pb.TagNumber(3)
  void clearFloat() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get text => $_getSZ(3);
  @$pb.TagNumber(4)
  set text($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasText() => $_has(3);
  @$pb.TagNumber(4)
  void clearText() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get blob => $_getN(4);
  @$pb.TagNumber(5)
  set blob($core.List<$core.int> v) {
    $_setBytes(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasBlob() => $_has(4);
  @$pb.TagNumber(5)
  void clearBlob() => clearField(5);
}

enum ClientMsg_Msg { hello, request, notSet }

class ClientMsg extends $pb.GeneratedMessage {
  factory ClientMsg({
    HelloMsg? hello,
    RequestMsg? request,
  }) {
    final $result = create();
    if (hello != null) {
      $result.hello = hello;
    }
    if (request != null) {
      $result.request = request;
    }
    return $result;
  }
  ClientMsg._() : super();
  factory ClientMsg.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ClientMsg.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ClientMsg_Msg> _ClientMsg_MsgByTag = {
    1: ClientMsg_Msg.hello,
    2: ClientMsg_Msg.request,
    0: ClientMsg_Msg.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ClientMsg',
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<HelloMsg>(1, _omitFieldNames ? '' : 'hello',
        subBuilder: HelloMsg.create)
    ..aOM<RequestMsg>(2, _omitFieldNames ? '' : 'request',
        subBuilder: RequestMsg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ClientMsg clone() => ClientMsg()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ClientMsg copyWith(void Function(ClientMsg) updates) =>
      super.copyWith((message) => updates(message as ClientMsg)) as ClientMsg;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClientMsg create() => ClientMsg._();
  ClientMsg createEmptyInstance() => create();
  static $pb.PbList<ClientMsg> createRepeated() => $pb.PbList<ClientMsg>();
  @$core.pragma('dart2js:noInline')
  static ClientMsg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientMsg>(create);
  static ClientMsg? _defaultInstance;

  ClientMsg_Msg whichMsg() => _ClientMsg_MsgByTag[$_whichOneof(0)]!;
  void clearMsg() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  HelloMsg get hello => $_getN(0);
  @$pb.TagNumber(1)
  set hello(HelloMsg v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHello() => $_has(0);
  @$pb.TagNumber(1)
  void clearHello() => clearField(1);
  @$pb.TagNumber(1)
  HelloMsg ensureHello() => $_ensure(0);

  @$pb.TagNumber(2)
  RequestMsg get request => $_getN(1);
  @$pb.TagNumber(2)
  set request(RequestMsg v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRequest() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequest() => clearField(2);
  @$pb.TagNumber(2)
  RequestMsg ensureRequest() => $_ensure(1);
}

enum ServerMsg_Msg { helloOk, helloError, responseOk, responseError, notSet }

class ServerMsg extends $pb.GeneratedMessage {
  factory ServerMsg({
    HelloOkMsg? helloOk,
    HelloErrorMsg? helloError,
    ResponseOkMsg? responseOk,
    ResponseErrorMsg? responseError,
  }) {
    final $result = create();
    if (helloOk != null) {
      $result.helloOk = helloOk;
    }
    if (helloError != null) {
      $result.helloError = helloError;
    }
    if (responseOk != null) {
      $result.responseOk = responseOk;
    }
    if (responseError != null) {
      $result.responseError = responseError;
    }
    return $result;
  }
  ServerMsg._() : super();
  factory ServerMsg.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ServerMsg.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ServerMsg_Msg> _ServerMsg_MsgByTag = {
    1: ServerMsg_Msg.helloOk,
    2: ServerMsg_Msg.helloError,
    3: ServerMsg_Msg.responseOk,
    4: ServerMsg_Msg.responseError,
    0: ServerMsg_Msg.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ServerMsg',
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<HelloOkMsg>(1, _omitFieldNames ? '' : 'helloOk',
        subBuilder: HelloOkMsg.create)
    ..aOM<HelloErrorMsg>(2, _omitFieldNames ? '' : 'helloError',
        subBuilder: HelloErrorMsg.create)
    ..aOM<ResponseOkMsg>(3, _omitFieldNames ? '' : 'responseOk',
        subBuilder: ResponseOkMsg.create)
    ..aOM<ResponseErrorMsg>(4, _omitFieldNames ? '' : 'responseError',
        subBuilder: ResponseErrorMsg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ServerMsg clone() => ServerMsg()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ServerMsg copyWith(void Function(ServerMsg) updates) =>
      super.copyWith((message) => updates(message as ServerMsg)) as ServerMsg;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServerMsg create() => ServerMsg._();
  ServerMsg createEmptyInstance() => create();
  static $pb.PbList<ServerMsg> createRepeated() => $pb.PbList<ServerMsg>();
  @$core.pragma('dart2js:noInline')
  static ServerMsg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServerMsg>(create);
  static ServerMsg? _defaultInstance;

  ServerMsg_Msg whichMsg() => _ServerMsg_MsgByTag[$_whichOneof(0)]!;
  void clearMsg() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  HelloOkMsg get helloOk => $_getN(0);
  @$pb.TagNumber(1)
  set helloOk(HelloOkMsg v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHelloOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearHelloOk() => clearField(1);
  @$pb.TagNumber(1)
  HelloOkMsg ensureHelloOk() => $_ensure(0);

  @$pb.TagNumber(2)
  HelloErrorMsg get helloError => $_getN(1);
  @$pb.TagNumber(2)
  set helloError(HelloErrorMsg v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasHelloError() => $_has(1);
  @$pb.TagNumber(2)
  void clearHelloError() => clearField(2);
  @$pb.TagNumber(2)
  HelloErrorMsg ensureHelloError() => $_ensure(1);

  @$pb.TagNumber(3)
  ResponseOkMsg get responseOk => $_getN(2);
  @$pb.TagNumber(3)
  set responseOk(ResponseOkMsg v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasResponseOk() => $_has(2);
  @$pb.TagNumber(3)
  void clearResponseOk() => clearField(3);
  @$pb.TagNumber(3)
  ResponseOkMsg ensureResponseOk() => $_ensure(2);

  @$pb.TagNumber(4)
  ResponseErrorMsg get responseError => $_getN(3);
  @$pb.TagNumber(4)
  set responseError(ResponseErrorMsg v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasResponseError() => $_has(3);
  @$pb.TagNumber(4)
  void clearResponseError() => clearField(4);
  @$pb.TagNumber(4)
  ResponseErrorMsg ensureResponseError() => $_ensure(3);
}

class HelloMsg extends $pb.GeneratedMessage {
  factory HelloMsg({
    $core.String? jwt,
  }) {
    final $result = create();
    if (jwt != null) {
      $result.jwt = jwt;
    }
    return $result;
  }
  HelloMsg._() : super();
  factory HelloMsg.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory HelloMsg.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HelloMsg',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'jwt')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  HelloMsg clone() => HelloMsg()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  HelloMsg copyWith(void Function(HelloMsg) updates) =>
      super.copyWith((message) => updates(message as HelloMsg)) as HelloMsg;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HelloMsg create() => HelloMsg._();
  HelloMsg createEmptyInstance() => create();
  static $pb.PbList<HelloMsg> createRepeated() => $pb.PbList<HelloMsg>();
  @$core.pragma('dart2js:noInline')
  static HelloMsg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HelloMsg>(create);
  static HelloMsg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get jwt => $_getSZ(0);
  @$pb.TagNumber(1)
  set jwt($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasJwt() => $_has(0);
  @$pb.TagNumber(1)
  void clearJwt() => clearField(1);
}

class HelloOkMsg extends $pb.GeneratedMessage {
  factory HelloOkMsg() => create();
  HelloOkMsg._() : super();
  factory HelloOkMsg.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory HelloOkMsg.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HelloOkMsg',
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  HelloOkMsg clone() => HelloOkMsg()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  HelloOkMsg copyWith(void Function(HelloOkMsg) updates) =>
      super.copyWith((message) => updates(message as HelloOkMsg)) as HelloOkMsg;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HelloOkMsg create() => HelloOkMsg._();
  HelloOkMsg createEmptyInstance() => create();
  static $pb.PbList<HelloOkMsg> createRepeated() => $pb.PbList<HelloOkMsg>();
  @$core.pragma('dart2js:noInline')
  static HelloOkMsg getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HelloOkMsg>(create);
  static HelloOkMsg? _defaultInstance;
}

class HelloErrorMsg extends $pb.GeneratedMessage {
  factory HelloErrorMsg({
    Error? error,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  HelloErrorMsg._() : super();
  factory HelloErrorMsg.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory HelloErrorMsg.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HelloErrorMsg',
      createEmptyInstance: create)
    ..aOM<Error>(1, _omitFieldNames ? '' : 'error', subBuilder: Error.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  HelloErrorMsg clone() => HelloErrorMsg()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  HelloErrorMsg copyWith(void Function(HelloErrorMsg) updates) =>
      super.copyWith((message) => updates(message as HelloErrorMsg))
          as HelloErrorMsg;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HelloErrorMsg create() => HelloErrorMsg._();
  HelloErrorMsg createEmptyInstance() => create();
  static $pb.PbList<HelloErrorMsg> createRepeated() =>
      $pb.PbList<HelloErrorMsg>();
  @$core.pragma('dart2js:noInline')
  static HelloErrorMsg getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HelloErrorMsg>(create);
  static HelloErrorMsg? _defaultInstance;

  @$pb.TagNumber(1)
  Error get error => $_getN(0);
  @$pb.TagNumber(1)
  set error(Error v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  Error ensureError() => $_ensure(0);
}

enum RequestMsg_Request {
  openStream,
  closeStream,
  execute,
  batch,
  openCursor,
  closeCursor,
  fetchCursor,
  sequence,
  describe,
  storeSql,
  closeSql,
  getAutocommit,
  notSet
}

class RequestMsg extends $pb.GeneratedMessage {
  factory RequestMsg({
    $core.int? requestId,
    OpenStreamReq? openStream,
    CloseStreamReq? closeStream,
    ExecuteReq? execute,
    BatchReq? batch,
    OpenCursorReq? openCursor,
    CloseCursorReq? closeCursor,
    FetchCursorReq? fetchCursor,
    SequenceReq? sequence,
    DescribeReq? describe,
    StoreSqlReq? storeSql,
    CloseSqlReq? closeSql,
    GetAutocommitReq? getAutocommit,
  }) {
    final $result = create();
    if (requestId != null) {
      $result.requestId = requestId;
    }
    if (openStream != null) {
      $result.openStream = openStream;
    }
    if (closeStream != null) {
      $result.closeStream = closeStream;
    }
    if (execute != null) {
      $result.execute = execute;
    }
    if (batch != null) {
      $result.batch = batch;
    }
    if (openCursor != null) {
      $result.openCursor = openCursor;
    }
    if (closeCursor != null) {
      $result.closeCursor = closeCursor;
    }
    if (fetchCursor != null) {
      $result.fetchCursor = fetchCursor;
    }
    if (sequence != null) {
      $result.sequence = sequence;
    }
    if (describe != null) {
      $result.describe = describe;
    }
    if (storeSql != null) {
      $result.storeSql = storeSql;
    }
    if (closeSql != null) {
      $result.closeSql = closeSql;
    }
    if (getAutocommit != null) {
      $result.getAutocommit = getAutocommit;
    }
    return $result;
  }
  RequestMsg._() : super();
  factory RequestMsg.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RequestMsg.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, RequestMsg_Request>
      _RequestMsg_RequestByTag = {
    2: RequestMsg_Request.openStream,
    3: RequestMsg_Request.closeStream,
    4: RequestMsg_Request.execute,
    5: RequestMsg_Request.batch,
    6: RequestMsg_Request.openCursor,
    7: RequestMsg_Request.closeCursor,
    8: RequestMsg_Request.fetchCursor,
    9: RequestMsg_Request.sequence,
    10: RequestMsg_Request.describe,
    11: RequestMsg_Request.storeSql,
    12: RequestMsg_Request.closeSql,
    13: RequestMsg_Request.getAutocommit,
    0: RequestMsg_Request.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequestMsg',
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13])
    ..a<$core.int>(1, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.O3)
    ..aOM<OpenStreamReq>(2, _omitFieldNames ? '' : 'openStream',
        subBuilder: OpenStreamReq.create)
    ..aOM<CloseStreamReq>(3, _omitFieldNames ? '' : 'closeStream',
        subBuilder: CloseStreamReq.create)
    ..aOM<ExecuteReq>(4, _omitFieldNames ? '' : 'execute',
        subBuilder: ExecuteReq.create)
    ..aOM<BatchReq>(5, _omitFieldNames ? '' : 'batch',
        subBuilder: BatchReq.create)
    ..aOM<OpenCursorReq>(6, _omitFieldNames ? '' : 'openCursor',
        subBuilder: OpenCursorReq.create)
    ..aOM<CloseCursorReq>(7, _omitFieldNames ? '' : 'closeCursor',
        subBuilder: CloseCursorReq.create)
    ..aOM<FetchCursorReq>(8, _omitFieldNames ? '' : 'fetchCursor',
        subBuilder: FetchCursorReq.create)
    ..aOM<SequenceReq>(9, _omitFieldNames ? '' : 'sequence',
        subBuilder: SequenceReq.create)
    ..aOM<DescribeReq>(10, _omitFieldNames ? '' : 'describe',
        subBuilder: DescribeReq.create)
    ..aOM<StoreSqlReq>(11, _omitFieldNames ? '' : 'storeSql',
        subBuilder: StoreSqlReq.create)
    ..aOM<CloseSqlReq>(12, _omitFieldNames ? '' : 'closeSql',
        subBuilder: CloseSqlReq.create)
    ..aOM<GetAutocommitReq>(13, _omitFieldNames ? '' : 'getAutocommit',
        subBuilder: GetAutocommitReq.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RequestMsg clone() => RequestMsg()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RequestMsg copyWith(void Function(RequestMsg) updates) =>
      super.copyWith((message) => updates(message as RequestMsg)) as RequestMsg;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequestMsg create() => RequestMsg._();
  RequestMsg createEmptyInstance() => create();
  static $pb.PbList<RequestMsg> createRepeated() => $pb.PbList<RequestMsg>();
  @$core.pragma('dart2js:noInline')
  static RequestMsg getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequestMsg>(create);
  static RequestMsg? _defaultInstance;

  RequestMsg_Request whichRequest() =>
      _RequestMsg_RequestByTag[$_whichOneof(0)]!;
  void clearRequest() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.int get requestId => $_getIZ(0);
  @$pb.TagNumber(1)
  set requestId($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  OpenStreamReq get openStream => $_getN(1);
  @$pb.TagNumber(2)
  set openStream(OpenStreamReq v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOpenStream() => $_has(1);
  @$pb.TagNumber(2)
  void clearOpenStream() => clearField(2);
  @$pb.TagNumber(2)
  OpenStreamReq ensureOpenStream() => $_ensure(1);

  @$pb.TagNumber(3)
  CloseStreamReq get closeStream => $_getN(2);
  @$pb.TagNumber(3)
  set closeStream(CloseStreamReq v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCloseStream() => $_has(2);
  @$pb.TagNumber(3)
  void clearCloseStream() => clearField(3);
  @$pb.TagNumber(3)
  CloseStreamReq ensureCloseStream() => $_ensure(2);

  @$pb.TagNumber(4)
  ExecuteReq get execute => $_getN(3);
  @$pb.TagNumber(4)
  set execute(ExecuteReq v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasExecute() => $_has(3);
  @$pb.TagNumber(4)
  void clearExecute() => clearField(4);
  @$pb.TagNumber(4)
  ExecuteReq ensureExecute() => $_ensure(3);

  @$pb.TagNumber(5)
  BatchReq get batch => $_getN(4);
  @$pb.TagNumber(5)
  set batch(BatchReq v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasBatch() => $_has(4);
  @$pb.TagNumber(5)
  void clearBatch() => clearField(5);
  @$pb.TagNumber(5)
  BatchReq ensureBatch() => $_ensure(4);

  @$pb.TagNumber(6)
  OpenCursorReq get openCursor => $_getN(5);
  @$pb.TagNumber(6)
  set openCursor(OpenCursorReq v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasOpenCursor() => $_has(5);
  @$pb.TagNumber(6)
  void clearOpenCursor() => clearField(6);
  @$pb.TagNumber(6)
  OpenCursorReq ensureOpenCursor() => $_ensure(5);

  @$pb.TagNumber(7)
  CloseCursorReq get closeCursor => $_getN(6);
  @$pb.TagNumber(7)
  set closeCursor(CloseCursorReq v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasCloseCursor() => $_has(6);
  @$pb.TagNumber(7)
  void clearCloseCursor() => clearField(7);
  @$pb.TagNumber(7)
  CloseCursorReq ensureCloseCursor() => $_ensure(6);

  @$pb.TagNumber(8)
  FetchCursorReq get fetchCursor => $_getN(7);
  @$pb.TagNumber(8)
  set fetchCursor(FetchCursorReq v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasFetchCursor() => $_has(7);
  @$pb.TagNumber(8)
  void clearFetchCursor() => clearField(8);
  @$pb.TagNumber(8)
  FetchCursorReq ensureFetchCursor() => $_ensure(7);

  @$pb.TagNumber(9)
  SequenceReq get sequence => $_getN(8);
  @$pb.TagNumber(9)
  set sequence(SequenceReq v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasSequence() => $_has(8);
  @$pb.TagNumber(9)
  void clearSequence() => clearField(9);
  @$pb.TagNumber(9)
  SequenceReq ensureSequence() => $_ensure(8);

  @$pb.TagNumber(10)
  DescribeReq get describe => $_getN(9);
  @$pb.TagNumber(10)
  set describe(DescribeReq v) {
    setField(10, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasDescribe() => $_has(9);
  @$pb.TagNumber(10)
  void clearDescribe() => clearField(10);
  @$pb.TagNumber(10)
  DescribeReq ensureDescribe() => $_ensure(9);

  @$pb.TagNumber(11)
  StoreSqlReq get storeSql => $_getN(10);
  @$pb.TagNumber(11)
  set storeSql(StoreSqlReq v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasStoreSql() => $_has(10);
  @$pb.TagNumber(11)
  void clearStoreSql() => clearField(11);
  @$pb.TagNumber(11)
  StoreSqlReq ensureStoreSql() => $_ensure(10);

  @$pb.TagNumber(12)
  CloseSqlReq get closeSql => $_getN(11);
  @$pb.TagNumber(12)
  set closeSql(CloseSqlReq v) {
    setField(12, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasCloseSql() => $_has(11);
  @$pb.TagNumber(12)
  void clearCloseSql() => clearField(12);
  @$pb.TagNumber(12)
  CloseSqlReq ensureCloseSql() => $_ensure(11);

  @$pb.TagNumber(13)
  GetAutocommitReq get getAutocommit => $_getN(12);
  @$pb.TagNumber(13)
  set getAutocommit(GetAutocommitReq v) {
    setField(13, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasGetAutocommit() => $_has(12);
  @$pb.TagNumber(13)
  void clearGetAutocommit() => clearField(13);
  @$pb.TagNumber(13)
  GetAutocommitReq ensureGetAutocommit() => $_ensure(12);
}

enum ResponseOkMsg_Response {
  openStream,
  closeStream,
  execute,
  batch,
  openCursor,
  closeCursor,
  fetchCursor,
  sequence,
  describe,
  storeSql,
  closeSql,
  getAutocommit,
  notSet
}

class ResponseOkMsg extends $pb.GeneratedMessage {
  factory ResponseOkMsg({
    $core.int? requestId,
    OpenStreamResp? openStream,
    CloseStreamResp? closeStream,
    ExecuteResp? execute,
    BatchResp? batch,
    OpenCursorResp? openCursor,
    CloseCursorResp? closeCursor,
    FetchCursorResp? fetchCursor,
    SequenceResp? sequence,
    DescribeResp? describe,
    StoreSqlResp? storeSql,
    CloseSqlResp? closeSql,
    GetAutocommitResp? getAutocommit,
  }) {
    final $result = create();
    if (requestId != null) {
      $result.requestId = requestId;
    }
    if (openStream != null) {
      $result.openStream = openStream;
    }
    if (closeStream != null) {
      $result.closeStream = closeStream;
    }
    if (execute != null) {
      $result.execute = execute;
    }
    if (batch != null) {
      $result.batch = batch;
    }
    if (openCursor != null) {
      $result.openCursor = openCursor;
    }
    if (closeCursor != null) {
      $result.closeCursor = closeCursor;
    }
    if (fetchCursor != null) {
      $result.fetchCursor = fetchCursor;
    }
    if (sequence != null) {
      $result.sequence = sequence;
    }
    if (describe != null) {
      $result.describe = describe;
    }
    if (storeSql != null) {
      $result.storeSql = storeSql;
    }
    if (closeSql != null) {
      $result.closeSql = closeSql;
    }
    if (getAutocommit != null) {
      $result.getAutocommit = getAutocommit;
    }
    return $result;
  }
  ResponseOkMsg._() : super();
  factory ResponseOkMsg.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResponseOkMsg.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ResponseOkMsg_Response>
      _ResponseOkMsg_ResponseByTag = {
    2: ResponseOkMsg_Response.openStream,
    3: ResponseOkMsg_Response.closeStream,
    4: ResponseOkMsg_Response.execute,
    5: ResponseOkMsg_Response.batch,
    6: ResponseOkMsg_Response.openCursor,
    7: ResponseOkMsg_Response.closeCursor,
    8: ResponseOkMsg_Response.fetchCursor,
    9: ResponseOkMsg_Response.sequence,
    10: ResponseOkMsg_Response.describe,
    11: ResponseOkMsg_Response.storeSql,
    12: ResponseOkMsg_Response.closeSql,
    13: ResponseOkMsg_Response.getAutocommit,
    0: ResponseOkMsg_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResponseOkMsg',
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13])
    ..a<$core.int>(1, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.O3)
    ..aOM<OpenStreamResp>(2, _omitFieldNames ? '' : 'openStream',
        subBuilder: OpenStreamResp.create)
    ..aOM<CloseStreamResp>(3, _omitFieldNames ? '' : 'closeStream',
        subBuilder: CloseStreamResp.create)
    ..aOM<ExecuteResp>(4, _omitFieldNames ? '' : 'execute',
        subBuilder: ExecuteResp.create)
    ..aOM<BatchResp>(5, _omitFieldNames ? '' : 'batch',
        subBuilder: BatchResp.create)
    ..aOM<OpenCursorResp>(6, _omitFieldNames ? '' : 'openCursor',
        subBuilder: OpenCursorResp.create)
    ..aOM<CloseCursorResp>(7, _omitFieldNames ? '' : 'closeCursor',
        subBuilder: CloseCursorResp.create)
    ..aOM<FetchCursorResp>(8, _omitFieldNames ? '' : 'fetchCursor',
        subBuilder: FetchCursorResp.create)
    ..aOM<SequenceResp>(9, _omitFieldNames ? '' : 'sequence',
        subBuilder: SequenceResp.create)
    ..aOM<DescribeResp>(10, _omitFieldNames ? '' : 'describe',
        subBuilder: DescribeResp.create)
    ..aOM<StoreSqlResp>(11, _omitFieldNames ? '' : 'storeSql',
        subBuilder: StoreSqlResp.create)
    ..aOM<CloseSqlResp>(12, _omitFieldNames ? '' : 'closeSql',
        subBuilder: CloseSqlResp.create)
    ..aOM<GetAutocommitResp>(13, _omitFieldNames ? '' : 'getAutocommit',
        subBuilder: GetAutocommitResp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResponseOkMsg clone() => ResponseOkMsg()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResponseOkMsg copyWith(void Function(ResponseOkMsg) updates) =>
      super.copyWith((message) => updates(message as ResponseOkMsg))
          as ResponseOkMsg;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResponseOkMsg create() => ResponseOkMsg._();
  ResponseOkMsg createEmptyInstance() => create();
  static $pb.PbList<ResponseOkMsg> createRepeated() =>
      $pb.PbList<ResponseOkMsg>();
  @$core.pragma('dart2js:noInline')
  static ResponseOkMsg getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResponseOkMsg>(create);
  static ResponseOkMsg? _defaultInstance;

  ResponseOkMsg_Response whichResponse() =>
      _ResponseOkMsg_ResponseByTag[$_whichOneof(0)]!;
  void clearResponse() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.int get requestId => $_getIZ(0);
  @$pb.TagNumber(1)
  set requestId($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  OpenStreamResp get openStream => $_getN(1);
  @$pb.TagNumber(2)
  set openStream(OpenStreamResp v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOpenStream() => $_has(1);
  @$pb.TagNumber(2)
  void clearOpenStream() => clearField(2);
  @$pb.TagNumber(2)
  OpenStreamResp ensureOpenStream() => $_ensure(1);

  @$pb.TagNumber(3)
  CloseStreamResp get closeStream => $_getN(2);
  @$pb.TagNumber(3)
  set closeStream(CloseStreamResp v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCloseStream() => $_has(2);
  @$pb.TagNumber(3)
  void clearCloseStream() => clearField(3);
  @$pb.TagNumber(3)
  CloseStreamResp ensureCloseStream() => $_ensure(2);

  @$pb.TagNumber(4)
  ExecuteResp get execute => $_getN(3);
  @$pb.TagNumber(4)
  set execute(ExecuteResp v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasExecute() => $_has(3);
  @$pb.TagNumber(4)
  void clearExecute() => clearField(4);
  @$pb.TagNumber(4)
  ExecuteResp ensureExecute() => $_ensure(3);

  @$pb.TagNumber(5)
  BatchResp get batch => $_getN(4);
  @$pb.TagNumber(5)
  set batch(BatchResp v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasBatch() => $_has(4);
  @$pb.TagNumber(5)
  void clearBatch() => clearField(5);
  @$pb.TagNumber(5)
  BatchResp ensureBatch() => $_ensure(4);

  @$pb.TagNumber(6)
  OpenCursorResp get openCursor => $_getN(5);
  @$pb.TagNumber(6)
  set openCursor(OpenCursorResp v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasOpenCursor() => $_has(5);
  @$pb.TagNumber(6)
  void clearOpenCursor() => clearField(6);
  @$pb.TagNumber(6)
  OpenCursorResp ensureOpenCursor() => $_ensure(5);

  @$pb.TagNumber(7)
  CloseCursorResp get closeCursor => $_getN(6);
  @$pb.TagNumber(7)
  set closeCursor(CloseCursorResp v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasCloseCursor() => $_has(6);
  @$pb.TagNumber(7)
  void clearCloseCursor() => clearField(7);
  @$pb.TagNumber(7)
  CloseCursorResp ensureCloseCursor() => $_ensure(6);

  @$pb.TagNumber(8)
  FetchCursorResp get fetchCursor => $_getN(7);
  @$pb.TagNumber(8)
  set fetchCursor(FetchCursorResp v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasFetchCursor() => $_has(7);
  @$pb.TagNumber(8)
  void clearFetchCursor() => clearField(8);
  @$pb.TagNumber(8)
  FetchCursorResp ensureFetchCursor() => $_ensure(7);

  @$pb.TagNumber(9)
  SequenceResp get sequence => $_getN(8);
  @$pb.TagNumber(9)
  set sequence(SequenceResp v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasSequence() => $_has(8);
  @$pb.TagNumber(9)
  void clearSequence() => clearField(9);
  @$pb.TagNumber(9)
  SequenceResp ensureSequence() => $_ensure(8);

  @$pb.TagNumber(10)
  DescribeResp get describe => $_getN(9);
  @$pb.TagNumber(10)
  set describe(DescribeResp v) {
    setField(10, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasDescribe() => $_has(9);
  @$pb.TagNumber(10)
  void clearDescribe() => clearField(10);
  @$pb.TagNumber(10)
  DescribeResp ensureDescribe() => $_ensure(9);

  @$pb.TagNumber(11)
  StoreSqlResp get storeSql => $_getN(10);
  @$pb.TagNumber(11)
  set storeSql(StoreSqlResp v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasStoreSql() => $_has(10);
  @$pb.TagNumber(11)
  void clearStoreSql() => clearField(11);
  @$pb.TagNumber(11)
  StoreSqlResp ensureStoreSql() => $_ensure(10);

  @$pb.TagNumber(12)
  CloseSqlResp get closeSql => $_getN(11);
  @$pb.TagNumber(12)
  set closeSql(CloseSqlResp v) {
    setField(12, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasCloseSql() => $_has(11);
  @$pb.TagNumber(12)
  void clearCloseSql() => clearField(12);
  @$pb.TagNumber(12)
  CloseSqlResp ensureCloseSql() => $_ensure(11);

  @$pb.TagNumber(13)
  GetAutocommitResp get getAutocommit => $_getN(12);
  @$pb.TagNumber(13)
  set getAutocommit(GetAutocommitResp v) {
    setField(13, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasGetAutocommit() => $_has(12);
  @$pb.TagNumber(13)
  void clearGetAutocommit() => clearField(13);
  @$pb.TagNumber(13)
  GetAutocommitResp ensureGetAutocommit() => $_ensure(12);
}

class ResponseErrorMsg extends $pb.GeneratedMessage {
  factory ResponseErrorMsg({
    $core.int? requestId,
    Error? error,
  }) {
    final $result = create();
    if (requestId != null) {
      $result.requestId = requestId;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  ResponseErrorMsg._() : super();
  factory ResponseErrorMsg.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResponseErrorMsg.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResponseErrorMsg',
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.O3)
    ..aOM<Error>(2, _omitFieldNames ? '' : 'error', subBuilder: Error.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResponseErrorMsg clone() => ResponseErrorMsg()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResponseErrorMsg copyWith(void Function(ResponseErrorMsg) updates) =>
      super.copyWith((message) => updates(message as ResponseErrorMsg))
          as ResponseErrorMsg;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResponseErrorMsg create() => ResponseErrorMsg._();
  ResponseErrorMsg createEmptyInstance() => create();
  static $pb.PbList<ResponseErrorMsg> createRepeated() =>
      $pb.PbList<ResponseErrorMsg>();
  @$core.pragma('dart2js:noInline')
  static ResponseErrorMsg getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResponseErrorMsg>(create);
  static ResponseErrorMsg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get requestId => $_getIZ(0);
  @$pb.TagNumber(1)
  set requestId($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  Error get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(Error v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  Error ensureError() => $_ensure(1);
}

class OpenStreamReq extends $pb.GeneratedMessage {
  factory OpenStreamReq({
    $core.int? streamId,
  }) {
    final $result = create();
    if (streamId != null) {
      $result.streamId = streamId;
    }
    return $result;
  }
  OpenStreamReq._() : super();
  factory OpenStreamReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OpenStreamReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OpenStreamReq',
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'streamId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  OpenStreamReq clone() => OpenStreamReq()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  OpenStreamReq copyWith(void Function(OpenStreamReq) updates) =>
      super.copyWith((message) => updates(message as OpenStreamReq))
          as OpenStreamReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OpenStreamReq create() => OpenStreamReq._();
  OpenStreamReq createEmptyInstance() => create();
  static $pb.PbList<OpenStreamReq> createRepeated() =>
      $pb.PbList<OpenStreamReq>();
  @$core.pragma('dart2js:noInline')
  static OpenStreamReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OpenStreamReq>(create);
  static OpenStreamReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get streamId => $_getIZ(0);
  @$pb.TagNumber(1)
  set streamId($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStreamId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStreamId() => clearField(1);
}

class OpenStreamResp extends $pb.GeneratedMessage {
  factory OpenStreamResp() => create();
  OpenStreamResp._() : super();
  factory OpenStreamResp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OpenStreamResp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OpenStreamResp',
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  OpenStreamResp clone() => OpenStreamResp()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  OpenStreamResp copyWith(void Function(OpenStreamResp) updates) =>
      super.copyWith((message) => updates(message as OpenStreamResp))
          as OpenStreamResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OpenStreamResp create() => OpenStreamResp._();
  OpenStreamResp createEmptyInstance() => create();
  static $pb.PbList<OpenStreamResp> createRepeated() =>
      $pb.PbList<OpenStreamResp>();
  @$core.pragma('dart2js:noInline')
  static OpenStreamResp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OpenStreamResp>(create);
  static OpenStreamResp? _defaultInstance;
}

class CloseStreamReq extends $pb.GeneratedMessage {
  factory CloseStreamReq({
    $core.int? streamId,
  }) {
    final $result = create();
    if (streamId != null) {
      $result.streamId = streamId;
    }
    return $result;
  }
  CloseStreamReq._() : super();
  factory CloseStreamReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CloseStreamReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CloseStreamReq',
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'streamId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CloseStreamReq clone() => CloseStreamReq()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CloseStreamReq copyWith(void Function(CloseStreamReq) updates) =>
      super.copyWith((message) => updates(message as CloseStreamReq))
          as CloseStreamReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CloseStreamReq create() => CloseStreamReq._();
  CloseStreamReq createEmptyInstance() => create();
  static $pb.PbList<CloseStreamReq> createRepeated() =>
      $pb.PbList<CloseStreamReq>();
  @$core.pragma('dart2js:noInline')
  static CloseStreamReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CloseStreamReq>(create);
  static CloseStreamReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get streamId => $_getIZ(0);
  @$pb.TagNumber(1)
  set streamId($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStreamId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStreamId() => clearField(1);
}

class CloseStreamResp extends $pb.GeneratedMessage {
  factory CloseStreamResp() => create();
  CloseStreamResp._() : super();
  factory CloseStreamResp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CloseStreamResp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CloseStreamResp',
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CloseStreamResp clone() => CloseStreamResp()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CloseStreamResp copyWith(void Function(CloseStreamResp) updates) =>
      super.copyWith((message) => updates(message as CloseStreamResp))
          as CloseStreamResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CloseStreamResp create() => CloseStreamResp._();
  CloseStreamResp createEmptyInstance() => create();
  static $pb.PbList<CloseStreamResp> createRepeated() =>
      $pb.PbList<CloseStreamResp>();
  @$core.pragma('dart2js:noInline')
  static CloseStreamResp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CloseStreamResp>(create);
  static CloseStreamResp? _defaultInstance;
}

class ExecuteReq extends $pb.GeneratedMessage {
  factory ExecuteReq({
    $core.int? streamId,
    Stmt? stmt,
  }) {
    final $result = create();
    if (streamId != null) {
      $result.streamId = streamId;
    }
    if (stmt != null) {
      $result.stmt = stmt;
    }
    return $result;
  }
  ExecuteReq._() : super();
  factory ExecuteReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ExecuteReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExecuteReq',
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'streamId', $pb.PbFieldType.O3)
    ..aOM<Stmt>(2, _omitFieldNames ? '' : 'stmt', subBuilder: Stmt.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ExecuteReq clone() => ExecuteReq()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ExecuteReq copyWith(void Function(ExecuteReq) updates) =>
      super.copyWith((message) => updates(message as ExecuteReq)) as ExecuteReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExecuteReq create() => ExecuteReq._();
  ExecuteReq createEmptyInstance() => create();
  static $pb.PbList<ExecuteReq> createRepeated() => $pb.PbList<ExecuteReq>();
  @$core.pragma('dart2js:noInline')
  static ExecuteReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExecuteReq>(create);
  static ExecuteReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get streamId => $_getIZ(0);
  @$pb.TagNumber(1)
  set streamId($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStreamId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStreamId() => clearField(1);

  @$pb.TagNumber(2)
  Stmt get stmt => $_getN(1);
  @$pb.TagNumber(2)
  set stmt(Stmt v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStmt() => $_has(1);
  @$pb.TagNumber(2)
  void clearStmt() => clearField(2);
  @$pb.TagNumber(2)
  Stmt ensureStmt() => $_ensure(1);
}

class ExecuteResp extends $pb.GeneratedMessage {
  factory ExecuteResp({
    StmtResult? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  ExecuteResp._() : super();
  factory ExecuteResp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ExecuteResp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExecuteResp',
      createEmptyInstance: create)
    ..aOM<StmtResult>(1, _omitFieldNames ? '' : 'result',
        subBuilder: StmtResult.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ExecuteResp clone() => ExecuteResp()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ExecuteResp copyWith(void Function(ExecuteResp) updates) =>
      super.copyWith((message) => updates(message as ExecuteResp))
          as ExecuteResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExecuteResp create() => ExecuteResp._();
  ExecuteResp createEmptyInstance() => create();
  static $pb.PbList<ExecuteResp> createRepeated() => $pb.PbList<ExecuteResp>();
  @$core.pragma('dart2js:noInline')
  static ExecuteResp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExecuteResp>(create);
  static ExecuteResp? _defaultInstance;

  @$pb.TagNumber(1)
  StmtResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(StmtResult v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  StmtResult ensureResult() => $_ensure(0);
}

class BatchReq extends $pb.GeneratedMessage {
  factory BatchReq({
    $core.int? streamId,
    Batch? batch,
  }) {
    final $result = create();
    if (streamId != null) {
      $result.streamId = streamId;
    }
    if (batch != null) {
      $result.batch = batch;
    }
    return $result;
  }
  BatchReq._() : super();
  factory BatchReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BatchReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BatchReq',
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'streamId', $pb.PbFieldType.O3)
    ..aOM<Batch>(2, _omitFieldNames ? '' : 'batch', subBuilder: Batch.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BatchReq clone() => BatchReq()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BatchReq copyWith(void Function(BatchReq) updates) =>
      super.copyWith((message) => updates(message as BatchReq)) as BatchReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchReq create() => BatchReq._();
  BatchReq createEmptyInstance() => create();
  static $pb.PbList<BatchReq> createRepeated() => $pb.PbList<BatchReq>();
  @$core.pragma('dart2js:noInline')
  static BatchReq getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BatchReq>(create);
  static BatchReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get streamId => $_getIZ(0);
  @$pb.TagNumber(1)
  set streamId($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStreamId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStreamId() => clearField(1);

  @$pb.TagNumber(2)
  Batch get batch => $_getN(1);
  @$pb.TagNumber(2)
  set batch(Batch v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasBatch() => $_has(1);
  @$pb.TagNumber(2)
  void clearBatch() => clearField(2);
  @$pb.TagNumber(2)
  Batch ensureBatch() => $_ensure(1);
}

class BatchResp extends $pb.GeneratedMessage {
  factory BatchResp({
    BatchResult? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  BatchResp._() : super();
  factory BatchResp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BatchResp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BatchResp',
      createEmptyInstance: create)
    ..aOM<BatchResult>(1, _omitFieldNames ? '' : 'result',
        subBuilder: BatchResult.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BatchResp clone() => BatchResp()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BatchResp copyWith(void Function(BatchResp) updates) =>
      super.copyWith((message) => updates(message as BatchResp)) as BatchResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchResp create() => BatchResp._();
  BatchResp createEmptyInstance() => create();
  static $pb.PbList<BatchResp> createRepeated() => $pb.PbList<BatchResp>();
  @$core.pragma('dart2js:noInline')
  static BatchResp getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BatchResp>(create);
  static BatchResp? _defaultInstance;

  @$pb.TagNumber(1)
  BatchResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(BatchResult v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  BatchResult ensureResult() => $_ensure(0);
}

class OpenCursorReq extends $pb.GeneratedMessage {
  factory OpenCursorReq({
    $core.int? streamId,
    $core.int? cursorId,
    Batch? batch,
  }) {
    final $result = create();
    if (streamId != null) {
      $result.streamId = streamId;
    }
    if (cursorId != null) {
      $result.cursorId = cursorId;
    }
    if (batch != null) {
      $result.batch = batch;
    }
    return $result;
  }
  OpenCursorReq._() : super();
  factory OpenCursorReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OpenCursorReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OpenCursorReq',
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'streamId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'cursorId', $pb.PbFieldType.O3)
    ..aOM<Batch>(3, _omitFieldNames ? '' : 'batch', subBuilder: Batch.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  OpenCursorReq clone() => OpenCursorReq()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  OpenCursorReq copyWith(void Function(OpenCursorReq) updates) =>
      super.copyWith((message) => updates(message as OpenCursorReq))
          as OpenCursorReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OpenCursorReq create() => OpenCursorReq._();
  OpenCursorReq createEmptyInstance() => create();
  static $pb.PbList<OpenCursorReq> createRepeated() =>
      $pb.PbList<OpenCursorReq>();
  @$core.pragma('dart2js:noInline')
  static OpenCursorReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OpenCursorReq>(create);
  static OpenCursorReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get streamId => $_getIZ(0);
  @$pb.TagNumber(1)
  set streamId($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStreamId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStreamId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get cursorId => $_getIZ(1);
  @$pb.TagNumber(2)
  set cursorId($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCursorId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCursorId() => clearField(2);

  @$pb.TagNumber(3)
  Batch get batch => $_getN(2);
  @$pb.TagNumber(3)
  set batch(Batch v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasBatch() => $_has(2);
  @$pb.TagNumber(3)
  void clearBatch() => clearField(3);
  @$pb.TagNumber(3)
  Batch ensureBatch() => $_ensure(2);
}

class OpenCursorResp extends $pb.GeneratedMessage {
  factory OpenCursorResp() => create();
  OpenCursorResp._() : super();
  factory OpenCursorResp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OpenCursorResp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OpenCursorResp',
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  OpenCursorResp clone() => OpenCursorResp()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  OpenCursorResp copyWith(void Function(OpenCursorResp) updates) =>
      super.copyWith((message) => updates(message as OpenCursorResp))
          as OpenCursorResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OpenCursorResp create() => OpenCursorResp._();
  OpenCursorResp createEmptyInstance() => create();
  static $pb.PbList<OpenCursorResp> createRepeated() =>
      $pb.PbList<OpenCursorResp>();
  @$core.pragma('dart2js:noInline')
  static OpenCursorResp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OpenCursorResp>(create);
  static OpenCursorResp? _defaultInstance;
}

class CloseCursorReq extends $pb.GeneratedMessage {
  factory CloseCursorReq({
    $core.int? cursorId,
  }) {
    final $result = create();
    if (cursorId != null) {
      $result.cursorId = cursorId;
    }
    return $result;
  }
  CloseCursorReq._() : super();
  factory CloseCursorReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CloseCursorReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CloseCursorReq',
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'cursorId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CloseCursorReq clone() => CloseCursorReq()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CloseCursorReq copyWith(void Function(CloseCursorReq) updates) =>
      super.copyWith((message) => updates(message as CloseCursorReq))
          as CloseCursorReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CloseCursorReq create() => CloseCursorReq._();
  CloseCursorReq createEmptyInstance() => create();
  static $pb.PbList<CloseCursorReq> createRepeated() =>
      $pb.PbList<CloseCursorReq>();
  @$core.pragma('dart2js:noInline')
  static CloseCursorReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CloseCursorReq>(create);
  static CloseCursorReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get cursorId => $_getIZ(0);
  @$pb.TagNumber(1)
  set cursorId($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCursorId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCursorId() => clearField(1);
}

class CloseCursorResp extends $pb.GeneratedMessage {
  factory CloseCursorResp() => create();
  CloseCursorResp._() : super();
  factory CloseCursorResp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CloseCursorResp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CloseCursorResp',
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CloseCursorResp clone() => CloseCursorResp()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CloseCursorResp copyWith(void Function(CloseCursorResp) updates) =>
      super.copyWith((message) => updates(message as CloseCursorResp))
          as CloseCursorResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CloseCursorResp create() => CloseCursorResp._();
  CloseCursorResp createEmptyInstance() => create();
  static $pb.PbList<CloseCursorResp> createRepeated() =>
      $pb.PbList<CloseCursorResp>();
  @$core.pragma('dart2js:noInline')
  static CloseCursorResp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CloseCursorResp>(create);
  static CloseCursorResp? _defaultInstance;
}

class FetchCursorReq extends $pb.GeneratedMessage {
  factory FetchCursorReq({
    $core.int? cursorId,
    $core.int? maxCount,
  }) {
    final $result = create();
    if (cursorId != null) {
      $result.cursorId = cursorId;
    }
    if (maxCount != null) {
      $result.maxCount = maxCount;
    }
    return $result;
  }
  FetchCursorReq._() : super();
  factory FetchCursorReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FetchCursorReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FetchCursorReq',
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'cursorId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'maxCount', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FetchCursorReq clone() => FetchCursorReq()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FetchCursorReq copyWith(void Function(FetchCursorReq) updates) =>
      super.copyWith((message) => updates(message as FetchCursorReq))
          as FetchCursorReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchCursorReq create() => FetchCursorReq._();
  FetchCursorReq createEmptyInstance() => create();
  static $pb.PbList<FetchCursorReq> createRepeated() =>
      $pb.PbList<FetchCursorReq>();
  @$core.pragma('dart2js:noInline')
  static FetchCursorReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FetchCursorReq>(create);
  static FetchCursorReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get cursorId => $_getIZ(0);
  @$pb.TagNumber(1)
  set cursorId($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCursorId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCursorId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get maxCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set maxCount($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMaxCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxCount() => clearField(2);
}

class FetchCursorResp extends $pb.GeneratedMessage {
  factory FetchCursorResp({
    $core.Iterable<CursorEntry>? entries,
    $core.bool? done,
  }) {
    final $result = create();
    if (entries != null) {
      $result.entries.addAll(entries);
    }
    if (done != null) {
      $result.done = done;
    }
    return $result;
  }
  FetchCursorResp._() : super();
  factory FetchCursorResp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FetchCursorResp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FetchCursorResp',
      createEmptyInstance: create)
    ..pc<CursorEntry>(1, _omitFieldNames ? '' : 'entries', $pb.PbFieldType.PM,
        subBuilder: CursorEntry.create)
    ..aOB(2, _omitFieldNames ? '' : 'done')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FetchCursorResp clone() => FetchCursorResp()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FetchCursorResp copyWith(void Function(FetchCursorResp) updates) =>
      super.copyWith((message) => updates(message as FetchCursorResp))
          as FetchCursorResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchCursorResp create() => FetchCursorResp._();
  FetchCursorResp createEmptyInstance() => create();
  static $pb.PbList<FetchCursorResp> createRepeated() =>
      $pb.PbList<FetchCursorResp>();
  @$core.pragma('dart2js:noInline')
  static FetchCursorResp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FetchCursorResp>(create);
  static FetchCursorResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CursorEntry> get entries => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get done => $_getBF(1);
  @$pb.TagNumber(2)
  set done($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDone() => $_has(1);
  @$pb.TagNumber(2)
  void clearDone() => clearField(2);
}

class StoreSqlReq extends $pb.GeneratedMessage {
  factory StoreSqlReq({
    $core.int? sqlId,
    $core.String? sql,
  }) {
    final $result = create();
    if (sqlId != null) {
      $result.sqlId = sqlId;
    }
    if (sql != null) {
      $result.sql = sql;
    }
    return $result;
  }
  StoreSqlReq._() : super();
  factory StoreSqlReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StoreSqlReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StoreSqlReq',
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sqlId', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'sql')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StoreSqlReq clone() => StoreSqlReq()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StoreSqlReq copyWith(void Function(StoreSqlReq) updates) =>
      super.copyWith((message) => updates(message as StoreSqlReq))
          as StoreSqlReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StoreSqlReq create() => StoreSqlReq._();
  StoreSqlReq createEmptyInstance() => create();
  static $pb.PbList<StoreSqlReq> createRepeated() => $pb.PbList<StoreSqlReq>();
  @$core.pragma('dart2js:noInline')
  static StoreSqlReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StoreSqlReq>(create);
  static StoreSqlReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sqlId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sqlId($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSqlId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSqlId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get sql => $_getSZ(1);
  @$pb.TagNumber(2)
  set sql($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSql() => $_has(1);
  @$pb.TagNumber(2)
  void clearSql() => clearField(2);
}

class StoreSqlResp extends $pb.GeneratedMessage {
  factory StoreSqlResp() => create();
  StoreSqlResp._() : super();
  factory StoreSqlResp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StoreSqlResp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StoreSqlResp',
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StoreSqlResp clone() => StoreSqlResp()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StoreSqlResp copyWith(void Function(StoreSqlResp) updates) =>
      super.copyWith((message) => updates(message as StoreSqlResp))
          as StoreSqlResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StoreSqlResp create() => StoreSqlResp._();
  StoreSqlResp createEmptyInstance() => create();
  static $pb.PbList<StoreSqlResp> createRepeated() =>
      $pb.PbList<StoreSqlResp>();
  @$core.pragma('dart2js:noInline')
  static StoreSqlResp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StoreSqlResp>(create);
  static StoreSqlResp? _defaultInstance;
}

class CloseSqlReq extends $pb.GeneratedMessage {
  factory CloseSqlReq({
    $core.int? sqlId,
  }) {
    final $result = create();
    if (sqlId != null) {
      $result.sqlId = sqlId;
    }
    return $result;
  }
  CloseSqlReq._() : super();
  factory CloseSqlReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CloseSqlReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CloseSqlReq',
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sqlId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CloseSqlReq clone() => CloseSqlReq()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CloseSqlReq copyWith(void Function(CloseSqlReq) updates) =>
      super.copyWith((message) => updates(message as CloseSqlReq))
          as CloseSqlReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CloseSqlReq create() => CloseSqlReq._();
  CloseSqlReq createEmptyInstance() => create();
  static $pb.PbList<CloseSqlReq> createRepeated() => $pb.PbList<CloseSqlReq>();
  @$core.pragma('dart2js:noInline')
  static CloseSqlReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CloseSqlReq>(create);
  static CloseSqlReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sqlId => $_getIZ(0);
  @$pb.TagNumber(1)
  set sqlId($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSqlId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSqlId() => clearField(1);
}

class CloseSqlResp extends $pb.GeneratedMessage {
  factory CloseSqlResp() => create();
  CloseSqlResp._() : super();
  factory CloseSqlResp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CloseSqlResp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CloseSqlResp',
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CloseSqlResp clone() => CloseSqlResp()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CloseSqlResp copyWith(void Function(CloseSqlResp) updates) =>
      super.copyWith((message) => updates(message as CloseSqlResp))
          as CloseSqlResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CloseSqlResp create() => CloseSqlResp._();
  CloseSqlResp createEmptyInstance() => create();
  static $pb.PbList<CloseSqlResp> createRepeated() =>
      $pb.PbList<CloseSqlResp>();
  @$core.pragma('dart2js:noInline')
  static CloseSqlResp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CloseSqlResp>(create);
  static CloseSqlResp? _defaultInstance;
}

class SequenceReq extends $pb.GeneratedMessage {
  factory SequenceReq({
    $core.int? streamId,
    $core.String? sql,
    $core.int? sqlId,
  }) {
    final $result = create();
    if (streamId != null) {
      $result.streamId = streamId;
    }
    if (sql != null) {
      $result.sql = sql;
    }
    if (sqlId != null) {
      $result.sqlId = sqlId;
    }
    return $result;
  }
  SequenceReq._() : super();
  factory SequenceReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SequenceReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SequenceReq',
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'streamId', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'sql')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'sqlId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SequenceReq clone() => SequenceReq()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SequenceReq copyWith(void Function(SequenceReq) updates) =>
      super.copyWith((message) => updates(message as SequenceReq))
          as SequenceReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SequenceReq create() => SequenceReq._();
  SequenceReq createEmptyInstance() => create();
  static $pb.PbList<SequenceReq> createRepeated() => $pb.PbList<SequenceReq>();
  @$core.pragma('dart2js:noInline')
  static SequenceReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SequenceReq>(create);
  static SequenceReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get streamId => $_getIZ(0);
  @$pb.TagNumber(1)
  set streamId($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStreamId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStreamId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get sql => $_getSZ(1);
  @$pb.TagNumber(2)
  set sql($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSql() => $_has(1);
  @$pb.TagNumber(2)
  void clearSql() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get sqlId => $_getIZ(2);
  @$pb.TagNumber(3)
  set sqlId($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSqlId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSqlId() => clearField(3);
}

class SequenceResp extends $pb.GeneratedMessage {
  factory SequenceResp() => create();
  SequenceResp._() : super();
  factory SequenceResp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SequenceResp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SequenceResp',
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SequenceResp clone() => SequenceResp()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SequenceResp copyWith(void Function(SequenceResp) updates) =>
      super.copyWith((message) => updates(message as SequenceResp))
          as SequenceResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SequenceResp create() => SequenceResp._();
  SequenceResp createEmptyInstance() => create();
  static $pb.PbList<SequenceResp> createRepeated() =>
      $pb.PbList<SequenceResp>();
  @$core.pragma('dart2js:noInline')
  static SequenceResp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SequenceResp>(create);
  static SequenceResp? _defaultInstance;
}

class DescribeReq extends $pb.GeneratedMessage {
  factory DescribeReq({
    $core.int? streamId,
    $core.String? sql,
    $core.int? sqlId,
  }) {
    final $result = create();
    if (streamId != null) {
      $result.streamId = streamId;
    }
    if (sql != null) {
      $result.sql = sql;
    }
    if (sqlId != null) {
      $result.sqlId = sqlId;
    }
    return $result;
  }
  DescribeReq._() : super();
  factory DescribeReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DescribeReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DescribeReq',
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'streamId', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'sql')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'sqlId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DescribeReq clone() => DescribeReq()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DescribeReq copyWith(void Function(DescribeReq) updates) =>
      super.copyWith((message) => updates(message as DescribeReq))
          as DescribeReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DescribeReq create() => DescribeReq._();
  DescribeReq createEmptyInstance() => create();
  static $pb.PbList<DescribeReq> createRepeated() => $pb.PbList<DescribeReq>();
  @$core.pragma('dart2js:noInline')
  static DescribeReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DescribeReq>(create);
  static DescribeReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get streamId => $_getIZ(0);
  @$pb.TagNumber(1)
  set streamId($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStreamId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStreamId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get sql => $_getSZ(1);
  @$pb.TagNumber(2)
  set sql($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSql() => $_has(1);
  @$pb.TagNumber(2)
  void clearSql() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get sqlId => $_getIZ(2);
  @$pb.TagNumber(3)
  set sqlId($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSqlId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSqlId() => clearField(3);
}

class DescribeResp extends $pb.GeneratedMessage {
  factory DescribeResp({
    DescribeResult? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  DescribeResp._() : super();
  factory DescribeResp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DescribeResp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DescribeResp',
      createEmptyInstance: create)
    ..aOM<DescribeResult>(1, _omitFieldNames ? '' : 'result',
        subBuilder: DescribeResult.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DescribeResp clone() => DescribeResp()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DescribeResp copyWith(void Function(DescribeResp) updates) =>
      super.copyWith((message) => updates(message as DescribeResp))
          as DescribeResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DescribeResp create() => DescribeResp._();
  DescribeResp createEmptyInstance() => create();
  static $pb.PbList<DescribeResp> createRepeated() =>
      $pb.PbList<DescribeResp>();
  @$core.pragma('dart2js:noInline')
  static DescribeResp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DescribeResp>(create);
  static DescribeResp? _defaultInstance;

  @$pb.TagNumber(1)
  DescribeResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(DescribeResult v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  DescribeResult ensureResult() => $_ensure(0);
}

class GetAutocommitReq extends $pb.GeneratedMessage {
  factory GetAutocommitReq({
    $core.int? streamId,
  }) {
    final $result = create();
    if (streamId != null) {
      $result.streamId = streamId;
    }
    return $result;
  }
  GetAutocommitReq._() : super();
  factory GetAutocommitReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetAutocommitReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetAutocommitReq',
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'streamId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetAutocommitReq clone() => GetAutocommitReq()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetAutocommitReq copyWith(void Function(GetAutocommitReq) updates) =>
      super.copyWith((message) => updates(message as GetAutocommitReq))
          as GetAutocommitReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAutocommitReq create() => GetAutocommitReq._();
  GetAutocommitReq createEmptyInstance() => create();
  static $pb.PbList<GetAutocommitReq> createRepeated() =>
      $pb.PbList<GetAutocommitReq>();
  @$core.pragma('dart2js:noInline')
  static GetAutocommitReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetAutocommitReq>(create);
  static GetAutocommitReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get streamId => $_getIZ(0);
  @$pb.TagNumber(1)
  set streamId($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStreamId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStreamId() => clearField(1);
}

class GetAutocommitResp extends $pb.GeneratedMessage {
  factory GetAutocommitResp({
    $core.bool? isAutocommit,
  }) {
    final $result = create();
    if (isAutocommit != null) {
      $result.isAutocommit = isAutocommit;
    }
    return $result;
  }
  GetAutocommitResp._() : super();
  factory GetAutocommitResp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetAutocommitResp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetAutocommitResp',
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isAutocommit')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetAutocommitResp clone() => GetAutocommitResp()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetAutocommitResp copyWith(void Function(GetAutocommitResp) updates) =>
      super.copyWith((message) => updates(message as GetAutocommitResp))
          as GetAutocommitResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAutocommitResp create() => GetAutocommitResp._();
  GetAutocommitResp createEmptyInstance() => create();
  static $pb.PbList<GetAutocommitResp> createRepeated() =>
      $pb.PbList<GetAutocommitResp>();
  @$core.pragma('dart2js:noInline')
  static GetAutocommitResp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetAutocommitResp>(create);
  static GetAutocommitResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isAutocommit => $_getBF(0);
  @$pb.TagNumber(1)
  set isAutocommit($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIsAutocommit() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsAutocommit() => clearField(1);
}

class PipelineReq extends $pb.GeneratedMessage {
  factory PipelineReq({
    $core.String? baton,
    $core.Iterable<StreamRequest>? requests,
  }) {
    final $result = create();
    if (baton != null) {
      $result.baton = baton;
    }
    if (requests != null) {
      $result.requests.addAll(requests);
    }
    return $result;
  }
  PipelineReq._() : super();
  factory PipelineReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PipelineReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PipelineReq',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'baton')
    ..pc<StreamRequest>(
        2, _omitFieldNames ? '' : 'requests', $pb.PbFieldType.PM,
        subBuilder: StreamRequest.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PipelineReq clone() => PipelineReq()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PipelineReq copyWith(void Function(PipelineReq) updates) =>
      super.copyWith((message) => updates(message as PipelineReq))
          as PipelineReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PipelineReq create() => PipelineReq._();
  PipelineReq createEmptyInstance() => create();
  static $pb.PbList<PipelineReq> createRepeated() => $pb.PbList<PipelineReq>();
  @$core.pragma('dart2js:noInline')
  static PipelineReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PipelineReq>(create);
  static PipelineReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get baton => $_getSZ(0);
  @$pb.TagNumber(1)
  set baton($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBaton() => $_has(0);
  @$pb.TagNumber(1)
  void clearBaton() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<StreamRequest> get requests => $_getList(1);
}

enum StreamRequest_Request {
  close,
  execute,
  batch,
  sequence,
  describe,
  storeSql,
  closeSql,
  getAutocommit,
  notSet
}

class StreamRequest extends $pb.GeneratedMessage {
  factory StreamRequest({
    CloseStreamReq? close,
    ExecuteStreamReq? execute,
    BatchStreamReq? batch,
    SequenceStreamReq? sequence,
    DescribeStreamReq? describe,
    StoreSqlReq? storeSql,
    CloseSqlReq? closeSql,
    GetAutocommitReq? getAutocommit,
  }) {
    final $result = create();
    if (close != null) {
      $result.close = close;
    }
    if (execute != null) {
      $result.execute = execute;
    }
    if (batch != null) {
      $result.batch = batch;
    }
    if (sequence != null) {
      $result.sequence = sequence;
    }
    if (describe != null) {
      $result.describe = describe;
    }
    if (storeSql != null) {
      $result.storeSql = storeSql;
    }
    if (closeSql != null) {
      $result.closeSql = closeSql;
    }
    if (getAutocommit != null) {
      $result.getAutocommit = getAutocommit;
    }
    return $result;
  }
  StreamRequest._() : super();
  factory StreamRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StreamRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, StreamRequest_Request>
      _StreamRequest_RequestByTag = {
    1: StreamRequest_Request.close,
    2: StreamRequest_Request.execute,
    3: StreamRequest_Request.batch,
    4: StreamRequest_Request.sequence,
    5: StreamRequest_Request.describe,
    6: StreamRequest_Request.storeSql,
    7: StreamRequest_Request.closeSql,
    8: StreamRequest_Request.getAutocommit,
    0: StreamRequest_Request.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamRequest',
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8])
    ..aOM<CloseStreamReq>(1, _omitFieldNames ? '' : 'close',
        subBuilder: CloseStreamReq.create)
    ..aOM<ExecuteStreamReq>(2, _omitFieldNames ? '' : 'execute',
        subBuilder: ExecuteStreamReq.create)
    ..aOM<BatchStreamReq>(3, _omitFieldNames ? '' : 'batch',
        subBuilder: BatchStreamReq.create)
    ..aOM<SequenceStreamReq>(4, _omitFieldNames ? '' : 'sequence',
        subBuilder: SequenceStreamReq.create)
    ..aOM<DescribeStreamReq>(5, _omitFieldNames ? '' : 'describe',
        subBuilder: DescribeStreamReq.create)
    ..aOM<StoreSqlReq>(6, _omitFieldNames ? '' : 'storeSql',
        subBuilder: StoreSqlReq.create)
    ..aOM<CloseSqlReq>(7, _omitFieldNames ? '' : 'closeSql',
        subBuilder: CloseSqlReq.create)
    ..aOM<GetAutocommitReq>(8, _omitFieldNames ? '' : 'getAutocommit',
        subBuilder: GetAutocommitReq.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StreamRequest clone() => StreamRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StreamRequest copyWith(void Function(StreamRequest) updates) =>
      super.copyWith((message) => updates(message as StreamRequest))
          as StreamRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamRequest create() => StreamRequest._();
  StreamRequest createEmptyInstance() => create();
  static $pb.PbList<StreamRequest> createRepeated() =>
      $pb.PbList<StreamRequest>();
  @$core.pragma('dart2js:noInline')
  static StreamRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamRequest>(create);
  static StreamRequest? _defaultInstance;

  StreamRequest_Request whichRequest() =>
      _StreamRequest_RequestByTag[$_whichOneof(0)]!;
  void clearRequest() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  CloseStreamReq get close => $_getN(0);
  @$pb.TagNumber(1)
  set close(CloseStreamReq v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasClose() => $_has(0);
  @$pb.TagNumber(1)
  void clearClose() => clearField(1);
  @$pb.TagNumber(1)
  CloseStreamReq ensureClose() => $_ensure(0);

  @$pb.TagNumber(2)
  ExecuteStreamReq get execute => $_getN(1);
  @$pb.TagNumber(2)
  set execute(ExecuteStreamReq v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasExecute() => $_has(1);
  @$pb.TagNumber(2)
  void clearExecute() => clearField(2);
  @$pb.TagNumber(2)
  ExecuteStreamReq ensureExecute() => $_ensure(1);

  @$pb.TagNumber(3)
  BatchStreamReq get batch => $_getN(2);
  @$pb.TagNumber(3)
  set batch(BatchStreamReq v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasBatch() => $_has(2);
  @$pb.TagNumber(3)
  void clearBatch() => clearField(3);
  @$pb.TagNumber(3)
  BatchStreamReq ensureBatch() => $_ensure(2);

  @$pb.TagNumber(4)
  SequenceStreamReq get sequence => $_getN(3);
  @$pb.TagNumber(4)
  set sequence(SequenceStreamReq v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSequence() => $_has(3);
  @$pb.TagNumber(4)
  void clearSequence() => clearField(4);
  @$pb.TagNumber(4)
  SequenceStreamReq ensureSequence() => $_ensure(3);

  @$pb.TagNumber(5)
  DescribeStreamReq get describe => $_getN(4);
  @$pb.TagNumber(5)
  set describe(DescribeStreamReq v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasDescribe() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescribe() => clearField(5);
  @$pb.TagNumber(5)
  DescribeStreamReq ensureDescribe() => $_ensure(4);

  @$pb.TagNumber(6)
  StoreSqlReq get storeSql => $_getN(5);
  @$pb.TagNumber(6)
  set storeSql(StoreSqlReq v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasStoreSql() => $_has(5);
  @$pb.TagNumber(6)
  void clearStoreSql() => clearField(6);
  @$pb.TagNumber(6)
  StoreSqlReq ensureStoreSql() => $_ensure(5);

  @$pb.TagNumber(7)
  CloseSqlReq get closeSql => $_getN(6);
  @$pb.TagNumber(7)
  set closeSql(CloseSqlReq v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasCloseSql() => $_has(6);
  @$pb.TagNumber(7)
  void clearCloseSql() => clearField(7);
  @$pb.TagNumber(7)
  CloseSqlReq ensureCloseSql() => $_ensure(6);

  @$pb.TagNumber(8)
  GetAutocommitReq get getAutocommit => $_getN(7);
  @$pb.TagNumber(8)
  set getAutocommit(GetAutocommitReq v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasGetAutocommit() => $_has(7);
  @$pb.TagNumber(8)
  void clearGetAutocommit() => clearField(8);
  @$pb.TagNumber(8)
  GetAutocommitReq ensureGetAutocommit() => $_ensure(7);
}

class ExecuteStreamReq extends $pb.GeneratedMessage {
  factory ExecuteStreamReq({
    Stmt? stmt,
  }) {
    final $result = create();
    if (stmt != null) {
      $result.stmt = stmt;
    }
    return $result;
  }
  ExecuteStreamReq._() : super();
  factory ExecuteStreamReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ExecuteStreamReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExecuteStreamReq',
      createEmptyInstance: create)
    ..aOM<Stmt>(1, _omitFieldNames ? '' : 'stmt', subBuilder: Stmt.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ExecuteStreamReq clone() => ExecuteStreamReq()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ExecuteStreamReq copyWith(void Function(ExecuteStreamReq) updates) =>
      super.copyWith((message) => updates(message as ExecuteStreamReq))
          as ExecuteStreamReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExecuteStreamReq create() => ExecuteStreamReq._();
  ExecuteStreamReq createEmptyInstance() => create();
  static $pb.PbList<ExecuteStreamReq> createRepeated() =>
      $pb.PbList<ExecuteStreamReq>();
  @$core.pragma('dart2js:noInline')
  static ExecuteStreamReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExecuteStreamReq>(create);
  static ExecuteStreamReq? _defaultInstance;

  @$pb.TagNumber(1)
  Stmt get stmt => $_getN(0);
  @$pb.TagNumber(1)
  set stmt(Stmt v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStmt() => $_has(0);
  @$pb.TagNumber(1)
  void clearStmt() => clearField(1);
  @$pb.TagNumber(1)
  Stmt ensureStmt() => $_ensure(0);
}

class BatchStreamReq extends $pb.GeneratedMessage {
  factory BatchStreamReq({
    Batch? batch,
  }) {
    final $result = create();
    if (batch != null) {
      $result.batch = batch;
    }
    return $result;
  }
  BatchStreamReq._() : super();
  factory BatchStreamReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BatchStreamReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BatchStreamReq',
      createEmptyInstance: create)
    ..aOM<Batch>(1, _omitFieldNames ? '' : 'batch', subBuilder: Batch.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BatchStreamReq clone() => BatchStreamReq()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BatchStreamReq copyWith(void Function(BatchStreamReq) updates) =>
      super.copyWith((message) => updates(message as BatchStreamReq))
          as BatchStreamReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchStreamReq create() => BatchStreamReq._();
  BatchStreamReq createEmptyInstance() => create();
  static $pb.PbList<BatchStreamReq> createRepeated() =>
      $pb.PbList<BatchStreamReq>();
  @$core.pragma('dart2js:noInline')
  static BatchStreamReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BatchStreamReq>(create);
  static BatchStreamReq? _defaultInstance;

  @$pb.TagNumber(1)
  Batch get batch => $_getN(0);
  @$pb.TagNumber(1)
  set batch(Batch v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBatch() => $_has(0);
  @$pb.TagNumber(1)
  void clearBatch() => clearField(1);
  @$pb.TagNumber(1)
  Batch ensureBatch() => $_ensure(0);
}

class SequenceStreamReq extends $pb.GeneratedMessage {
  factory SequenceStreamReq({
    $core.String? sql,
    $core.int? sqlId,
  }) {
    final $result = create();
    if (sql != null) {
      $result.sql = sql;
    }
    if (sqlId != null) {
      $result.sqlId = sqlId;
    }
    return $result;
  }
  SequenceStreamReq._() : super();
  factory SequenceStreamReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SequenceStreamReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SequenceStreamReq',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sql')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'sqlId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SequenceStreamReq clone() => SequenceStreamReq()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SequenceStreamReq copyWith(void Function(SequenceStreamReq) updates) =>
      super.copyWith((message) => updates(message as SequenceStreamReq))
          as SequenceStreamReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SequenceStreamReq create() => SequenceStreamReq._();
  SequenceStreamReq createEmptyInstance() => create();
  static $pb.PbList<SequenceStreamReq> createRepeated() =>
      $pb.PbList<SequenceStreamReq>();
  @$core.pragma('dart2js:noInline')
  static SequenceStreamReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SequenceStreamReq>(create);
  static SequenceStreamReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sql => $_getSZ(0);
  @$pb.TagNumber(1)
  set sql($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSql() => $_has(0);
  @$pb.TagNumber(1)
  void clearSql() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get sqlId => $_getIZ(1);
  @$pb.TagNumber(2)
  set sqlId($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSqlId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSqlId() => clearField(2);
}

class DescribeStreamReq extends $pb.GeneratedMessage {
  factory DescribeStreamReq({
    $core.String? sql,
    $core.int? sqlId,
  }) {
    final $result = create();
    if (sql != null) {
      $result.sql = sql;
    }
    if (sqlId != null) {
      $result.sqlId = sqlId;
    }
    return $result;
  }
  DescribeStreamReq._() : super();
  factory DescribeStreamReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DescribeStreamReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DescribeStreamReq',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sql')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'sqlId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DescribeStreamReq clone() => DescribeStreamReq()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DescribeStreamReq copyWith(void Function(DescribeStreamReq) updates) =>
      super.copyWith((message) => updates(message as DescribeStreamReq))
          as DescribeStreamReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DescribeStreamReq create() => DescribeStreamReq._();
  DescribeStreamReq createEmptyInstance() => create();
  static $pb.PbList<DescribeStreamReq> createRepeated() =>
      $pb.PbList<DescribeStreamReq>();
  @$core.pragma('dart2js:noInline')
  static DescribeStreamReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DescribeStreamReq>(create);
  static DescribeStreamReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sql => $_getSZ(0);
  @$pb.TagNumber(1)
  set sql($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSql() => $_has(0);
  @$pb.TagNumber(1)
  void clearSql() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get sqlId => $_getIZ(1);
  @$pb.TagNumber(2)
  set sqlId($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSqlId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSqlId() => clearField(2);
}

class PipelineResp extends $pb.GeneratedMessage {
  factory PipelineResp({
    $core.String? baton,
    $core.String? baseUrl,
    $core.Iterable<StreamResult>? results,
  }) {
    final $result = create();
    if (baton != null) {
      $result.baton = baton;
    }
    if (baseUrl != null) {
      $result.baseUrl = baseUrl;
    }
    if (results != null) {
      $result.results.addAll(results);
    }
    return $result;
  }
  PipelineResp._() : super();
  factory PipelineResp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PipelineResp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PipelineResp',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'baton')
    ..aOS(2, _omitFieldNames ? '' : 'baseUrl')
    ..pc<StreamResult>(3, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM,
        subBuilder: StreamResult.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PipelineResp clone() => PipelineResp()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PipelineResp copyWith(void Function(PipelineResp) updates) =>
      super.copyWith((message) => updates(message as PipelineResp))
          as PipelineResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PipelineResp create() => PipelineResp._();
  PipelineResp createEmptyInstance() => create();
  static $pb.PbList<PipelineResp> createRepeated() =>
      $pb.PbList<PipelineResp>();
  @$core.pragma('dart2js:noInline')
  static PipelineResp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PipelineResp>(create);
  static PipelineResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get baton => $_getSZ(0);
  @$pb.TagNumber(1)
  set baton($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBaton() => $_has(0);
  @$pb.TagNumber(1)
  void clearBaton() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get baseUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set baseUrl($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasBaseUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearBaseUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<StreamResult> get results => $_getList(2);
}

enum StreamResult_Result { ok, error, notSet }

class StreamResult extends $pb.GeneratedMessage {
  factory StreamResult({
    StreamResponse? ok,
    Error? error,
  }) {
    final $result = create();
    if (ok != null) {
      $result.ok = ok;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  StreamResult._() : super();
  factory StreamResult.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StreamResult.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, StreamResult_Result>
      _StreamResult_ResultByTag = {
    1: StreamResult_Result.ok,
    2: StreamResult_Result.error,
    0: StreamResult_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamResult',
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<StreamResponse>(1, _omitFieldNames ? '' : 'ok',
        subBuilder: StreamResponse.create)
    ..aOM<Error>(2, _omitFieldNames ? '' : 'error', subBuilder: Error.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StreamResult clone() => StreamResult()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StreamResult copyWith(void Function(StreamResult) updates) =>
      super.copyWith((message) => updates(message as StreamResult))
          as StreamResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamResult create() => StreamResult._();
  StreamResult createEmptyInstance() => create();
  static $pb.PbList<StreamResult> createRepeated() =>
      $pb.PbList<StreamResult>();
  @$core.pragma('dart2js:noInline')
  static StreamResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamResult>(create);
  static StreamResult? _defaultInstance;

  StreamResult_Result whichResult() =>
      _StreamResult_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  StreamResponse get ok => $_getN(0);
  @$pb.TagNumber(1)
  set ok(StreamResponse v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => clearField(1);
  @$pb.TagNumber(1)
  StreamResponse ensureOk() => $_ensure(0);

  @$pb.TagNumber(2)
  Error get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(Error v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  Error ensureError() => $_ensure(1);
}

enum StreamResponse_Response {
  close,
  execute,
  batch,
  sequence,
  describe,
  storeSql,
  closeSql,
  getAutocommit,
  notSet
}

class StreamResponse extends $pb.GeneratedMessage {
  factory StreamResponse({
    CloseStreamResp? close,
    ExecuteResp? execute,
    BatchResp? batch,
    SequenceResp? sequence,
    DescribeResp? describe,
    StoreSqlResp? storeSql,
    CloseSqlResp? closeSql,
    GetAutocommitResp? getAutocommit,
  }) {
    final $result = create();
    if (close != null) {
      $result.close = close;
    }
    if (execute != null) {
      $result.execute = execute;
    }
    if (batch != null) {
      $result.batch = batch;
    }
    if (sequence != null) {
      $result.sequence = sequence;
    }
    if (describe != null) {
      $result.describe = describe;
    }
    if (storeSql != null) {
      $result.storeSql = storeSql;
    }
    if (closeSql != null) {
      $result.closeSql = closeSql;
    }
    if (getAutocommit != null) {
      $result.getAutocommit = getAutocommit;
    }
    return $result;
  }
  StreamResponse._() : super();
  factory StreamResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StreamResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, StreamResponse_Response>
      _StreamResponse_ResponseByTag = {
    1: StreamResponse_Response.close,
    2: StreamResponse_Response.execute,
    3: StreamResponse_Response.batch,
    4: StreamResponse_Response.sequence,
    5: StreamResponse_Response.describe,
    6: StreamResponse_Response.storeSql,
    7: StreamResponse_Response.closeSql,
    8: StreamResponse_Response.getAutocommit,
    0: StreamResponse_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamResponse',
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8])
    ..aOM<CloseStreamResp>(1, _omitFieldNames ? '' : 'close',
        subBuilder: CloseStreamResp.create)
    ..aOM<ExecuteResp>(2, _omitFieldNames ? '' : 'execute',
        subBuilder: ExecuteResp.create)
    ..aOM<BatchResp>(3, _omitFieldNames ? '' : 'batch',
        subBuilder: BatchResp.create)
    ..aOM<SequenceResp>(4, _omitFieldNames ? '' : 'sequence',
        subBuilder: SequenceResp.create)
    ..aOM<DescribeResp>(5, _omitFieldNames ? '' : 'describe',
        subBuilder: DescribeResp.create)
    ..aOM<StoreSqlResp>(6, _omitFieldNames ? '' : 'storeSql',
        subBuilder: StoreSqlResp.create)
    ..aOM<CloseSqlResp>(7, _omitFieldNames ? '' : 'closeSql',
        subBuilder: CloseSqlResp.create)
    ..aOM<GetAutocommitResp>(8, _omitFieldNames ? '' : 'getAutocommit',
        subBuilder: GetAutocommitResp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StreamResponse clone() => StreamResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StreamResponse copyWith(void Function(StreamResponse) updates) =>
      super.copyWith((message) => updates(message as StreamResponse))
          as StreamResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamResponse create() => StreamResponse._();
  StreamResponse createEmptyInstance() => create();
  static $pb.PbList<StreamResponse> createRepeated() =>
      $pb.PbList<StreamResponse>();
  @$core.pragma('dart2js:noInline')
  static StreamResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamResponse>(create);
  static StreamResponse? _defaultInstance;

  StreamResponse_Response whichResponse() =>
      _StreamResponse_ResponseByTag[$_whichOneof(0)]!;
  void clearResponse() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  CloseStreamResp get close => $_getN(0);
  @$pb.TagNumber(1)
  set close(CloseStreamResp v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasClose() => $_has(0);
  @$pb.TagNumber(1)
  void clearClose() => clearField(1);
  @$pb.TagNumber(1)
  CloseStreamResp ensureClose() => $_ensure(0);

  @$pb.TagNumber(2)
  ExecuteResp get execute => $_getN(1);
  @$pb.TagNumber(2)
  set execute(ExecuteResp v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasExecute() => $_has(1);
  @$pb.TagNumber(2)
  void clearExecute() => clearField(2);
  @$pb.TagNumber(2)
  ExecuteResp ensureExecute() => $_ensure(1);

  @$pb.TagNumber(3)
  BatchResp get batch => $_getN(2);
  @$pb.TagNumber(3)
  set batch(BatchResp v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasBatch() => $_has(2);
  @$pb.TagNumber(3)
  void clearBatch() => clearField(3);
  @$pb.TagNumber(3)
  BatchResp ensureBatch() => $_ensure(2);

  @$pb.TagNumber(4)
  SequenceResp get sequence => $_getN(3);
  @$pb.TagNumber(4)
  set sequence(SequenceResp v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSequence() => $_has(3);
  @$pb.TagNumber(4)
  void clearSequence() => clearField(4);
  @$pb.TagNumber(4)
  SequenceResp ensureSequence() => $_ensure(3);

  @$pb.TagNumber(5)
  DescribeResp get describe => $_getN(4);
  @$pb.TagNumber(5)
  set describe(DescribeResp v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasDescribe() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescribe() => clearField(5);
  @$pb.TagNumber(5)
  DescribeResp ensureDescribe() => $_ensure(4);

  @$pb.TagNumber(6)
  StoreSqlResp get storeSql => $_getN(5);
  @$pb.TagNumber(6)
  set storeSql(StoreSqlResp v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasStoreSql() => $_has(5);
  @$pb.TagNumber(6)
  void clearStoreSql() => clearField(6);
  @$pb.TagNumber(6)
  StoreSqlResp ensureStoreSql() => $_ensure(5);

  @$pb.TagNumber(7)
  CloseSqlResp get closeSql => $_getN(6);
  @$pb.TagNumber(7)
  set closeSql(CloseSqlResp v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasCloseSql() => $_has(6);
  @$pb.TagNumber(7)
  void clearCloseSql() => clearField(7);
  @$pb.TagNumber(7)
  CloseSqlResp ensureCloseSql() => $_ensure(6);

  @$pb.TagNumber(8)
  GetAutocommitResp get getAutocommit => $_getN(7);
  @$pb.TagNumber(8)
  set getAutocommit(GetAutocommitResp v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasGetAutocommit() => $_has(7);
  @$pb.TagNumber(8)
  void clearGetAutocommit() => clearField(8);
  @$pb.TagNumber(8)
  GetAutocommitResp ensureGetAutocommit() => $_ensure(7);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
