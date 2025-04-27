// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'protocol.json.freezed.dart';
part 'protocol.json.g.dart';

const _union = Freezed(
  unionKey: 'type',
  unionValueCase: FreezedUnionCase.snake,
);

@freezed
abstract class StreamError with _$StreamError {
  const factory StreamError({
    required String message,
    String? code,
  }) = _StreamError;

  const StreamError._();

  factory StreamError.fromJson(Map<String, Object?> json) =>
      _$StreamErrorFromJson(json);
}

@freezed
abstract class Stmt with _$Stmt {
  const factory Stmt({
    String? sql,
    int? sqlId,
    @Default([]) List<Value> args,
    @Default([]) List<NamedArg> namedArgs,
    bool? wantRows,
  }) = _Stmt;

  const Stmt._();

  factory Stmt.fromJson(Map<String, Object?> json) => _$StmtFromJson(json);
}

@freezed
abstract class NamedArg with _$NamedArg {
  const factory NamedArg({
    required String name,
    required Value value,
  }) = _NamedArg;

  const NamedArg._();

  factory NamedArg.fromJson(Map<String, Object?> json) =>
      _$NamedArgFromJson(json);
}

class Uint8ListConverter implements JsonConverter<Uint8List, String> {
  const Uint8ListConverter();

  @override
  Uint8List fromJson(String json) => base64Decode(json);

  @override
  String toJson(Uint8List object) => base64Encode(object);
}

// Integer values are sometimes returned as strings
class MaybeIntConverter implements JsonConverter<int, Object> {
  const MaybeIntConverter();

  @override
  int fromJson(Object json) {
    return switch (json) {
      final num value => value.toInt(),
      final String str => int.parse(str),
      _ => throw ArgumentError('Invalid value for int: $json'),
    };
  }

  @override
  Object toJson(int object) {
    return object;
  }
}

@_union
sealed class Value with _$Value {
  @FreezedUnionValue('null')
  const factory Value.null$() = NullValue;
  const factory Value.integer(@MaybeIntConverter() int value) = IntegerValue;
  const factory Value.float(double value) = FloatValue;
  const factory Value.text(String value) = TextValue;
  const factory Value.blob(@Uint8ListConverter() Uint8List value) = BlobValue;

  const Value._();

  factory Value.fromJson(Map<String, Object?> json) => _$ValueFromJson(json);
}

@freezed
abstract class StmtResult with _$StmtResult {
  const factory StmtResult({
    @Default([]) List<Col> cols,
    @Default([]) List<List<Value>> rows,
    required int affectedRowCount,
    @MaybeIntConverter() int? lastInsertRowid,
    @MaybeIntConverter() int? replicationIndex,
    required int rowsRead,
    required int rowsWritten,
    required double queryDurationMs,
  }) = _StmtResult;

  const StmtResult._();

  factory StmtResult.fromJson(Map<String, Object?> json) =>
      _$StmtResultFromJson(json);
}

@freezed
abstract class Col with _$Col {
  const factory Col({
    String? name,
    String? decltype,
  }) = _Col;

  const Col._();

  factory Col.fromJson(Map<String, Object?> json) => _$ColFromJson(json);
}

@freezed
abstract class Batch with _$Batch {
  const factory Batch({
    required List<BatchStep> steps,
  }) = _Batch;

  const Batch._();

  factory Batch.fromJson(Map<String, Object?> json) => _$BatchFromJson(json);
}

@freezed
abstract class BatchStep with _$BatchStep {
  const factory BatchStep({
    BatchCond? condition,
    required Stmt stmt,
  }) = _BatchStep;

  const BatchStep._();

  factory BatchStep.fromJson(Map<String, Object?> json) =>
      _$BatchStepFromJson(json);
}

@_union
sealed class BatchCond with _$BatchCond {
  @FreezedUnionValue('ok')
  const factory BatchCond.stepOk(int step) = BatchCondStepOk;
  @FreezedUnionValue('error')
  const factory BatchCond.stepError(int step) = BatchCondStepError;
  const factory BatchCond.not(BatchCond cond) = BatchCondNot;
  const factory BatchCond.and(List<BatchCond> conds) = BatchCondAnd;
  const factory BatchCond.or(List<BatchCond> conds) = BatchCondOr;
  const factory BatchCond.isAutocommit() = BatchCondIsAutocommit;

  const BatchCond._();

  factory BatchCond.fromJson(Map<String, Object?> json) =>
      _$BatchCondFromJson(json);
}

@freezed
abstract class BatchResult with _$BatchResult {
  const factory BatchResult({
    required List<StmtResult?> stepResults,
    required List<StreamError?> stepErrors,
  }) = _BatchResult;

  const BatchResult._();

  factory BatchResult.fromJson(Map<String, Object?> json) =>
      _$BatchResultFromJson(json);
}

@_union
sealed class CursorEntry with _$CursorEntry {
  const factory CursorEntry.stepBegin({
    required int step,
    required List<Col> cols,
  }) = StepBeginEntry;
  const factory CursorEntry.stepEnd({
    required int affectedRowCount,
    @MaybeIntConverter() int? lastInsertRowid,
  }) = StepEndEntry;
  const factory CursorEntry.stepError({
    required int step,
    required StreamError error,
  }) = StepErrorEntry;
  const factory CursorEntry.row(List<Value> row) = CursorEntryRow;
  const factory CursorEntry.error(StreamError error) = CursorEntryError;

  const CursorEntry._();

  factory CursorEntry.fromJson(Map<String, Object?> json) =>
      _$CursorEntryFromJson(json);
}

@freezed
abstract class DescribeResult with _$DescribeResult {
  const factory DescribeResult({
    required List<DescribeParam> params,
    required List<DescribeCol> cols,
    required bool isExplain,
    required bool isReadonly,
  }) = _DescribeResult;

  const DescribeResult._();

  factory DescribeResult.fromJson(Map<String, Object?> json) =>
      _$DescribeResultFromJson(json);
}

@freezed
abstract class DescribeParam with _$DescribeParam {
  const factory DescribeParam({
    String? name,
  }) = _DescribeParam;

  const DescribeParam._();

  factory DescribeParam.fromJson(Map<String, Object?> json) =>
      _$DescribeParamFromJson(json);
}

@freezed
abstract class DescribeCol with _$DescribeCol {
  const factory DescribeCol({
    required String name,
    String? decltype,
  }) = _DescribeCol;

  const DescribeCol._();

  factory DescribeCol.fromJson(Map<String, Object?> json) =>
      _$DescribeColFromJson(json);
}

@_union
sealed class ClientMsg with _$ClientMsg {
  const factory ClientMsg.hello({
    String? jwt,
  }) = HelloMsg;
  const factory ClientMsg.request({
    required int requestId,
    required Request request,
  }) = RequestMsg;

  const ClientMsg._();

  factory ClientMsg.fromJson(Map<String, Object?> json) =>
      _$ClientMsgFromJson(json);
}

@_union
sealed class ServerMsg with _$ServerMsg {
  const factory ServerMsg.helloOk() = HelloOkMsg;
  const factory ServerMsg.helloError({
    required StreamError error,
  }) = HelloErrorMsg;
  const factory ServerMsg.responseOk({
    required int requestId,
    required Response response,
  }) = ResponseOkMsg;
  const factory ServerMsg.responseError({
    required int requestId,
    required StreamError error,
  }) = ResponseErrorMsg;

  const ServerMsg._();

  factory ServerMsg.fromJson(Map<String, Object?> json) =>
      _$ServerMsgFromJson(json);
}

@_union
sealed class Request with _$Request {
  const factory Request.openStream({
    required int streamId,
  }) = OpenStreamReq;
  const factory Request.closeStream({
    required int streamId,
  }) = CloseStreamReq;
  const factory Request.execute({
    required int streamId,
    required Stmt stmt,
  }) = ExecuteReq;
  const factory Request.batch({
    required int streamId,
    required Batch batch,
  }) = BatchReq;
  const factory Request.openCursor({
    required int streamId,
    required int cursorId,
    required Batch batch,
  }) = OpenCursorReq;
  const factory Request.closeCursor({
    required int cursorId,
  }) = CloseCursorReq;
  const factory Request.fetchCursor({
    required int cursorId,
    required int maxCount,
  }) = FetchCursorReq;
  const factory Request.sequence({
    required int streamId,
    String? sql,
    int? sqlId,
  }) = SequenceReq;
  const factory Request.describe({
    required int streamId,
    String? sql,
    int? sqlId,
  }) = DescribeReq;
  const factory Request.storeSql({
    required int sqlId,
    required String sql,
  }) = StoreSqlReq;
  const factory Request.closeSql({
    required int sqlId,
  }) = CloseSqlReq;
  const factory Request.getAutocommit({
    required int streamId,
  }) = GetAutocommitReq;

  const Request._();

  factory Request.fromJson(Map<String, Object?> json) =>
      _$RequestFromJson(json);
}

@_union
sealed class Response with _$Response {
  const factory Response.openStream() = OpenStreamResp;
  const factory Response.closeStream() = CloseStreamResp;
  const factory Response.execute({
    required StmtResult result,
  }) = ExecuteResp;
  const factory Response.batch({
    required BatchResult result,
  }) = BatchResp;
  const factory Response.openCursor() = OpenCursorResp;
  const factory Response.closeCursor() = CloseCursorResp;
  const factory Response.fetchCursor({
    required List<CursorEntry> entries,
    required bool done,
  }) = FetchCursorResp;
  const factory Response.sequence() = SequenceResp;
  const factory Response.describe({
    required DescribeResult result,
  }) = DescribeResp;
  const factory Response.storeSql() = StoreSqlResp;
  const factory Response.closeSql() = CloseSqlResp;
  const factory Response.getAutocommit({
    required bool isAutocommit,
  }) = GetAutocommitResp;

  const Response._();

  factory Response.fromJson(Map<String, Object?> json) =>
      _$ResponseFromJson(json);
}

@freezed
abstract class PipelineReq with _$PipelineReq {
  const factory PipelineReq({
    String? baton,
    required List<StreamRequest> requests,
  }) = _PipelineReq;

  const PipelineReq._();
  factory PipelineReq.fromJson(Map<String, Object?> json) =>
      _$PipelineReqFromJson(json);
}

@_union
sealed class StreamRequest with _$StreamRequest {
  const factory StreamRequest.close({
    int? streamId,
  }) = CloseStreamStreamReq;
  const factory StreamRequest.execute({
    required Stmt stmt,
  }) = ExecuteStreamReq;
  const factory StreamRequest.batch({
    required Batch batch,
  }) = BatchStreamReq;
  const factory StreamRequest.sequence({
    String? sql,
    int? sqlId,
  }) = SequenceStreamReq;
  const factory StreamRequest.describe({
    String? sql,
    int? sqlId,
  }) = DescribeStreamReq;
  const factory StreamRequest.storeSql({
    required int sqlId,
    required String sql,
  }) = StoreSqlStreamReq;
  const factory StreamRequest.closeSql({
    required int sqlId,
  }) = CloseSqlStreamReq;
  const factory StreamRequest.getAutocommit({
    required int streamId,
  }) = GetAutocommitStreamReq;

  const StreamRequest._();
  factory StreamRequest.fromJson(Map<String, Object?> json) =>
      _$StreamRequestFromJson(json);
}

@freezed
abstract class PipelineResp with _$PipelineResp {
  const factory PipelineResp({
    String? baton,
    String? baseUrl,
    required List<StreamResult> results,
  }) = _PipelineResp;

  const PipelineResp._();
  factory PipelineResp.fromJson(Map<String, Object?> json) =>
      _$PipelineRespFromJson(json);
}

@_union
sealed class StreamResult with _$StreamResult {
  const factory StreamResult.ok(StreamResponse response) = StreamResultOk;
  const factory StreamResult.error(StreamError response) = StreamResultError;

  const StreamResult._();
  factory StreamResult.fromJson(Map<String, Object?> json) =>
      _$StreamResultFromJson(json);
}

@_union
sealed class StreamResponse with _$StreamResponse {
  const factory StreamResponse.opened() = OpenStreamStreamResp;
  const factory StreamResponse.close() = CloseStreamStreamResp;
  const factory StreamResponse.execute({
    required StmtResult result,
  }) = ExecuteStreamResp;
  const factory StreamResponse.batch({
    required BatchResult result,
  }) = BatchStreamResp;
  const factory StreamResponse.sequence() = SequenceStreamResp;
  const factory StreamResponse.describe({
    required DescribeResult result,
  }) = DescribeStreamResp;
  const factory StreamResponse.storeSql() = StoreSqlStreamResp;
  const factory StreamResponse.closeSql() = CloseSqlStreamResp;
  const factory StreamResponse.getAutocommit({
    required bool isAutocommit,
  }) = GetAutocommitStreamResp;

  const StreamResponse._();
  factory StreamResponse.fromJson(Map<String, Object?> json) =>
      _$StreamResponseFromJson(json);
}
