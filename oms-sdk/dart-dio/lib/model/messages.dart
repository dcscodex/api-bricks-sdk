        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'messages.g.dart';

abstract class Messages implements Built<Messages, MessagesBuilder> {

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
    Messages._();

    factory Messages([updates(MessagesBuilder b)]) = _$Messages;
    static Serializer<Messages> get serializer => _$messagesSerializer;

}

