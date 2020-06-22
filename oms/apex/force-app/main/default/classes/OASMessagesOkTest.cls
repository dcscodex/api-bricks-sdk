@isTest
private class OASMessagesOkTest {
    @isTest
    private static void equalsSameInstance() {
        OASMessagesOk messagesOk1 = OASMessagesOk.getExample();
        OASMessagesOk messagesOk2 = messagesOk1;
        OASMessagesOk messagesOk3 = new OASMessagesOk();
        OASMessagesOk messagesOk4 = messagesOk3;

        System.assert(messagesOk1.equals(messagesOk2));
        System.assert(messagesOk2.equals(messagesOk1));
        System.assert(messagesOk1.equals(messagesOk1));
        System.assert(messagesOk3.equals(messagesOk4));
        System.assert(messagesOk4.equals(messagesOk3));
        System.assert(messagesOk3.equals(messagesOk3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASMessagesOk messagesOk1 = OASMessagesOk.getExample();
        OASMessagesOk messagesOk2 = OASMessagesOk.getExample();
        OASMessagesOk messagesOk3 = new OASMessagesOk();
        OASMessagesOk messagesOk4 = new OASMessagesOk();

        System.assert(messagesOk1.equals(messagesOk2));
        System.assert(messagesOk2.equals(messagesOk1));
        System.assert(messagesOk3.equals(messagesOk4));
        System.assert(messagesOk4.equals(messagesOk3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASMessagesOk messagesOk1 = OASMessagesOk.getExample();
        OASMessagesOk messagesOk2 = new OASMessagesOk();

        System.assertEquals(false, messagesOk1.equals('foo'));
        System.assertEquals(false, messagesOk2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASMessagesOk messagesOk1 = OASMessagesOk.getExample();
        OASMessagesOk messagesOk2 = new OASMessagesOk();
        OASMessagesOk messagesOk3;

        System.assertEquals(false, messagesOk1.equals(messagesOk3));
        System.assertEquals(false, messagesOk2.equals(messagesOk3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASMessagesOk messagesOk1 = OASMessagesOk.getExample();
        OASMessagesOk messagesOk2 = new OASMessagesOk();

        System.assertEquals(messagesOk1.hashCode(), messagesOk1.hashCode());
        System.assertEquals(messagesOk2.hashCode(), messagesOk2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASMessagesOk messagesOk1 = OASMessagesOk.getExample();
        OASMessagesOk messagesOk2 = OASMessagesOk.getExample();
        OASMessagesOk messagesOk3 = new OASMessagesOk();
        OASMessagesOk messagesOk4 = new OASMessagesOk();

        System.assert(messagesOk1.equals(messagesOk2));
        System.assert(messagesOk3.equals(messagesOk4));
        System.assertEquals(messagesOk1.hashCode(), messagesOk2.hashCode());
        System.assertEquals(messagesOk3.hashCode(), messagesOk4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASMessagesOk messagesOk = new OASMessagesOk();
        Map<String, String> propertyMappings = messagesOk.getPropertyMappings();
        System.assertEquals('r_type', propertyMappings.get('type'));
        System.assertEquals('exchangeId', propertyMappings.get('exchange_id'));
    }
}
