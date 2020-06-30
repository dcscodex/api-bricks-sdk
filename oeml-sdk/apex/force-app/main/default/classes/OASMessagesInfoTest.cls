@isTest
private class OASMessagesInfoTest {
    @isTest
    private static void equalsSameInstance() {
        OASMessagesInfo messagesInfo1 = OASMessagesInfo.getExample();
        OASMessagesInfo messagesInfo2 = messagesInfo1;
        OASMessagesInfo messagesInfo3 = new OASMessagesInfo();
        OASMessagesInfo messagesInfo4 = messagesInfo3;

        System.assert(messagesInfo1.equals(messagesInfo2));
        System.assert(messagesInfo2.equals(messagesInfo1));
        System.assert(messagesInfo1.equals(messagesInfo1));
        System.assert(messagesInfo3.equals(messagesInfo4));
        System.assert(messagesInfo4.equals(messagesInfo3));
        System.assert(messagesInfo3.equals(messagesInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASMessagesInfo messagesInfo1 = OASMessagesInfo.getExample();
        OASMessagesInfo messagesInfo2 = OASMessagesInfo.getExample();
        OASMessagesInfo messagesInfo3 = new OASMessagesInfo();
        OASMessagesInfo messagesInfo4 = new OASMessagesInfo();

        System.assert(messagesInfo1.equals(messagesInfo2));
        System.assert(messagesInfo2.equals(messagesInfo1));
        System.assert(messagesInfo3.equals(messagesInfo4));
        System.assert(messagesInfo4.equals(messagesInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASMessagesInfo messagesInfo1 = OASMessagesInfo.getExample();
        OASMessagesInfo messagesInfo2 = new OASMessagesInfo();

        System.assertEquals(false, messagesInfo1.equals('foo'));
        System.assertEquals(false, messagesInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASMessagesInfo messagesInfo1 = OASMessagesInfo.getExample();
        OASMessagesInfo messagesInfo2 = new OASMessagesInfo();
        OASMessagesInfo messagesInfo3;

        System.assertEquals(false, messagesInfo1.equals(messagesInfo3));
        System.assertEquals(false, messagesInfo2.equals(messagesInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASMessagesInfo messagesInfo1 = OASMessagesInfo.getExample();
        OASMessagesInfo messagesInfo2 = new OASMessagesInfo();

        System.assertEquals(messagesInfo1.hashCode(), messagesInfo1.hashCode());
        System.assertEquals(messagesInfo2.hashCode(), messagesInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASMessagesInfo messagesInfo1 = OASMessagesInfo.getExample();
        OASMessagesInfo messagesInfo2 = OASMessagesInfo.getExample();
        OASMessagesInfo messagesInfo3 = new OASMessagesInfo();
        OASMessagesInfo messagesInfo4 = new OASMessagesInfo();

        System.assert(messagesInfo1.equals(messagesInfo2));
        System.assert(messagesInfo3.equals(messagesInfo4));
        System.assertEquals(messagesInfo1.hashCode(), messagesInfo2.hashCode());
        System.assertEquals(messagesInfo3.hashCode(), messagesInfo4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASMessagesInfo messagesInfo = new OASMessagesInfo();
        Map<String, String> propertyMappings = messagesInfo.getPropertyMappings();
        System.assertEquals('r_type', propertyMappings.get('type'));
        System.assertEquals('exchangeId', propertyMappings.get('exchange_id'));
        System.assertEquals('errorMessage', propertyMappings.get('error_message'));
    }
}
