@isTest
private class OASOptionsOptionExchangeGroupTest {
    @isTest
    private static void equalsSameInstance() {
        OASOptionsOptionExchangeGroup optionsOptionExchangeGroup1 = OASOptionsOptionExchangeGroup.getExample();
        OASOptionsOptionExchangeGroup optionsOptionExchangeGroup2 = optionsOptionExchangeGroup1;
        OASOptionsOptionExchangeGroup optionsOptionExchangeGroup3 = new OASOptionsOptionExchangeGroup();
        OASOptionsOptionExchangeGroup optionsOptionExchangeGroup4 = optionsOptionExchangeGroup3;

        System.assert(optionsOptionExchangeGroup1.equals(optionsOptionExchangeGroup2));
        System.assert(optionsOptionExchangeGroup2.equals(optionsOptionExchangeGroup1));
        System.assert(optionsOptionExchangeGroup1.equals(optionsOptionExchangeGroup1));
        System.assert(optionsOptionExchangeGroup3.equals(optionsOptionExchangeGroup4));
        System.assert(optionsOptionExchangeGroup4.equals(optionsOptionExchangeGroup3));
        System.assert(optionsOptionExchangeGroup3.equals(optionsOptionExchangeGroup3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOptionsOptionExchangeGroup optionsOptionExchangeGroup1 = OASOptionsOptionExchangeGroup.getExample();
        OASOptionsOptionExchangeGroup optionsOptionExchangeGroup2 = OASOptionsOptionExchangeGroup.getExample();
        OASOptionsOptionExchangeGroup optionsOptionExchangeGroup3 = new OASOptionsOptionExchangeGroup();
        OASOptionsOptionExchangeGroup optionsOptionExchangeGroup4 = new OASOptionsOptionExchangeGroup();

        System.assert(optionsOptionExchangeGroup1.equals(optionsOptionExchangeGroup2));
        System.assert(optionsOptionExchangeGroup2.equals(optionsOptionExchangeGroup1));
        System.assert(optionsOptionExchangeGroup3.equals(optionsOptionExchangeGroup4));
        System.assert(optionsOptionExchangeGroup4.equals(optionsOptionExchangeGroup3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOptionsOptionExchangeGroup optionsOptionExchangeGroup1 = OASOptionsOptionExchangeGroup.getExample();
        OASOptionsOptionExchangeGroup optionsOptionExchangeGroup2 = new OASOptionsOptionExchangeGroup();

        System.assertEquals(false, optionsOptionExchangeGroup1.equals('foo'));
        System.assertEquals(false, optionsOptionExchangeGroup2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOptionsOptionExchangeGroup optionsOptionExchangeGroup1 = OASOptionsOptionExchangeGroup.getExample();
        OASOptionsOptionExchangeGroup optionsOptionExchangeGroup2 = new OASOptionsOptionExchangeGroup();
        OASOptionsOptionExchangeGroup optionsOptionExchangeGroup3;

        System.assertEquals(false, optionsOptionExchangeGroup1.equals(optionsOptionExchangeGroup3));
        System.assertEquals(false, optionsOptionExchangeGroup2.equals(optionsOptionExchangeGroup3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOptionsOptionExchangeGroup optionsOptionExchangeGroup1 = OASOptionsOptionExchangeGroup.getExample();
        OASOptionsOptionExchangeGroup optionsOptionExchangeGroup2 = new OASOptionsOptionExchangeGroup();

        System.assertEquals(optionsOptionExchangeGroup1.hashCode(), optionsOptionExchangeGroup1.hashCode());
        System.assertEquals(optionsOptionExchangeGroup2.hashCode(), optionsOptionExchangeGroup2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOptionsOptionExchangeGroup optionsOptionExchangeGroup1 = OASOptionsOptionExchangeGroup.getExample();
        OASOptionsOptionExchangeGroup optionsOptionExchangeGroup2 = OASOptionsOptionExchangeGroup.getExample();
        OASOptionsOptionExchangeGroup optionsOptionExchangeGroup3 = new OASOptionsOptionExchangeGroup();
        OASOptionsOptionExchangeGroup optionsOptionExchangeGroup4 = new OASOptionsOptionExchangeGroup();

        System.assert(optionsOptionExchangeGroup1.equals(optionsOptionExchangeGroup2));
        System.assert(optionsOptionExchangeGroup3.equals(optionsOptionExchangeGroup4));
        System.assertEquals(optionsOptionExchangeGroup1.hashCode(), optionsOptionExchangeGroup2.hashCode());
        System.assertEquals(optionsOptionExchangeGroup3.hashCode(), optionsOptionExchangeGroup4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOptionsOptionExchangeGroup optionsOptionExchangeGroup = new OASOptionsOptionExchangeGroup();
        Map<String, String> x-property-mappings = optionsOptionExchangeGroup.getx-property-mappings();
        System.assertEquals('assetIdBase', x-property-mappings.get('asset_id_base'));
        System.assertEquals('assetIdQuote', x-property-mappings.get('asset_id_quote'));
        System.assertEquals('underlyingPrice', x-property-mappings.get('underlying_price'));
        System.assertEquals('timeExpiration', x-property-mappings.get('time_expiration'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASOptionsOptionExchangeGroup optionsOptionExchangeGroup = new OASOptionsOptionExchangeGroup();
        System.assertEquals(new List<OASOptionsStrike>(), optionsOptionExchangeGroup.strikes);
        System.assertEquals(null, optionsOptionExchangeGroup.assetIdBase);
        System.assertEquals(null, optionsOptionExchangeGroup.assetIdQuote);
        System.assertEquals(null, optionsOptionExchangeGroup.underlyingPrice);
        System.assertEquals(null, optionsOptionExchangeGroup.timeExpiration);
    }
}
