// Mocks generated by Mockito 5.4.5 from annotations
// in flutter_voice_friend/test/services/speech_service_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;

import 'package:deepgram_speech_to_text/src/deepgram.dart' as _i4;
import 'package:deepgram_speech_to_text/src/deepgram_listen.dart' as _i3;
import 'package:deepgram_speech_to_text/src/deepgram_speak.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i5;
import 'package:speech_to_text/speech_to_text.dart' as _i7;
import 'package:speech_to_text_platform_interface/speech_to_text_platform_interface.dart'
    as _i8;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: must_be_immutable
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeDeepgramSpeak_0 extends _i1.SmartFake implements _i2.DeepgramSpeak {
  _FakeDeepgramSpeak_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDeepgramListen_1 extends _i1.SmartFake
    implements _i3.DeepgramListen {
  _FakeDeepgramListen_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [Deepgram].
///
/// See the documentation for Mockito's code generation for more information.
class MockDeepgram extends _i1.Mock implements _i4.Deepgram {
  MockDeepgram() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get apiKey => (super.noSuchMethod(
        Invocation.getter(#apiKey),
        returnValue: _i5.dummyValue<String>(
          this,
          Invocation.getter(#apiKey),
        ),
      ) as String);

  @override
  _i2.DeepgramSpeak get speak => (super.noSuchMethod(
        Invocation.getter(#speak),
        returnValue: _FakeDeepgramSpeak_0(
          this,
          Invocation.getter(#speak),
        ),
      ) as _i2.DeepgramSpeak);

  @override
  _i3.DeepgramListen get listen => (super.noSuchMethod(
        Invocation.getter(#listen),
        returnValue: _FakeDeepgramListen_1(
          this,
          Invocation.getter(#listen),
        ),
      ) as _i3.DeepgramListen);

  @override
  _i6.Future<bool> isApiKeyValid() => (super.noSuchMethod(
        Invocation.method(
          #isApiKeyValid,
          [],
        ),
        returnValue: _i6.Future<bool>.value(false),
      ) as _i6.Future<bool>);
}

/// A class which mocks [SpeechToText].
///
/// See the documentation for Mockito's code generation for more information.
class MockSpeechToText extends _i1.Mock implements _i7.SpeechToText {
  MockSpeechToText() {
    _i1.throwOnMissingStub(this);
  }

  @override
  set errorListener(_i7.SpeechErrorListener? _errorListener) =>
      super.noSuchMethod(
        Invocation.setter(
          #errorListener,
          _errorListener,
        ),
        returnValueForMissingStub: null,
      );

  @override
  set statusListener(_i7.SpeechStatusListener? _statusListener) =>
      super.noSuchMethod(
        Invocation.setter(
          #statusListener,
          _statusListener,
        ),
        returnValueForMissingStub: null,
      );

  @override
  bool get hasRecognized => (super.noSuchMethod(
        Invocation.getter(#hasRecognized),
        returnValue: false,
      ) as bool);

  @override
  String get lastRecognizedWords => (super.noSuchMethod(
        Invocation.getter(#lastRecognizedWords),
        returnValue: _i5.dummyValue<String>(
          this,
          Invocation.getter(#lastRecognizedWords),
        ),
      ) as String);

  @override
  String get lastStatus => (super.noSuchMethod(
        Invocation.getter(#lastStatus),
        returnValue: _i5.dummyValue<String>(
          this,
          Invocation.getter(#lastStatus),
        ),
      ) as String);

  @override
  double get lastSoundLevel => (super.noSuchMethod(
        Invocation.getter(#lastSoundLevel),
        returnValue: 0.0,
      ) as double);

  @override
  bool get isAvailable => (super.noSuchMethod(
        Invocation.getter(#isAvailable),
        returnValue: false,
      ) as bool);

  @override
  bool get isListening => (super.noSuchMethod(
        Invocation.getter(#isListening),
        returnValue: false,
      ) as bool);

  @override
  bool get isNotListening => (super.noSuchMethod(
        Invocation.getter(#isNotListening),
        returnValue: false,
      ) as bool);

  @override
  bool get hasError => (super.noSuchMethod(
        Invocation.getter(#hasError),
        returnValue: false,
      ) as bool);

  @override
  _i6.Future<bool> get hasPermission => (super.noSuchMethod(
        Invocation.getter(#hasPermission),
        returnValue: _i6.Future<bool>.value(false),
      ) as _i6.Future<bool>);

  @override
  _i6.Future<bool> initialize({
    _i7.SpeechErrorListener? onError,
    _i7.SpeechStatusListener? onStatus,
    dynamic debugLogging = false,
    Duration? finalTimeout = const Duration(milliseconds: 2000),
    List<_i8.SpeechConfigOption>? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #initialize,
          [],
          {
            #onError: onError,
            #onStatus: onStatus,
            #debugLogging: debugLogging,
            #finalTimeout: finalTimeout,
            #options: options,
          },
        ),
        returnValue: _i6.Future<bool>.value(false),
      ) as _i6.Future<bool>);

  @override
  _i6.Future<void> stop() => (super.noSuchMethod(
        Invocation.method(
          #stop,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> cancel() => (super.noSuchMethod(
        Invocation.method(
          #cancel,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<dynamic> listen({
    _i7.SpeechResultListener? onResult,
    Duration? listenFor,
    Duration? pauseFor,
    String? localeId,
    _i7.SpeechSoundLevelChange? onSoundLevelChange,
    dynamic cancelOnError = false,
    dynamic partialResults = true,
    dynamic onDevice = false,
    _i8.ListenMode? listenMode = _i8.ListenMode.confirmation,
    dynamic sampleRate = 0,
    _i8.SpeechListenOptions? listenOptions,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #listen,
          [],
          {
            #onResult: onResult,
            #listenFor: listenFor,
            #pauseFor: pauseFor,
            #localeId: localeId,
            #onSoundLevelChange: onSoundLevelChange,
            #cancelOnError: cancelOnError,
            #partialResults: partialResults,
            #onDevice: onDevice,
            #listenMode: listenMode,
            #sampleRate: sampleRate,
            #listenOptions: listenOptions,
          },
        ),
        returnValue: _i6.Future<dynamic>.value(),
      ) as _i6.Future<dynamic>);

  @override
  void changePauseFor(Duration? pauseFor) => super.noSuchMethod(
        Invocation.method(
          #changePauseFor,
          [pauseFor],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i6.Future<List<_i7.LocaleName>> locales() => (super.noSuchMethod(
        Invocation.method(
          #locales,
          [],
        ),
        returnValue: _i6.Future<List<_i7.LocaleName>>.value(<_i7.LocaleName>[]),
      ) as _i6.Future<List<_i7.LocaleName>>);

  @override
  _i6.Future<_i7.LocaleName?> systemLocale() => (super.noSuchMethod(
        Invocation.method(
          #systemLocale,
          [],
        ),
        returnValue: _i6.Future<_i7.LocaleName?>.value(),
      ) as _i6.Future<_i7.LocaleName?>);
}
