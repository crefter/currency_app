// Mocks generated by Mockito 5.2.0 from annotations
// in currency_app/test/views/rate_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:currency_app/domain/entities/rate.dart' as _i4;
import 'package:currency_app/domain/usecases/find_rates_for_currency_use_case.dart'
    as _i5;
import 'package:currency_app/domain/usecases/load_rates_for_currency_use_case.dart'
    as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

/// A class which mocks [LoadRatesForCurrencyUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockLoadRatesForCurrencyUseCase extends _i1.Mock
    implements _i2.LoadRatesForCurrencyUseCase {
  MockLoadRatesForCurrencyUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<List<_i4.Rate>> call({String? currency}) =>
      (super.noSuchMethod(Invocation.method(#call, [], {#currency: currency}),
              returnValue: Future<List<_i4.Rate>>.value(<_i4.Rate>[]))
          as _i3.Future<List<_i4.Rate>>);
}

/// A class which mocks [FindRatesForCurrencyUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockFindRatesForCurrencyUseCase extends _i1.Mock
    implements _i5.FindRatesForCurrencyUseCase {
  MockFindRatesForCurrencyUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<List<_i4.Rate>> call(String? currency, List<_i4.Rate>? rates,
          {String? defaultCurrency = r'USD'}) =>
      (super.noSuchMethod(
              Invocation.method(#call, [currency, rates],
                  {#defaultCurrency: defaultCurrency}),
              returnValue: Future<List<_i4.Rate>>.value(<_i4.Rate>[]))
          as _i3.Future<List<_i4.Rate>>);
}
