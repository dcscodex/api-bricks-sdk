@isTest
private class OASV1ChainNetworkAddressTest {
    @isTest
    private static void equalsSameInstance() {
        OASV1ChainNetworkAddress v1ChainNetworkAddress1 = OASV1ChainNetworkAddress.getExample();
        OASV1ChainNetworkAddress v1ChainNetworkAddress2 = v1ChainNetworkAddress1;
        OASV1ChainNetworkAddress v1ChainNetworkAddress3 = new OASV1ChainNetworkAddress();
        OASV1ChainNetworkAddress v1ChainNetworkAddress4 = v1ChainNetworkAddress3;

        System.assert(v1ChainNetworkAddress1.equals(v1ChainNetworkAddress2));
        System.assert(v1ChainNetworkAddress2.equals(v1ChainNetworkAddress1));
        System.assert(v1ChainNetworkAddress1.equals(v1ChainNetworkAddress1));
        System.assert(v1ChainNetworkAddress3.equals(v1ChainNetworkAddress4));
        System.assert(v1ChainNetworkAddress4.equals(v1ChainNetworkAddress3));
        System.assert(v1ChainNetworkAddress3.equals(v1ChainNetworkAddress3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASV1ChainNetworkAddress v1ChainNetworkAddress1 = OASV1ChainNetworkAddress.getExample();
        OASV1ChainNetworkAddress v1ChainNetworkAddress2 = OASV1ChainNetworkAddress.getExample();
        OASV1ChainNetworkAddress v1ChainNetworkAddress3 = new OASV1ChainNetworkAddress();
        OASV1ChainNetworkAddress v1ChainNetworkAddress4 = new OASV1ChainNetworkAddress();

        System.assert(v1ChainNetworkAddress1.equals(v1ChainNetworkAddress2));
        System.assert(v1ChainNetworkAddress2.equals(v1ChainNetworkAddress1));
        System.assert(v1ChainNetworkAddress3.equals(v1ChainNetworkAddress4));
        System.assert(v1ChainNetworkAddress4.equals(v1ChainNetworkAddress3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASV1ChainNetworkAddress v1ChainNetworkAddress1 = OASV1ChainNetworkAddress.getExample();
        OASV1ChainNetworkAddress v1ChainNetworkAddress2 = new OASV1ChainNetworkAddress();

        System.assertEquals(false, v1ChainNetworkAddress1.equals('foo'));
        System.assertEquals(false, v1ChainNetworkAddress2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASV1ChainNetworkAddress v1ChainNetworkAddress1 = OASV1ChainNetworkAddress.getExample();
        OASV1ChainNetworkAddress v1ChainNetworkAddress2 = new OASV1ChainNetworkAddress();
        OASV1ChainNetworkAddress v1ChainNetworkAddress3;

        System.assertEquals(false, v1ChainNetworkAddress1.equals(v1ChainNetworkAddress3));
        System.assertEquals(false, v1ChainNetworkAddress2.equals(v1ChainNetworkAddress3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASV1ChainNetworkAddress v1ChainNetworkAddress1 = OASV1ChainNetworkAddress.getExample();
        OASV1ChainNetworkAddress v1ChainNetworkAddress2 = new OASV1ChainNetworkAddress();

        System.assertEquals(v1ChainNetworkAddress1.hashCode(), v1ChainNetworkAddress1.hashCode());
        System.assertEquals(v1ChainNetworkAddress2.hashCode(), v1ChainNetworkAddress2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASV1ChainNetworkAddress v1ChainNetworkAddress1 = OASV1ChainNetworkAddress.getExample();
        OASV1ChainNetworkAddress v1ChainNetworkAddress2 = OASV1ChainNetworkAddress.getExample();
        OASV1ChainNetworkAddress v1ChainNetworkAddress3 = new OASV1ChainNetworkAddress();
        OASV1ChainNetworkAddress v1ChainNetworkAddress4 = new OASV1ChainNetworkAddress();

        System.assert(v1ChainNetworkAddress1.equals(v1ChainNetworkAddress2));
        System.assert(v1ChainNetworkAddress3.equals(v1ChainNetworkAddress4));
        System.assertEquals(v1ChainNetworkAddress1.hashCode(), v1ChainNetworkAddress2.hashCode());
        System.assertEquals(v1ChainNetworkAddress3.hashCode(), v1ChainNetworkAddress4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASV1ChainNetworkAddress v1ChainNetworkAddress = new OASV1ChainNetworkAddress();
        Map<String, String> x-property-mappings = v1ChainNetworkAddress.getx-property-mappings();
        System.assertEquals('chainId', x-property-mappings.get('chain_id'));
        System.assertEquals('networkId', x-property-mappings.get('network_id'));
    }
}
