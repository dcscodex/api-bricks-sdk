@isTest
private class OASV1ListingItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASV1ListingItem v1ListingItem1 = OASV1ListingItem.getExample();
        OASV1ListingItem v1ListingItem2 = v1ListingItem1;
        OASV1ListingItem v1ListingItem3 = new OASV1ListingItem();
        OASV1ListingItem v1ListingItem4 = v1ListingItem3;

        System.assert(v1ListingItem1.equals(v1ListingItem2));
        System.assert(v1ListingItem2.equals(v1ListingItem1));
        System.assert(v1ListingItem1.equals(v1ListingItem1));
        System.assert(v1ListingItem3.equals(v1ListingItem4));
        System.assert(v1ListingItem4.equals(v1ListingItem3));
        System.assert(v1ListingItem3.equals(v1ListingItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASV1ListingItem v1ListingItem1 = OASV1ListingItem.getExample();
        OASV1ListingItem v1ListingItem2 = OASV1ListingItem.getExample();
        OASV1ListingItem v1ListingItem3 = new OASV1ListingItem();
        OASV1ListingItem v1ListingItem4 = new OASV1ListingItem();

        System.assert(v1ListingItem1.equals(v1ListingItem2));
        System.assert(v1ListingItem2.equals(v1ListingItem1));
        System.assert(v1ListingItem3.equals(v1ListingItem4));
        System.assert(v1ListingItem4.equals(v1ListingItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASV1ListingItem v1ListingItem1 = OASV1ListingItem.getExample();
        OASV1ListingItem v1ListingItem2 = new OASV1ListingItem();

        System.assertEquals(false, v1ListingItem1.equals('foo'));
        System.assertEquals(false, v1ListingItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASV1ListingItem v1ListingItem1 = OASV1ListingItem.getExample();
        OASV1ListingItem v1ListingItem2 = new OASV1ListingItem();
        OASV1ListingItem v1ListingItem3;

        System.assertEquals(false, v1ListingItem1.equals(v1ListingItem3));
        System.assertEquals(false, v1ListingItem2.equals(v1ListingItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASV1ListingItem v1ListingItem1 = OASV1ListingItem.getExample();
        OASV1ListingItem v1ListingItem2 = new OASV1ListingItem();

        System.assertEquals(v1ListingItem1.hashCode(), v1ListingItem1.hashCode());
        System.assertEquals(v1ListingItem2.hashCode(), v1ListingItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASV1ListingItem v1ListingItem1 = OASV1ListingItem.getExample();
        OASV1ListingItem v1ListingItem2 = OASV1ListingItem.getExample();
        OASV1ListingItem v1ListingItem3 = new OASV1ListingItem();
        OASV1ListingItem v1ListingItem4 = new OASV1ListingItem();

        System.assert(v1ListingItem1.equals(v1ListingItem2));
        System.assert(v1ListingItem3.equals(v1ListingItem4));
        System.assertEquals(v1ListingItem1.hashCode(), v1ListingItem2.hashCode());
        System.assertEquals(v1ListingItem3.hashCode(), v1ListingItem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASV1ListingItem v1ListingItem = new OASV1ListingItem();
        Map<String, String> x-property-mappings = v1ListingItem.getx-property-mappings();
        System.assertEquals('metricId', x-property-mappings.get('metric_id'));
        System.assertEquals('symbolId', x-property-mappings.get('symbol_id'));
        System.assertEquals('symbolIdExternal', x-property-mappings.get('symbol_id_external'));
        System.assertEquals('exchangeId', x-property-mappings.get('exchange_id'));
        System.assertEquals('assetId', x-property-mappings.get('asset_id'));
        System.assertEquals('assetIdExternal', x-property-mappings.get('asset_id_external'));
        System.assertEquals('chainId', x-property-mappings.get('chain_id'));
        System.assertEquals('networkId', x-property-mappings.get('network_id'));
    }
}
