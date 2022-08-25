
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_failures.freezed.dart';
@freezed
class CommonFailures with _$CommonFailures {
  const factory CommonFailures.clientFailures() = _ClientFailures;
  const factory CommonFailures.serverFailures() = _ServerFailures;
}