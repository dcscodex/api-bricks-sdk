        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'messages_ok.g.dart';

abstract class MessagesOk implements Built<MessagesOk, MessagesOkBuilder> {

    /* Type of message */
        @nullable
    @BuiltValueField(wireName: r'type')
    String get type;
    /* Exchange name */
        @nullable
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;
    /* Message */
        @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    // Boilerplate code needed to wire-up generated code
    MessagesOk._();

    factory MessagesOk([updates(MessagesOkBuilder b)]) = _$MessagesOk;
    static Serializer<MessagesOk> get serializer => _$messagesOkSerializer;

}

