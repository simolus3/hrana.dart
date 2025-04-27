// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'protocol.json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StreamError _$StreamErrorFromJson(Map<String, dynamic> json) => _StreamError(
      message: json['message'] as String,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$StreamErrorToJson(_StreamError instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
    };

_Stmt _$StmtFromJson(Map<String, dynamic> json) => _Stmt(
      sql: json['sql'] as String?,
      sqlId: (json['sql_id'] as num?)?.toInt(),
      args: (json['args'] as List<dynamic>?)
              ?.map((e) => Value.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      namedArgs: (json['named_args'] as List<dynamic>?)
              ?.map((e) => NamedArg.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      wantRows: json['want_rows'] as bool?,
    );

Map<String, dynamic> _$StmtToJson(_Stmt instance) => <String, dynamic>{
      'sql': instance.sql,
      'sql_id': instance.sqlId,
      'args': instance.args.map((e) => e.toJson()).toList(),
      'named_args': instance.namedArgs.map((e) => e.toJson()).toList(),
      'want_rows': instance.wantRows,
    };

_NamedArg _$NamedArgFromJson(Map<String, dynamic> json) => _NamedArg(
      name: json['name'] as String,
      value: Value.fromJson(json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NamedArgToJson(_NamedArg instance) => <String, dynamic>{
      'name': instance.name,
      'value': instance.value.toJson(),
    };

NullValue _$NullValueFromJson(Map<String, dynamic> json) => NullValue(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$NullValueToJson(NullValue instance) => <String, dynamic>{
      'type': instance.$type,
    };

IntegerValue _$IntegerValueFromJson(Map<String, dynamic> json) => IntegerValue(
      const MaybeIntConverter().fromJson(json['value'] as Object),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$IntegerValueToJson(IntegerValue instance) =>
    <String, dynamic>{
      'value': const MaybeIntConverter().toJson(instance.value),
      'type': instance.$type,
    };

FloatValue _$FloatValueFromJson(Map<String, dynamic> json) => FloatValue(
      (json['value'] as num).toDouble(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$FloatValueToJson(FloatValue instance) =>
    <String, dynamic>{
      'value': instance.value,
      'type': instance.$type,
    };

TextValue _$TextValueFromJson(Map<String, dynamic> json) => TextValue(
      json['value'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$TextValueToJson(TextValue instance) => <String, dynamic>{
      'value': instance.value,
      'type': instance.$type,
    };

BlobValue _$BlobValueFromJson(Map<String, dynamic> json) => BlobValue(
      const Uint8ListConverter().fromJson(json['value'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$BlobValueToJson(BlobValue instance) => <String, dynamic>{
      'value': const Uint8ListConverter().toJson(instance.value),
      'type': instance.$type,
    };

_StmtResult _$StmtResultFromJson(Map<String, dynamic> json) => _StmtResult(
      cols: (json['cols'] as List<dynamic>?)
              ?.map((e) => Col.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      rows: (json['rows'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => Value.fromJson(e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          const [],
      affectedRowCount: (json['affected_row_count'] as num).toInt(),
      lastInsertRowid: _$JsonConverterFromJson<Object, int>(
          json['last_insert_rowid'], const MaybeIntConverter().fromJson),
      replicationIndex: _$JsonConverterFromJson<Object, int>(
          json['replication_index'], const MaybeIntConverter().fromJson),
      rowsRead: (json['rows_read'] as num).toInt(),
      rowsWritten: (json['rows_written'] as num).toInt(),
      queryDurationMs: (json['query_duration_ms'] as num).toDouble(),
    );

Map<String, dynamic> _$StmtResultToJson(_StmtResult instance) =>
    <String, dynamic>{
      'cols': instance.cols.map((e) => e.toJson()).toList(),
      'rows':
          instance.rows.map((e) => e.map((e) => e.toJson()).toList()).toList(),
      'affected_row_count': instance.affectedRowCount,
      'last_insert_rowid': _$JsonConverterToJson<Object, int>(
          instance.lastInsertRowid, const MaybeIntConverter().toJson),
      'replication_index': _$JsonConverterToJson<Object, int>(
          instance.replicationIndex, const MaybeIntConverter().toJson),
      'rows_read': instance.rowsRead,
      'rows_written': instance.rowsWritten,
      'query_duration_ms': instance.queryDurationMs,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

_Col _$ColFromJson(Map<String, dynamic> json) => _Col(
      name: json['name'] as String?,
      decltype: json['decltype'] as String?,
    );

Map<String, dynamic> _$ColToJson(_Col instance) => <String, dynamic>{
      'name': instance.name,
      'decltype': instance.decltype,
    };

_Batch _$BatchFromJson(Map<String, dynamic> json) => _Batch(
      steps: (json['steps'] as List<dynamic>)
          .map((e) => BatchStep.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BatchToJson(_Batch instance) => <String, dynamic>{
      'steps': instance.steps.map((e) => e.toJson()).toList(),
    };

_BatchStep _$BatchStepFromJson(Map<String, dynamic> json) => _BatchStep(
      condition: json['condition'] == null
          ? null
          : BatchCond.fromJson(json['condition'] as Map<String, dynamic>),
      stmt: Stmt.fromJson(json['stmt'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BatchStepToJson(_BatchStep instance) =>
    <String, dynamic>{
      'condition': instance.condition?.toJson(),
      'stmt': instance.stmt.toJson(),
    };

BatchCondStepOk _$BatchCondStepOkFromJson(Map<String, dynamic> json) =>
    BatchCondStepOk(
      (json['step'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$BatchCondStepOkToJson(BatchCondStepOk instance) =>
    <String, dynamic>{
      'step': instance.step,
      'type': instance.$type,
    };

BatchCondStepError _$BatchCondStepErrorFromJson(Map<String, dynamic> json) =>
    BatchCondStepError(
      (json['step'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$BatchCondStepErrorToJson(BatchCondStepError instance) =>
    <String, dynamic>{
      'step': instance.step,
      'type': instance.$type,
    };

BatchCondNot _$BatchCondNotFromJson(Map<String, dynamic> json) => BatchCondNot(
      BatchCond.fromJson(json['cond'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$BatchCondNotToJson(BatchCondNot instance) =>
    <String, dynamic>{
      'cond': instance.cond.toJson(),
      'type': instance.$type,
    };

BatchCondAnd _$BatchCondAndFromJson(Map<String, dynamic> json) => BatchCondAnd(
      (json['conds'] as List<dynamic>)
          .map((e) => BatchCond.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$BatchCondAndToJson(BatchCondAnd instance) =>
    <String, dynamic>{
      'conds': instance.conds.map((e) => e.toJson()).toList(),
      'type': instance.$type,
    };

BatchCondOr _$BatchCondOrFromJson(Map<String, dynamic> json) => BatchCondOr(
      (json['conds'] as List<dynamic>)
          .map((e) => BatchCond.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$BatchCondOrToJson(BatchCondOr instance) =>
    <String, dynamic>{
      'conds': instance.conds.map((e) => e.toJson()).toList(),
      'type': instance.$type,
    };

BatchCondIsAutocommit _$BatchCondIsAutocommitFromJson(
        Map<String, dynamic> json) =>
    BatchCondIsAutocommit(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$BatchCondIsAutocommitToJson(
        BatchCondIsAutocommit instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_BatchResult _$BatchResultFromJson(Map<String, dynamic> json) => _BatchResult(
      stepResults: (json['step_results'] as List<dynamic>)
          .map((e) =>
              e == null ? null : StmtResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      stepErrors: (json['step_errors'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : StreamError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BatchResultToJson(_BatchResult instance) =>
    <String, dynamic>{
      'step_results': instance.stepResults.map((e) => e?.toJson()).toList(),
      'step_errors': instance.stepErrors.map((e) => e?.toJson()).toList(),
    };

StepBeginEntry _$StepBeginEntryFromJson(Map<String, dynamic> json) =>
    StepBeginEntry(
      step: (json['step'] as num).toInt(),
      cols: (json['cols'] as List<dynamic>)
          .map((e) => Col.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$StepBeginEntryToJson(StepBeginEntry instance) =>
    <String, dynamic>{
      'step': instance.step,
      'cols': instance.cols.map((e) => e.toJson()).toList(),
      'type': instance.$type,
    };

StepEndEntry _$StepEndEntryFromJson(Map<String, dynamic> json) => StepEndEntry(
      affectedRowCount: (json['affected_row_count'] as num).toInt(),
      lastInsertRowid: _$JsonConverterFromJson<Object, int>(
          json['last_insert_rowid'], const MaybeIntConverter().fromJson),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$StepEndEntryToJson(StepEndEntry instance) =>
    <String, dynamic>{
      'affected_row_count': instance.affectedRowCount,
      'last_insert_rowid': _$JsonConverterToJson<Object, int>(
          instance.lastInsertRowid, const MaybeIntConverter().toJson),
      'type': instance.$type,
    };

StepErrorEntry _$StepErrorEntryFromJson(Map<String, dynamic> json) =>
    StepErrorEntry(
      step: (json['step'] as num).toInt(),
      error: StreamError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$StepErrorEntryToJson(StepErrorEntry instance) =>
    <String, dynamic>{
      'step': instance.step,
      'error': instance.error.toJson(),
      'type': instance.$type,
    };

CursorEntryRow _$CursorEntryRowFromJson(Map<String, dynamic> json) =>
    CursorEntryRow(
      (json['row'] as List<dynamic>)
          .map((e) => Value.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$CursorEntryRowToJson(CursorEntryRow instance) =>
    <String, dynamic>{
      'row': instance.row.map((e) => e.toJson()).toList(),
      'type': instance.$type,
    };

CursorEntryError _$CursorEntryErrorFromJson(Map<String, dynamic> json) =>
    CursorEntryError(
      StreamError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$CursorEntryErrorToJson(CursorEntryError instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
      'type': instance.$type,
    };

_DescribeResult _$DescribeResultFromJson(Map<String, dynamic> json) =>
    _DescribeResult(
      params: (json['params'] as List<dynamic>)
          .map((e) => DescribeParam.fromJson(e as Map<String, dynamic>))
          .toList(),
      cols: (json['cols'] as List<dynamic>)
          .map((e) => DescribeCol.fromJson(e as Map<String, dynamic>))
          .toList(),
      isExplain: json['is_explain'] as bool,
      isReadonly: json['is_readonly'] as bool,
    );

Map<String, dynamic> _$DescribeResultToJson(_DescribeResult instance) =>
    <String, dynamic>{
      'params': instance.params.map((e) => e.toJson()).toList(),
      'cols': instance.cols.map((e) => e.toJson()).toList(),
      'is_explain': instance.isExplain,
      'is_readonly': instance.isReadonly,
    };

_DescribeParam _$DescribeParamFromJson(Map<String, dynamic> json) =>
    _DescribeParam(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$DescribeParamToJson(_DescribeParam instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_DescribeCol _$DescribeColFromJson(Map<String, dynamic> json) => _DescribeCol(
      name: json['name'] as String,
      decltype: json['decltype'] as String?,
    );

Map<String, dynamic> _$DescribeColToJson(_DescribeCol instance) =>
    <String, dynamic>{
      'name': instance.name,
      'decltype': instance.decltype,
    };

HelloMsg _$HelloMsgFromJson(Map<String, dynamic> json) => HelloMsg(
      jwt: json['jwt'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$HelloMsgToJson(HelloMsg instance) => <String, dynamic>{
      'jwt': instance.jwt,
      'type': instance.$type,
    };

RequestMsg _$RequestMsgFromJson(Map<String, dynamic> json) => RequestMsg(
      requestId: (json['request_id'] as num).toInt(),
      request: Request.fromJson(json['request'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$RequestMsgToJson(RequestMsg instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'request': instance.request.toJson(),
      'type': instance.$type,
    };

HelloOkMsg _$HelloOkMsgFromJson(Map<String, dynamic> json) => HelloOkMsg(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$HelloOkMsgToJson(HelloOkMsg instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

HelloErrorMsg _$HelloErrorMsgFromJson(Map<String, dynamic> json) =>
    HelloErrorMsg(
      error: StreamError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$HelloErrorMsgToJson(HelloErrorMsg instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
      'type': instance.$type,
    };

ResponseOkMsg _$ResponseOkMsgFromJson(Map<String, dynamic> json) =>
    ResponseOkMsg(
      requestId: (json['request_id'] as num).toInt(),
      response: Response.fromJson(json['response'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$ResponseOkMsgToJson(ResponseOkMsg instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'response': instance.response.toJson(),
      'type': instance.$type,
    };

ResponseErrorMsg _$ResponseErrorMsgFromJson(Map<String, dynamic> json) =>
    ResponseErrorMsg(
      requestId: (json['request_id'] as num).toInt(),
      error: StreamError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$ResponseErrorMsgToJson(ResponseErrorMsg instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'error': instance.error.toJson(),
      'type': instance.$type,
    };

OpenStreamReq _$OpenStreamReqFromJson(Map<String, dynamic> json) =>
    OpenStreamReq(
      streamId: (json['stream_id'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$OpenStreamReqToJson(OpenStreamReq instance) =>
    <String, dynamic>{
      'stream_id': instance.streamId,
      'type': instance.$type,
    };

CloseStreamReq _$CloseStreamReqFromJson(Map<String, dynamic> json) =>
    CloseStreamReq(
      streamId: (json['stream_id'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$CloseStreamReqToJson(CloseStreamReq instance) =>
    <String, dynamic>{
      'stream_id': instance.streamId,
      'type': instance.$type,
    };

ExecuteReq _$ExecuteReqFromJson(Map<String, dynamic> json) => ExecuteReq(
      streamId: (json['stream_id'] as num).toInt(),
      stmt: Stmt.fromJson(json['stmt'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$ExecuteReqToJson(ExecuteReq instance) =>
    <String, dynamic>{
      'stream_id': instance.streamId,
      'stmt': instance.stmt.toJson(),
      'type': instance.$type,
    };

BatchReq _$BatchReqFromJson(Map<String, dynamic> json) => BatchReq(
      streamId: (json['stream_id'] as num).toInt(),
      batch: Batch.fromJson(json['batch'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$BatchReqToJson(BatchReq instance) => <String, dynamic>{
      'stream_id': instance.streamId,
      'batch': instance.batch.toJson(),
      'type': instance.$type,
    };

OpenCursorReq _$OpenCursorReqFromJson(Map<String, dynamic> json) =>
    OpenCursorReq(
      streamId: (json['stream_id'] as num).toInt(),
      cursorId: (json['cursor_id'] as num).toInt(),
      batch: Batch.fromJson(json['batch'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$OpenCursorReqToJson(OpenCursorReq instance) =>
    <String, dynamic>{
      'stream_id': instance.streamId,
      'cursor_id': instance.cursorId,
      'batch': instance.batch.toJson(),
      'type': instance.$type,
    };

CloseCursorReq _$CloseCursorReqFromJson(Map<String, dynamic> json) =>
    CloseCursorReq(
      cursorId: (json['cursor_id'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$CloseCursorReqToJson(CloseCursorReq instance) =>
    <String, dynamic>{
      'cursor_id': instance.cursorId,
      'type': instance.$type,
    };

FetchCursorReq _$FetchCursorReqFromJson(Map<String, dynamic> json) =>
    FetchCursorReq(
      cursorId: (json['cursor_id'] as num).toInt(),
      maxCount: (json['max_count'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$FetchCursorReqToJson(FetchCursorReq instance) =>
    <String, dynamic>{
      'cursor_id': instance.cursorId,
      'max_count': instance.maxCount,
      'type': instance.$type,
    };

SequenceReq _$SequenceReqFromJson(Map<String, dynamic> json) => SequenceReq(
      streamId: (json['stream_id'] as num).toInt(),
      sql: json['sql'] as String?,
      sqlId: (json['sql_id'] as num?)?.toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$SequenceReqToJson(SequenceReq instance) =>
    <String, dynamic>{
      'stream_id': instance.streamId,
      'sql': instance.sql,
      'sql_id': instance.sqlId,
      'type': instance.$type,
    };

DescribeReq _$DescribeReqFromJson(Map<String, dynamic> json) => DescribeReq(
      streamId: (json['stream_id'] as num).toInt(),
      sql: json['sql'] as String?,
      sqlId: (json['sql_id'] as num?)?.toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$DescribeReqToJson(DescribeReq instance) =>
    <String, dynamic>{
      'stream_id': instance.streamId,
      'sql': instance.sql,
      'sql_id': instance.sqlId,
      'type': instance.$type,
    };

StoreSqlReq _$StoreSqlReqFromJson(Map<String, dynamic> json) => StoreSqlReq(
      sqlId: (json['sql_id'] as num).toInt(),
      sql: json['sql'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$StoreSqlReqToJson(StoreSqlReq instance) =>
    <String, dynamic>{
      'sql_id': instance.sqlId,
      'sql': instance.sql,
      'type': instance.$type,
    };

CloseSqlReq _$CloseSqlReqFromJson(Map<String, dynamic> json) => CloseSqlReq(
      sqlId: (json['sql_id'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$CloseSqlReqToJson(CloseSqlReq instance) =>
    <String, dynamic>{
      'sql_id': instance.sqlId,
      'type': instance.$type,
    };

GetAutocommitReq _$GetAutocommitReqFromJson(Map<String, dynamic> json) =>
    GetAutocommitReq(
      streamId: (json['stream_id'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$GetAutocommitReqToJson(GetAutocommitReq instance) =>
    <String, dynamic>{
      'stream_id': instance.streamId,
      'type': instance.$type,
    };

OpenStreamResp _$OpenStreamRespFromJson(Map<String, dynamic> json) =>
    OpenStreamResp(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$OpenStreamRespToJson(OpenStreamResp instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

CloseStreamResp _$CloseStreamRespFromJson(Map<String, dynamic> json) =>
    CloseStreamResp(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$CloseStreamRespToJson(CloseStreamResp instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

ExecuteResp _$ExecuteRespFromJson(Map<String, dynamic> json) => ExecuteResp(
      result: StmtResult.fromJson(json['result'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$ExecuteRespToJson(ExecuteResp instance) =>
    <String, dynamic>{
      'result': instance.result.toJson(),
      'type': instance.$type,
    };

BatchResp _$BatchRespFromJson(Map<String, dynamic> json) => BatchResp(
      result: BatchResult.fromJson(json['result'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$BatchRespToJson(BatchResp instance) => <String, dynamic>{
      'result': instance.result.toJson(),
      'type': instance.$type,
    };

OpenCursorResp _$OpenCursorRespFromJson(Map<String, dynamic> json) =>
    OpenCursorResp(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$OpenCursorRespToJson(OpenCursorResp instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

CloseCursorResp _$CloseCursorRespFromJson(Map<String, dynamic> json) =>
    CloseCursorResp(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$CloseCursorRespToJson(CloseCursorResp instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

FetchCursorResp _$FetchCursorRespFromJson(Map<String, dynamic> json) =>
    FetchCursorResp(
      entries: (json['entries'] as List<dynamic>)
          .map((e) => CursorEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      done: json['done'] as bool,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$FetchCursorRespToJson(FetchCursorResp instance) =>
    <String, dynamic>{
      'entries': instance.entries.map((e) => e.toJson()).toList(),
      'done': instance.done,
      'type': instance.$type,
    };

SequenceResp _$SequenceRespFromJson(Map<String, dynamic> json) => SequenceResp(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$SequenceRespToJson(SequenceResp instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

DescribeResp _$DescribeRespFromJson(Map<String, dynamic> json) => DescribeResp(
      result: DescribeResult.fromJson(json['result'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$DescribeRespToJson(DescribeResp instance) =>
    <String, dynamic>{
      'result': instance.result.toJson(),
      'type': instance.$type,
    };

StoreSqlResp _$StoreSqlRespFromJson(Map<String, dynamic> json) => StoreSqlResp(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$StoreSqlRespToJson(StoreSqlResp instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

CloseSqlResp _$CloseSqlRespFromJson(Map<String, dynamic> json) => CloseSqlResp(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$CloseSqlRespToJson(CloseSqlResp instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

GetAutocommitResp _$GetAutocommitRespFromJson(Map<String, dynamic> json) =>
    GetAutocommitResp(
      isAutocommit: json['is_autocommit'] as bool,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$GetAutocommitRespToJson(GetAutocommitResp instance) =>
    <String, dynamic>{
      'is_autocommit': instance.isAutocommit,
      'type': instance.$type,
    };

_PipelineReq _$PipelineReqFromJson(Map<String, dynamic> json) => _PipelineReq(
      baton: json['baton'] as String?,
      requests: (json['requests'] as List<dynamic>)
          .map((e) => StreamRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PipelineReqToJson(_PipelineReq instance) =>
    <String, dynamic>{
      'baton': instance.baton,
      'requests': instance.requests.map((e) => e.toJson()).toList(),
    };

CloseStreamStreamReq _$CloseStreamStreamReqFromJson(
        Map<String, dynamic> json) =>
    CloseStreamStreamReq(
      streamId: (json['stream_id'] as num?)?.toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$CloseStreamStreamReqToJson(
        CloseStreamStreamReq instance) =>
    <String, dynamic>{
      'stream_id': instance.streamId,
      'type': instance.$type,
    };

ExecuteStreamReq _$ExecuteStreamReqFromJson(Map<String, dynamic> json) =>
    ExecuteStreamReq(
      stmt: Stmt.fromJson(json['stmt'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$ExecuteStreamReqToJson(ExecuteStreamReq instance) =>
    <String, dynamic>{
      'stmt': instance.stmt.toJson(),
      'type': instance.$type,
    };

BatchStreamReq _$BatchStreamReqFromJson(Map<String, dynamic> json) =>
    BatchStreamReq(
      batch: Batch.fromJson(json['batch'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$BatchStreamReqToJson(BatchStreamReq instance) =>
    <String, dynamic>{
      'batch': instance.batch.toJson(),
      'type': instance.$type,
    };

SequenceStreamReq _$SequenceStreamReqFromJson(Map<String, dynamic> json) =>
    SequenceStreamReq(
      sql: json['sql'] as String?,
      sqlId: (json['sql_id'] as num?)?.toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$SequenceStreamReqToJson(SequenceStreamReq instance) =>
    <String, dynamic>{
      'sql': instance.sql,
      'sql_id': instance.sqlId,
      'type': instance.$type,
    };

DescribeStreamReq _$DescribeStreamReqFromJson(Map<String, dynamic> json) =>
    DescribeStreamReq(
      sql: json['sql'] as String?,
      sqlId: (json['sql_id'] as num?)?.toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$DescribeStreamReqToJson(DescribeStreamReq instance) =>
    <String, dynamic>{
      'sql': instance.sql,
      'sql_id': instance.sqlId,
      'type': instance.$type,
    };

StoreSqlStreamReq _$StoreSqlStreamReqFromJson(Map<String, dynamic> json) =>
    StoreSqlStreamReq(
      sqlId: (json['sql_id'] as num).toInt(),
      sql: json['sql'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$StoreSqlStreamReqToJson(StoreSqlStreamReq instance) =>
    <String, dynamic>{
      'sql_id': instance.sqlId,
      'sql': instance.sql,
      'type': instance.$type,
    };

CloseSqlStreamReq _$CloseSqlStreamReqFromJson(Map<String, dynamic> json) =>
    CloseSqlStreamReq(
      sqlId: (json['sql_id'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$CloseSqlStreamReqToJson(CloseSqlStreamReq instance) =>
    <String, dynamic>{
      'sql_id': instance.sqlId,
      'type': instance.$type,
    };

GetAutocommitStreamReq _$GetAutocommitStreamReqFromJson(
        Map<String, dynamic> json) =>
    GetAutocommitStreamReq(
      streamId: (json['stream_id'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$GetAutocommitStreamReqToJson(
        GetAutocommitStreamReq instance) =>
    <String, dynamic>{
      'stream_id': instance.streamId,
      'type': instance.$type,
    };

_PipelineResp _$PipelineRespFromJson(Map<String, dynamic> json) =>
    _PipelineResp(
      baton: json['baton'] as String?,
      baseUrl: json['base_url'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => StreamResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PipelineRespToJson(_PipelineResp instance) =>
    <String, dynamic>{
      'baton': instance.baton,
      'base_url': instance.baseUrl,
      'results': instance.results.map((e) => e.toJson()).toList(),
    };

StreamResultOk _$StreamResultOkFromJson(Map<String, dynamic> json) =>
    StreamResultOk(
      StreamResponse.fromJson(json['response'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$StreamResultOkToJson(StreamResultOk instance) =>
    <String, dynamic>{
      'response': instance.response.toJson(),
      'type': instance.$type,
    };

StreamResultError _$StreamResultErrorFromJson(Map<String, dynamic> json) =>
    StreamResultError(
      StreamError.fromJson(json['response'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$StreamResultErrorToJson(StreamResultError instance) =>
    <String, dynamic>{
      'response': instance.response.toJson(),
      'type': instance.$type,
    };

OpenStreamStreamResp _$OpenStreamStreamRespFromJson(
        Map<String, dynamic> json) =>
    OpenStreamStreamResp(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$OpenStreamStreamRespToJson(
        OpenStreamStreamResp instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

CloseStreamStreamResp _$CloseStreamStreamRespFromJson(
        Map<String, dynamic> json) =>
    CloseStreamStreamResp(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$CloseStreamStreamRespToJson(
        CloseStreamStreamResp instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

ExecuteStreamResp _$ExecuteStreamRespFromJson(Map<String, dynamic> json) =>
    ExecuteStreamResp(
      result: StmtResult.fromJson(json['result'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$ExecuteStreamRespToJson(ExecuteStreamResp instance) =>
    <String, dynamic>{
      'result': instance.result.toJson(),
      'type': instance.$type,
    };

BatchStreamResp _$BatchStreamRespFromJson(Map<String, dynamic> json) =>
    BatchStreamResp(
      result: BatchResult.fromJson(json['result'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$BatchStreamRespToJson(BatchStreamResp instance) =>
    <String, dynamic>{
      'result': instance.result.toJson(),
      'type': instance.$type,
    };

SequenceStreamResp _$SequenceStreamRespFromJson(Map<String, dynamic> json) =>
    SequenceStreamResp(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$SequenceStreamRespToJson(SequenceStreamResp instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

DescribeStreamResp _$DescribeStreamRespFromJson(Map<String, dynamic> json) =>
    DescribeStreamResp(
      result: DescribeResult.fromJson(json['result'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$DescribeStreamRespToJson(DescribeStreamResp instance) =>
    <String, dynamic>{
      'result': instance.result.toJson(),
      'type': instance.$type,
    };

StoreSqlStreamResp _$StoreSqlStreamRespFromJson(Map<String, dynamic> json) =>
    StoreSqlStreamResp(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$StoreSqlStreamRespToJson(StoreSqlStreamResp instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

CloseSqlStreamResp _$CloseSqlStreamRespFromJson(Map<String, dynamic> json) =>
    CloseSqlStreamResp(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$CloseSqlStreamRespToJson(CloseSqlStreamResp instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

GetAutocommitStreamResp _$GetAutocommitStreamRespFromJson(
        Map<String, dynamic> json) =>
    GetAutocommitStreamResp(
      isAutocommit: json['is_autocommit'] as bool,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$GetAutocommitStreamRespToJson(
        GetAutocommitStreamResp instance) =>
    <String, dynamic>{
      'is_autocommit': instance.isAutocommit,
      'type': instance.$type,
    };
