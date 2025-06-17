@isTest
private class OASFinFeedAPISymbolModelTest {
    @isTest
    private static void equalsSameInstance() {
        OASFinFeedAPISymbolModel finFeedAPISymbolModel1 = OASFinFeedAPISymbolModel.getExample();
        OASFinFeedAPISymbolModel finFeedAPISymbolModel2 = finFeedAPISymbolModel1;
        OASFinFeedAPISymbolModel finFeedAPISymbolModel3 = new OASFinFeedAPISymbolModel();
        OASFinFeedAPISymbolModel finFeedAPISymbolModel4 = finFeedAPISymbolModel3;

        System.assert(finFeedAPISymbolModel1.equals(finFeedAPISymbolModel2));
        System.assert(finFeedAPISymbolModel2.equals(finFeedAPISymbolModel1));
        System.assert(finFeedAPISymbolModel1.equals(finFeedAPISymbolModel1));
        System.assert(finFeedAPISymbolModel3.equals(finFeedAPISymbolModel4));
        System.assert(finFeedAPISymbolModel4.equals(finFeedAPISymbolModel3));
        System.assert(finFeedAPISymbolModel3.equals(finFeedAPISymbolModel3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASFinFeedAPISymbolModel finFeedAPISymbolModel1 = OASFinFeedAPISymbolModel.getExample();
        OASFinFeedAPISymbolModel finFeedAPISymbolModel2 = OASFinFeedAPISymbolModel.getExample();
        OASFinFeedAPISymbolModel finFeedAPISymbolModel3 = new OASFinFeedAPISymbolModel();
        OASFinFeedAPISymbolModel finFeedAPISymbolModel4 = new OASFinFeedAPISymbolModel();

        System.assert(finFeedAPISymbolModel1.equals(finFeedAPISymbolModel2));
        System.assert(finFeedAPISymbolModel2.equals(finFeedAPISymbolModel1));
        System.assert(finFeedAPISymbolModel3.equals(finFeedAPISymbolModel4));
        System.assert(finFeedAPISymbolModel4.equals(finFeedAPISymbolModel3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASFinFeedAPISymbolModel finFeedAPISymbolModel1 = OASFinFeedAPISymbolModel.getExample();
        OASFinFeedAPISymbolModel finFeedAPISymbolModel2 = new OASFinFeedAPISymbolModel();

        System.assertEquals(false, finFeedAPISymbolModel1.equals('foo'));
        System.assertEquals(false, finFeedAPISymbolModel2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASFinFeedAPISymbolModel finFeedAPISymbolModel1 = OASFinFeedAPISymbolModel.getExample();
        OASFinFeedAPISymbolModel finFeedAPISymbolModel2 = new OASFinFeedAPISymbolModel();
        OASFinFeedAPISymbolModel finFeedAPISymbolModel3;

        System.assertEquals(false, finFeedAPISymbolModel1.equals(finFeedAPISymbolModel3));
        System.assertEquals(false, finFeedAPISymbolModel2.equals(finFeedAPISymbolModel3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASFinFeedAPISymbolModel finFeedAPISymbolModel1 = OASFinFeedAPISymbolModel.getExample();
        OASFinFeedAPISymbolModel finFeedAPISymbolModel2 = new OASFinFeedAPISymbolModel();

        System.assertEquals(finFeedAPISymbolModel1.hashCode(), finFeedAPISymbolModel1.hashCode());
        System.assertEquals(finFeedAPISymbolModel2.hashCode(), finFeedAPISymbolModel2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASFinFeedAPISymbolModel finFeedAPISymbolModel1 = OASFinFeedAPISymbolModel.getExample();
        OASFinFeedAPISymbolModel finFeedAPISymbolModel2 = OASFinFeedAPISymbolModel.getExample();
        OASFinFeedAPISymbolModel finFeedAPISymbolModel3 = new OASFinFeedAPISymbolModel();
        OASFinFeedAPISymbolModel finFeedAPISymbolModel4 = new OASFinFeedAPISymbolModel();

        System.assert(finFeedAPISymbolModel1.equals(finFeedAPISymbolModel2));
        System.assert(finFeedAPISymbolModel3.equals(finFeedAPISymbolModel4));
        System.assertEquals(finFeedAPISymbolModel1.hashCode(), finFeedAPISymbolModel2.hashCode());
        System.assertEquals(finFeedAPISymbolModel3.hashCode(), finFeedAPISymbolModel4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASFinFeedAPISymbolModel finFeedAPISymbolModel = new OASFinFeedAPISymbolModel();
        Map<String, String> x-property-mappings = finFeedAPISymbolModel.getx-property-mappings();
        System.assertEquals('symbolId', x-property-mappings.get('symbol_id'));
        System.assertEquals('exchangeId', x-property-mappings.get('exchange_id'));
        System.assertEquals('securityCategory', x-property-mappings.get('security_category'));
        System.assertEquals('r_date', x-property-mappings.get('date'));
        System.assertEquals('assetClass', x-property-mappings.get('asset_class'));
        System.assertEquals('cfiCode', x-property-mappings.get('cfi_code'));
        System.assertEquals('cfiCategory', x-property-mappings.get('cfi_category'));
        System.assertEquals('cfiGroup', x-property-mappings.get('cfi_group'));
        System.assertEquals('cfiAttribute1', x-property-mappings.get('cfi_attribute1'));
        System.assertEquals('cfiAttribute2', x-property-mappings.get('cfi_attribute2'));
        System.assertEquals('cfiAttribute3', x-property-mappings.get('cfi_attribute3'));
        System.assertEquals('cfiAttribute4', x-property-mappings.get('cfi_attribute4'));
        System.assertEquals('cfiCategoryDesc', x-property-mappings.get('cfi_category_desc'));
        System.assertEquals('cfiGroupDesc', x-property-mappings.get('cfi_group_desc'));
        System.assertEquals('cfiAttribute1Desc', x-property-mappings.get('cfi_attribute1_desc'));
        System.assertEquals('cfiAttribute2Desc', x-property-mappings.get('cfi_attribute2_desc'));
        System.assertEquals('cfiAttribute3Desc', x-property-mappings.get('cfi_attribute3_desc'));
        System.assertEquals('cfiAttribute4Desc', x-property-mappings.get('cfi_attribute4_desc'));
    }
}
