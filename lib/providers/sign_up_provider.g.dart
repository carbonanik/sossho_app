// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$signUpLoadingHash() => r'fea168bf4689848dd3890a78ad793b716e305027';

/// See also [signUpLoading].
@ProviderFor(signUpLoading)
final signUpLoadingProvider = AutoDisposeProvider<bool>.internal(
  signUpLoading,
  name: r'signUpLoadingProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$signUpLoadingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SignUpLoadingRef = AutoDisposeProviderRef<bool>;
String _$signUpErrorHash() => r'5d3b162053a22cafa9df8098e6bee62d1fc26285';

/// See also [signUpError].
@ProviderFor(signUpError)
final signUpErrorProvider = AutoDisposeProvider<Object?>.internal(
  signUpError,
  name: r'signUpErrorProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$signUpErrorHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SignUpErrorRef = AutoDisposeProviderRef<Object?>;
String _$signUpSuccessHash() => r'30bdaf8bc0d19d289dd5fa583e14d3113c0368a0';

/// See also [signUpSuccess].
@ProviderFor(signUpSuccess)
final signUpSuccessProvider = AutoDisposeProvider<Object?>.internal(
  signUpSuccess,
  name: r'signUpSuccessProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$signUpSuccessHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SignUpSuccessRef = AutoDisposeProviderRef<Object?>;
String _$signUpHash() => r'2663ea3fd33ad31823b311aae0014bf9701b0159';

/// See also [SignUp].
@ProviderFor(SignUp)
final signUpProvider =
    AutoDisposeAsyncNotifierProvider<SignUp, LoginResponse?>.internal(
  SignUp.new,
  name: r'signUpProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$signUpHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SignUp = AutoDisposeAsyncNotifier<LoginResponse?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
