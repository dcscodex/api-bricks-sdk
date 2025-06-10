@isTest
private class OASV1ChainTest {
    @isTest
    private static void equalsSameInstance() {
        OASV1Chain v1Chain1 = OASV1Chain.getExample();
        OASV1Chain v1Chain2 = v1Chain1;
        OASV1Chain v1Chain3 = new OASV1Chain();
        OASV1Chain v1Chain4 = v1Chain3;

        System.assert(v1Chain1.equals(v1Chain2));
        System.assert(v1Chain2.equals(v1Chain1));
        System.assert(v1Chain1.equals(v1Chain1));
        System.assert(v1Chain3.equals(v1Chain4));
        System.assert(v1Chain4.equals(v1Chain3));
        System.assert(v1Chain3.equals(v1Chain3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASV1Chain v1Chain1 = OASV1Chain.getExample();
        OASV1Chain v1Chain2 = OASV1Chain.getExample();
        OASV1Chain v1Chain3 = new OASV1Chain();
        OASV1Chain v1Chain4 = new OASV1Chain();

        System.assert(v1Chain1.equals(v1Chain2));
        System.assert(v1Chain2.equals(v1Chain1));
        System.assert(v1Chain3.equals(v1Chain4));
        System.assert(v1Chain4.equals(v1Chain3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASV1Chain v1Chain1 = OASV1Chain.getExample();
        OASV1Chain v1Chain2 = new OASV1Chain();

        System.assertEquals(false, v1Chain1.equals('foo'));
        System.assertEquals(false, v1Chain2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASV1Chain v1Chain1 = OASV1Chain.getExample();
        OASV1Chain v1Chain2 = new OASV1Chain();
        OASV1Chain v1Chain3;

        System.assertEquals(false, v1Chain1.equals(v1Chain3));
        System.assertEquals(false, v1Chain2.equals(v1Chain3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASV1Chain v1Chain1 = OASV1Chain.getExample();
        OASV1Chain v1Chain2 = new OASV1Chain();

        System.assertEquals(v1Chain1.hashCode(), v1Chain1.hashCode());
        System.assertEquals(v1Chain2.hashCode(), v1Chain2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASV1Chain v1Chain1 = OASV1Chain.getExample();
        OASV1Chain v1Chain2 = OASV1Chain.getExample();
        OASV1Chain v1Chain3 = new OASV1Chain();
        OASV1Chain v1Chain4 = new OASV1Chain();

        System.assert(v1Chain1.equals(v1Chain2));
        System.assert(v1Chain3.equals(v1Chain4));
        System.assertEquals(v1Chain1.hashCode(), v1Chain2.hashCode());
        System.assertEquals(v1Chain3.hashCode(), v1Chain4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASV1Chain v1Chain = new OASV1Chain();
        Map<String, String> x-property-mappings = v1Chain.getx-property-mappings();
        System.assertEquals('chainId', x-property-mappings.get('chain_id'));
    }
}
