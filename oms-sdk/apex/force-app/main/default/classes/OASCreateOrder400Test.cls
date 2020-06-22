@isTest
private class OASCreateOrder400Test {
    @isTest
    private static void equalsSameInstance() {
        OASCreateOrder400 createOrder4001 = OASCreateOrder400.getExample();
        OASCreateOrder400 createOrder4002 = createOrder4001;
        OASCreateOrder400 createOrder4003 = new OASCreateOrder400();
        OASCreateOrder400 createOrder4004 = createOrder4003;

        System.assert(createOrder4001.equals(createOrder4002));
        System.assert(createOrder4002.equals(createOrder4001));
        System.assert(createOrder4001.equals(createOrder4001));
        System.assert(createOrder4003.equals(createOrder4004));
        System.assert(createOrder4004.equals(createOrder4003));
        System.assert(createOrder4003.equals(createOrder4003));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCreateOrder400 createOrder4001 = OASCreateOrder400.getExample();
        OASCreateOrder400 createOrder4002 = OASCreateOrder400.getExample();
        OASCreateOrder400 createOrder4003 = new OASCreateOrder400();
        OASCreateOrder400 createOrder4004 = new OASCreateOrder400();

        System.assert(createOrder4001.equals(createOrder4002));
        System.assert(createOrder4002.equals(createOrder4001));
        System.assert(createOrder4003.equals(createOrder4004));
        System.assert(createOrder4004.equals(createOrder4003));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCreateOrder400 createOrder4001 = OASCreateOrder400.getExample();
        OASCreateOrder400 createOrder4002 = new OASCreateOrder400();

        System.assertEquals(false, createOrder4001.equals('foo'));
        System.assertEquals(false, createOrder4002.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCreateOrder400 createOrder4001 = OASCreateOrder400.getExample();
        OASCreateOrder400 createOrder4002 = new OASCreateOrder400();
        OASCreateOrder400 createOrder4003;

        System.assertEquals(false, createOrder4001.equals(createOrder4003));
        System.assertEquals(false, createOrder4002.equals(createOrder4003));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCreateOrder400 createOrder4001 = OASCreateOrder400.getExample();
        OASCreateOrder400 createOrder4002 = new OASCreateOrder400();

        System.assertEquals(createOrder4001.hashCode(), createOrder4001.hashCode());
        System.assertEquals(createOrder4002.hashCode(), createOrder4002.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCreateOrder400 createOrder4001 = OASCreateOrder400.getExample();
        OASCreateOrder400 createOrder4002 = OASCreateOrder400.getExample();
        OASCreateOrder400 createOrder4003 = new OASCreateOrder400();
        OASCreateOrder400 createOrder4004 = new OASCreateOrder400();

        System.assert(createOrder4001.equals(createOrder4002));
        System.assert(createOrder4003.equals(createOrder4004));
        System.assertEquals(createOrder4001.hashCode(), createOrder4002.hashCode());
        System.assertEquals(createOrder4003.hashCode(), createOrder4004.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCreateOrder400 createOrder400 = new OASCreateOrder400();
        Map<String, String> propertyMappings = createOrder400.getPropertyMappings();
        System.assertEquals('r_type', propertyMappings.get('type'));
    }
}
