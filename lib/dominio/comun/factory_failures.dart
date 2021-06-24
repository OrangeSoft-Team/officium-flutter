import 'package:freezed_annotation/freezed_annotation.dart';

part 'factory_failures.freezed.dart';

//Aquí se encuentra la fábrica de ValueFailures que pueden estar presentes en las validaciones de los Value Objects a lo largo del projecto

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.exceedingLength({
    required T failedValue,
    required int max,
  }) = ExceedingLength<T>;
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;
}
