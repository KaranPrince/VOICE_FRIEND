// Mocks generated by Mockito 5.4.5 from annotations
// in flutter_voice_friend/test/utils/llm_chain_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i14;

import 'package:langchain/src/chains/conversation.dart' as _i11;
import 'package:langchain_core/chains.dart' as _i3;
import 'package:langchain_core/language_models.dart' as _i1;
import 'package:langchain_core/prompts.dart' as _i13;
import 'package:langchain_core/src/chat_models/types.dart' as _i10;
import 'package:langchain_core/src/runnables/binding.dart' as _i6;
import 'package:langchain_core/src/runnables/fallbacks.dart' as _i7;
import 'package:langchain_core/src/runnables/retry.dart' as _i8;
import 'package:langchain_core/src/runnables/runnable.dart' as _i15;
import 'package:langchain_core/src/runnables/sequence.dart' as _i4;
import 'package:langchain_core/src/runnables/types.dart' as _i5;
import 'package:langchain_openai/src/chat_models/chat_openai.dart' as _i16;
import 'package:langchain_openai/src/chat_models/types.dart' as _i9;
import 'package:mockito/mockito.dart' as _i2;
import 'package:mockito/src/dummies.dart' as _i12;

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

class _FakeBaseLanguageModel_0<
        Input extends Object,
        Options extends _i1.LanguageModelOptions,
        Output extends _i1.LanguageModelResult<Object>> extends _i2.SmartFake
    implements _i1.BaseLanguageModel<Input, Options, Output> {
  _FakeBaseLanguageModel_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeChainOptions_1 extends _i2.SmartFake implements _i3.ChainOptions {
  _FakeChainOptions_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRunnableSequence_2<RunInput extends Object?,
        RunOutput extends Object?> extends _i2.SmartFake
    implements _i4.RunnableSequence<RunInput, RunOutput> {
  _FakeRunnableSequence_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRunnableBinding_3<
        RunInput extends Object?,
        CallOptions extends _i5.RunnableOptions,
        RunOutput extends Object?> extends _i2.SmartFake
    implements _i6.RunnableBinding<RunInput, CallOptions, RunOutput> {
  _FakeRunnableBinding_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRunnableWithFallback_4<RunInput extends Object?,
        RunOutput extends Object?> extends _i2.SmartFake
    implements _i7.RunnableWithFallback<RunInput, RunOutput> {
  _FakeRunnableWithFallback_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRunnableRetry_5<RunInput extends Object?, RunOutput extends Object?>
    extends _i2.SmartFake implements _i8.RunnableRetry<RunInput, RunOutput> {
  _FakeRunnableRetry_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeChatOpenAIOptions_6 extends _i2.SmartFake
    implements _i9.ChatOpenAIOptions {
  _FakeChatOpenAIOptions_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeChatResult_7 extends _i2.SmartFake implements _i10.ChatResult {
  _FakeChatResult_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAIChatMessage_8 extends _i2.SmartFake implements _i10.AIChatMessage {
  _FakeAIChatMessage_8(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ConversationChain].
///
/// See the documentation for Mockito's code generation for more information.
class MockConversationChain extends _i2.Mock implements _i11.ConversationChain {
  MockConversationChain() {
    _i2.throwOnMissingStub(this);
  }

  @override
  String get inputKey => (super.noSuchMethod(
        Invocation.getter(#inputKey),
        returnValue: _i12.dummyValue<String>(
          this,
          Invocation.getter(#inputKey),
        ),
      ) as String);

  @override
  Set<String> get inputKeys => (super.noSuchMethod(
        Invocation.getter(#inputKeys),
        returnValue: <String>{},
      ) as Set<String>);

  @override
  _i1.BaseLanguageModel<Object,
          _i1.LanguageModelOptions, _i1.LanguageModelResult<Object>>
      get llm => (super.noSuchMethod(
            Invocation.getter(#llm),
            returnValue: _FakeBaseLanguageModel_0<Object,
                _i1.LanguageModelOptions, _i1.LanguageModelResult<Object>>(
              this,
              Invocation.getter(#llm),
            ),
          ) as _i1.BaseLanguageModel<Object, _i1.LanguageModelOptions,
              _i1.LanguageModelResult<Object>>);

  @override
  _i13.BasePromptTemplate get prompt => (super.noSuchMethod(
        Invocation.getter(#prompt),
        returnValue: _i12.dummyValue<_i13.BasePromptTemplate>(
          this,
          Invocation.getter(#prompt),
        ),
      ) as _i13.BasePromptTemplate);

  @override
  String get outputKey => (super.noSuchMethod(
        Invocation.getter(#outputKey),
        returnValue: _i12.dummyValue<String>(
          this,
          Invocation.getter(#outputKey),
        ),
      ) as String);

  @override
  bool get returnFinalOnly => (super.noSuchMethod(
        Invocation.getter(#returnFinalOnly),
        returnValue: false,
      ) as bool);

  @override
  String get chainType => (super.noSuchMethod(
        Invocation.getter(#chainType),
        returnValue: _i12.dummyValue<String>(
          this,
          Invocation.getter(#chainType),
        ),
      ) as String);

  @override
  Set<String> get outputKeys => (super.noSuchMethod(
        Invocation.getter(#outputKeys),
        returnValue: <String>{},
      ) as Set<String>);

  @override
  String get runOutputKey => (super.noSuchMethod(
        Invocation.getter(#runOutputKey),
        returnValue: _i12.dummyValue<String>(
          this,
          Invocation.getter(#runOutputKey),
        ),
      ) as String);

  @override
  _i3.ChainOptions get defaultOptions => (super.noSuchMethod(
        Invocation.getter(#defaultOptions),
        returnValue: _FakeChainOptions_1(
          this,
          Invocation.getter(#defaultOptions),
        ),
      ) as _i3.ChainOptions);

  @override
  _i14.Future<Map<String, dynamic>> callInternal(
          Map<String, dynamic>? inputs) =>
      (super.noSuchMethod(
        Invocation.method(
          #callInternal,
          [inputs],
        ),
        returnValue:
            _i14.Future<Map<String, dynamic>>.value(<String, dynamic>{}),
      ) as _i14.Future<Map<String, dynamic>>);

  @override
  _i14.Future<Map<String, dynamic>> invoke(
    Map<String, dynamic>? input, {
    _i3.ChainOptions? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #invoke,
          [input],
          {#options: options},
        ),
        returnValue:
            _i14.Future<Map<String, dynamic>>.value(<String, dynamic>{}),
      ) as _i14.Future<Map<String, dynamic>>);

  @override
  _i14.Future<Map<String, dynamic>> call(
    dynamic input, {
    bool? returnOnlyOutputs = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [input],
          {#returnOnlyOutputs: returnOnlyOutputs},
        ),
        returnValue:
            _i14.Future<Map<String, dynamic>>.value(<String, dynamic>{}),
      ) as _i14.Future<Map<String, dynamic>>);

  @override
  _i14.Future<List<Map<String, dynamic>>> apply(
          List<Map<String, dynamic>>? inputs) =>
      (super.noSuchMethod(
        Invocation.method(
          #apply,
          [inputs],
        ),
        returnValue: _i14.Future<List<Map<String, dynamic>>>.value(
            <Map<String, dynamic>>[]),
      ) as _i14.Future<List<Map<String, dynamic>>>);

  @override
  _i14.Future<String> run(dynamic input) => (super.noSuchMethod(
        Invocation.method(
          #run,
          [input],
        ),
        returnValue: _i14.Future<String>.value(_i12.dummyValue<String>(
          this,
          Invocation.method(
            #run,
            [input],
          ),
        )),
      ) as _i14.Future<String>);

  @override
  _i14.Future<List<Map<String, dynamic>>> batch(
    List<Map<String, dynamic>>? inputs, {
    List<_i3.ChainOptions>? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #batch,
          [inputs],
          {#options: options},
        ),
        returnValue: _i14.Future<List<Map<String, dynamic>>>.value(
            <Map<String, dynamic>>[]),
      ) as _i14.Future<List<Map<String, dynamic>>>);

  @override
  _i14.Stream<Map<String, dynamic>> stream(
    Map<String, dynamic>? input, {
    _i3.ChainOptions? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #stream,
          [input],
          {#options: options},
        ),
        returnValue: _i14.Stream<Map<String, dynamic>>.empty(),
      ) as _i14.Stream<Map<String, dynamic>>);

  @override
  _i14.Stream<Map<String, dynamic>> streamFromInputStream(
    _i14.Stream<Map<String, dynamic>>? inputStream, {
    _i3.ChainOptions? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #streamFromInputStream,
          [inputStream],
          {#options: options},
        ),
        returnValue: _i14.Stream<Map<String, dynamic>>.empty(),
      ) as _i14.Stream<Map<String, dynamic>>);

  @override
  _i4.RunnableSequence<Map<String, dynamic>, NewRunOutput> pipe<
              NewRunOutput extends Object?,
              NewCallOptions extends _i5.RunnableOptions>(
          _i15.Runnable<Map<String, dynamic>, NewCallOptions, NewRunOutput>?
              next) =>
      (super.noSuchMethod(
        Invocation.method(
          #pipe,
          [next],
        ),
        returnValue:
            _FakeRunnableSequence_2<Map<String, dynamic>, NewRunOutput>(
          this,
          Invocation.method(
            #pipe,
            [next],
          ),
        ),
      ) as _i4.RunnableSequence<Map<String, dynamic>, NewRunOutput>);

  @override
  _i6.RunnableBinding<Map<String, dynamic>, _i3.ChainOptions,
      Map<String, dynamic>> bind(
          _i3.ChainOptions? options) =>
      (super.noSuchMethod(
        Invocation.method(
          #bind,
          [options],
        ),
        returnValue: _FakeRunnableBinding_3<Map<String, dynamic>,
            _i3.ChainOptions, Map<String, dynamic>>(
          this,
          Invocation.method(
            #bind,
            [options],
          ),
        ),
      ) as _i6.RunnableBinding<Map<String, dynamic>, _i3.ChainOptions,
          Map<String, dynamic>>);

  @override
  _i7.RunnableWithFallback<Map<String, dynamic>, Map<String, dynamic>>
      withFallbacks(
              List<
                      _i15.Runnable<Map<String, dynamic>, _i5.RunnableOptions,
                          Map<String, dynamic>>>?
                  fallbacks) =>
          (super.noSuchMethod(
            Invocation.method(
              #withFallbacks,
              [fallbacks],
            ),
            returnValue: _FakeRunnableWithFallback_4<Map<String, dynamic>,
                Map<String, dynamic>>(
              this,
              Invocation.method(
                #withFallbacks,
                [fallbacks],
              ),
            ),
          ) as _i7.RunnableWithFallback<Map<String, dynamic>,
              Map<String, dynamic>>);

  @override
  _i8.RunnableRetry<Map<String, dynamic>, Map<String, dynamic>> withRetry({
    int? maxRetries = 3,
    _i14.FutureOr<bool> Function(Object)? retryIf,
    List<Duration?>? delayDurations,
    bool? addJitter = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #withRetry,
          [],
          {
            #maxRetries: maxRetries,
            #retryIf: retryIf,
            #delayDurations: delayDurations,
            #addJitter: addJitter,
          },
        ),
        returnValue:
            _FakeRunnableRetry_5<Map<String, dynamic>, Map<String, dynamic>>(
          this,
          Invocation.method(
            #withRetry,
            [],
            {
              #maxRetries: maxRetries,
              #retryIf: retryIf,
              #delayDurations: delayDurations,
              #addJitter: addJitter,
            },
          ),
        ),
      ) as _i8.RunnableRetry<Map<String, dynamic>, Map<String, dynamic>>);

  @override
  void close() => super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [ChatOpenAI].
///
/// See the documentation for Mockito's code generation for more information.
class MockChatOpenAI extends _i2.Mock implements _i16.ChatOpenAI {
  MockChatOpenAI() {
    _i2.throwOnMissingStub(this);
  }

  @override
  set encoding(String? _encoding) => super.noSuchMethod(
        Invocation.setter(
          #encoding,
          _encoding,
        ),
        returnValueForMissingStub: null,
      );

  @override
  set apiKey(String? value) => super.noSuchMethod(
        Invocation.setter(
          #apiKey,
          value,
        ),
        returnValueForMissingStub: null,
      );

  @override
  String get apiKey => (super.noSuchMethod(
        Invocation.getter(#apiKey),
        returnValue: _i12.dummyValue<String>(
          this,
          Invocation.getter(#apiKey),
        ),
      ) as String);

  @override
  String get modelType => (super.noSuchMethod(
        Invocation.getter(#modelType),
        returnValue: _i12.dummyValue<String>(
          this,
          Invocation.getter(#modelType),
        ),
      ) as String);

  @override
  _i9.ChatOpenAIOptions get defaultOptions => (super.noSuchMethod(
        Invocation.getter(#defaultOptions),
        returnValue: _FakeChatOpenAIOptions_6(
          this,
          Invocation.getter(#defaultOptions),
        ),
      ) as _i9.ChatOpenAIOptions);

  @override
  _i14.Future<_i10.ChatResult> invoke(
    _i13.PromptValue? input, {
    _i9.ChatOpenAIOptions? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #invoke,
          [input],
          {#options: options},
        ),
        returnValue: _i14.Future<_i10.ChatResult>.value(_FakeChatResult_7(
          this,
          Invocation.method(
            #invoke,
            [input],
            {#options: options},
          ),
        )),
      ) as _i14.Future<_i10.ChatResult>);

  @override
  _i14.Stream<_i10.ChatResult> stream(
    _i13.PromptValue? input, {
    _i9.ChatOpenAIOptions? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #stream,
          [input],
          {#options: options},
        ),
        returnValue: _i14.Stream<_i10.ChatResult>.empty(),
      ) as _i14.Stream<_i10.ChatResult>);

  @override
  _i14.Future<List<int>> tokenize(
    _i13.PromptValue? promptValue, {
    _i9.ChatOpenAIOptions? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #tokenize,
          [promptValue],
          {#options: options},
        ),
        returnValue: _i14.Future<List<int>>.value(<int>[]),
      ) as _i14.Future<List<int>>);

  @override
  _i14.Future<int> countTokens(
    _i13.PromptValue? promptValue, {
    _i9.ChatOpenAIOptions? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #countTokens,
          [promptValue],
          {#options: options},
        ),
        returnValue: _i14.Future<int>.value(0),
      ) as _i14.Future<int>);

  @override
  void close() => super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i14.Stream<_i10.ChatResult> streamFromInputStream(
    _i14.Stream<_i13.PromptValue>? inputStream, {
    _i9.ChatOpenAIOptions? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #streamFromInputStream,
          [inputStream],
          {#options: options},
        ),
        returnValue: _i14.Stream<_i10.ChatResult>.empty(),
      ) as _i14.Stream<_i10.ChatResult>);

  @override
  _i14.Future<_i10.AIChatMessage> call(
    List<_i10.ChatMessage>? messages, {
    _i9.ChatOpenAIOptions? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [messages],
          {#options: options},
        ),
        returnValue: _i14.Future<_i10.AIChatMessage>.value(_FakeAIChatMessage_8(
          this,
          Invocation.method(
            #call,
            [messages],
            {#options: options},
          ),
        )),
      ) as _i14.Future<_i10.AIChatMessage>);

  @override
  _i14.Future<List<_i10.ChatResult>> batch(
    List<_i13.PromptValue>? inputs, {
    List<_i9.ChatOpenAIOptions>? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #batch,
          [inputs],
          {#options: options},
        ),
        returnValue:
            _i14.Future<List<_i10.ChatResult>>.value(<_i10.ChatResult>[]),
      ) as _i14.Future<List<_i10.ChatResult>>);

  @override
  _i4.RunnableSequence<_i13.PromptValue, NewRunOutput> pipe<
              NewRunOutput extends Object?,
              NewCallOptions extends _i5.RunnableOptions>(
          _i15.Runnable<_i10.ChatResult, NewCallOptions, NewRunOutput>? next) =>
      (super.noSuchMethod(
        Invocation.method(
          #pipe,
          [next],
        ),
        returnValue: _FakeRunnableSequence_2<_i13.PromptValue, NewRunOutput>(
          this,
          Invocation.method(
            #pipe,
            [next],
          ),
        ),
      ) as _i4.RunnableSequence<_i13.PromptValue, NewRunOutput>);

  @override
  _i6.RunnableBinding<_i13.PromptValue, _i9.ChatOpenAIOptions, _i10.ChatResult>
      bind(_i9.ChatOpenAIOptions? options) => (super.noSuchMethod(
            Invocation.method(
              #bind,
              [options],
            ),
            returnValue: _FakeRunnableBinding_3<_i13.PromptValue,
                _i9.ChatOpenAIOptions, _i10.ChatResult>(
              this,
              Invocation.method(
                #bind,
                [options],
              ),
            ),
          ) as _i6.RunnableBinding<_i13.PromptValue, _i9.ChatOpenAIOptions,
              _i10.ChatResult>);

  @override
  _i7.RunnableWithFallback<_i13.PromptValue, _i10.ChatResult> withFallbacks(
          List<
                  _i15.Runnable<_i13.PromptValue, _i5.RunnableOptions,
                      _i10.ChatResult>>?
              fallbacks) =>
      (super.noSuchMethod(
        Invocation.method(
          #withFallbacks,
          [fallbacks],
        ),
        returnValue:
            _FakeRunnableWithFallback_4<_i13.PromptValue, _i10.ChatResult>(
          this,
          Invocation.method(
            #withFallbacks,
            [fallbacks],
          ),
        ),
      ) as _i7.RunnableWithFallback<_i13.PromptValue, _i10.ChatResult>);

  @override
  _i8.RunnableRetry<_i13.PromptValue, _i10.ChatResult> withRetry({
    int? maxRetries = 3,
    _i14.FutureOr<bool> Function(Object)? retryIf,
    List<Duration?>? delayDurations,
    bool? addJitter = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #withRetry,
          [],
          {
            #maxRetries: maxRetries,
            #retryIf: retryIf,
            #delayDurations: delayDurations,
            #addJitter: addJitter,
          },
        ),
        returnValue: _FakeRunnableRetry_5<_i13.PromptValue, _i10.ChatResult>(
          this,
          Invocation.method(
            #withRetry,
            [],
            {
              #maxRetries: maxRetries,
              #retryIf: retryIf,
              #delayDurations: delayDurations,
              #addJitter: addJitter,
            },
          ),
        ),
      ) as _i8.RunnableRetry<_i13.PromptValue, _i10.ChatResult>);
}
