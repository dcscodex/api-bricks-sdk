@isTest
private class OASV1SymbolMappingTest {
    @isTest
    private static void equalsSameInstance() {
        OASV1SymbolMapping v1SymbolMapping1 = OASV1SymbolMapping.getExample();
        OASV1SymbolMapping v1SymbolMapping2 = v1SymbolMapping1;
        OASV1SymbolMapping v1SymbolMapping3 = new OASV1SymbolMapping();
        OASV1SymbolMapping v1SymbolMapping4 = v1SymbolMapping3;

        System.assert(v1SymbolMapping1.equals(v1SymbolMapping2));
        System.assert(v1SymbolMapping2.equals(v1SymbolMapping1));
        System.assert(v1SymbolMapping1.equals(v1SymbolMapping1));
        System.assert(v1SymbolMapping3.equals(v1SymbolMapping4));
        System.assert(v1SymbolMapping4.equals(v1SymbolMapping3));
        System.assert(v1SymbolMapping3.equals(v1SymbolMapping3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASV1SymbolMapping v1SymbolMapping1 = OASV1SymbolMapping.getExample();
        OASV1SymbolMapping v1SymbolMapping2 = OASV1SymbolMapping.getExample();
        OASV1SymbolMapping v1SymbolMapping3 = new OASV1SymbolMapping();
        OASV1SymbolMapping v1SymbolMapping4 = new OASV1SymbolMapping();

        System.assert(v1SymbolMapping1.equals(v1SymbolMapping2));
        System.assert(v1SymbolMapping2.equals(v1SymbolMapping1));
        System.assert(v1SymbolMapping3.equals(v1SymbolMapping4));
        System.assert(v1SymbolMapping4.equals(v1SymbolMapping3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASV1SymbolMapping v1SymbolMapping1 = OASV1SymbolMapping.getExample();
        OASV1SymbolMapping v1SymbolMapping2 = new OASV1SymbolMapping();

        System.assertEquals(false, v1SymbolMapping1.equals('foo'));
        System.assertEquals(false, v1SymbolMapping2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASV1SymbolMapping v1SymbolMapping1 = OASV1SymbolMapping.getExample();
        OASV1SymbolMapping v1SymbolMapping2 = new OASV1SymbolMapping();
        OASV1SymbolMapping v1SymbolMapping3;

        System.assertEquals(false, v1SymbolMapping1.equals(v1SymbolMapping3));
        System.assertEquals(false, v1SymbolMapping2.equals(v1SymbolMapping3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASV1SymbolMapping v1SymbolMapping1 = OASV1SymbolMapping.getExample();
        OASV1SymbolMapping v1SymbolMapping2 = new OASV1SymbolMapping();

        System.assertEquals(v1SymbolMapping1.hashCode(), v1SymbolMapping1.hashCode());
        System.assertEquals(v1SymbolMapping2.hashCode(), v1SymbolMapping2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASV1SymbolMapping v1SymbolMapping1 = OASV1SymbolMapping.getExample();
        OASV1SymbolMapping v1SymbolMapping2 = OASV1SymbolMapping.getExample();
        OASV1SymbolMapping v1SymbolMapping3 = new OASV1SymbolMapping();
        OASV1SymbolMapping v1SymbolMapping4 = new OASV1SymbolMapping();

        System.assert(v1SymbolMapping1.equals(v1SymbolMapping2));
        System.assert(v1SymbolMapping3.equals(v1SymbolMapping4));
        System.assertEquals(v1SymbolMapping1.hashCode(), v1SymbolMapping2.hashCode());
        System.assertEquals(v1SymbolMapping3.hashCode(), v1SymbolMapping4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASV1SymbolMapping v1SymbolMapping = new OASV1SymbolMapping();
        Map<String, String> x-property-mappings = v1SymbolMapping.getx-property-mappings();
        System.assertEquals('symbolId', x-property-mappings.get('symbol_id'));
        System.assertEquals('symbolIdExchange', x-property-mappings.get('symbol_id_exchange'));
        System.assertEquals('coinapiDatainfoId', x-property-mappings.get('coinapi_datainfo_id'));
        System.assertEquals('assetIdBaseExchange', x-property-mappings.get('asset_id_base_exchange'));
        System.assertEquals('assetIdQuoteExchange', x-property-mappings.get('asset_id_quote_exchange'));
        System.assertEquals('assetIdBase', x-property-mappings.get('asset_id_base'));
        System.assertEquals('assetIdQuote', x-property-mappings.get('asset_id_quote'));
        System.assertEquals('pricePrecision', x-property-mappings.get('price_precision'));
        System.assertEquals('sizePrecision', x-property-mappings.get('size_precision'));
    }
}
