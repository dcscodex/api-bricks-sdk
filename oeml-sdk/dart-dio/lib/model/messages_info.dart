        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'messages_info.g.dart';

abstract class MessagesInfo implements Built<MessagesInfo, MessagesInfoBuilder> {

    /* Type of message */
        @nullable
    @BuiltValueField(wireName: r'type')
    String get type;
    /* Exchange name */
        @nullable
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;
    /* Error message */
        @nullable
    @BuiltValueField(wireName: r'error_message')
    String get errorMessage;

    // Boilerplate code needed to wire-up generated code
    MessagesInfo._();

    factory MessagesInfo([updates(MessagesInfoBuilder b)]) = _$MessagesInfo;
    static Serializer<MessagesInfo> get serializer => _$messagesInfoSerializer;

}

