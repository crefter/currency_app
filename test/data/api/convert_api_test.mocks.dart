// Mocks generated by Mockito 5.0.17 from annotations
// in currency_app/test/data/api/convert_api_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:currency_app/data/api/convert_api.dart' as _i3;
import 'package:currency_app/data/dto/convert_response.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeConvertResponse_0 extends _i1.Fake implements _i2.ConvertResponse {}

/// A class which mocks [ConvertApi].
///
/// See the documentation for Mockito's code generation for more information.
class MockConvertApi extends _i1.Mock implements _i3.ConvertApi {
  MockConvertApi() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.ConvertResponse> convert(
          {double? amount, String? from, String? to, _i3.Output? output}) =>
      (super.noSuchMethod(
              Invocation.method(#convert, [],
                  {#amount: amount, #from: from, #to: to, #output: output}),
              returnValue:
                  Future<_i2.ConvertResponse>.value(_FakeConvertResponse_0()))
          as _i4.Future<_i2.ConvertResponse>);
}
