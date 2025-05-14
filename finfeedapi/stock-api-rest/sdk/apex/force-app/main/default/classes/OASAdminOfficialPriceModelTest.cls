@isTest
private class OASAdminOfficialPriceModelTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdminOfficialPriceModel adminOfficialPriceModel1 = OASAdminOfficialPriceModel.getExample();
        OASAdminOfficialPriceModel adminOfficialPriceModel2 = adminOfficialPriceModel1;
        OASAdminOfficialPriceModel adminOfficialPriceModel3 = new OASAdminOfficialPriceModel();
        OASAdminOfficialPriceModel adminOfficialPriceModel4 = adminOfficialPriceModel3;

        System.assert(adminOfficialPriceModel1.equals(adminOfficialPriceModel2));
        System.assert(adminOfficialPriceModel2.equals(adminOfficialPriceModel1));
        System.assert(adminOfficialPriceModel1.equals(adminOfficialPriceModel1));
        System.assert(adminOfficialPriceModel3.equals(adminOfficialPriceModel4));
        System.assert(adminOfficialPriceModel4.equals(adminOfficialPriceModel3));
        System.assert(adminOfficialPriceModel3.equals(adminOfficialPriceModel3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdminOfficialPriceModel adminOfficialPriceModel1 = OASAdminOfficialPriceModel.getExample();
        OASAdminOfficialPriceModel adminOfficialPriceModel2 = OASAdminOfficialPriceModel.getExample();
        OASAdminOfficialPriceModel adminOfficialPriceModel3 = new OASAdminOfficialPriceModel();
        OASAdminOfficialPriceModel adminOfficialPriceModel4 = new OASAdminOfficialPriceModel();

        System.assert(adminOfficialPriceModel1.equals(adminOfficialPriceModel2));
        System.assert(adminOfficialPriceModel2.equals(adminOfficialPriceModel1));
        System.assert(adminOfficialPriceModel3.equals(adminOfficialPriceModel4));
        System.assert(adminOfficialPriceModel4.equals(adminOfficialPriceModel3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdminOfficialPriceModel adminOfficialPriceModel1 = OASAdminOfficialPriceModel.getExample();
        OASAdminOfficialPriceModel adminOfficialPriceModel2 = new OASAdminOfficialPriceModel();

        System.assertEquals(false, adminOfficialPriceModel1.equals('foo'));
        System.assertEquals(false, adminOfficialPriceModel2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdminOfficialPriceModel adminOfficialPriceModel1 = OASAdminOfficialPriceModel.getExample();
        OASAdminOfficialPriceModel adminOfficialPriceModel2 = new OASAdminOfficialPriceModel();
        OASAdminOfficialPriceModel adminOfficialPriceModel3;

        System.assertEquals(false, adminOfficialPriceModel1.equals(adminOfficialPriceModel3));
        System.assertEquals(false, adminOfficialPriceModel2.equals(adminOfficialPriceModel3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdminOfficialPriceModel adminOfficialPriceModel1 = OASAdminOfficialPriceModel.getExample();
        OASAdminOfficialPriceModel adminOfficialPriceModel2 = new OASAdminOfficialPriceModel();

        System.assertEquals(adminOfficialPriceModel1.hashCode(), adminOfficialPriceModel1.hashCode());
        System.assertEquals(adminOfficialPriceModel2.hashCode(), adminOfficialPriceModel2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdminOfficialPriceModel adminOfficialPriceModel1 = OASAdminOfficialPriceModel.getExample();
        OASAdminOfficialPriceModel adminOfficialPriceModel2 = OASAdminOfficialPriceModel.getExample();
        OASAdminOfficialPriceModel adminOfficialPriceModel3 = new OASAdminOfficialPriceModel();
        OASAdminOfficialPriceModel adminOfficialPriceModel4 = new OASAdminOfficialPriceModel();

        System.assert(adminOfficialPriceModel1.equals(adminOfficialPriceModel2));
        System.assert(adminOfficialPriceModel3.equals(adminOfficialPriceModel4));
        System.assertEquals(adminOfficialPriceModel1.hashCode(), adminOfficialPriceModel2.hashCode());
        System.assertEquals(adminOfficialPriceModel3.hashCode(), adminOfficialPriceModel4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAdminOfficialPriceModel adminOfficialPriceModel = new OASAdminOfficialPriceModel();
        Map<String, String> x-property-mappings = adminOfficialPriceModel.getx-property-mappings();
        System.assertEquals('timestampNanos', x-property-mappings.get('timestamp_nanos'));
        System.assertEquals('priceType', x-property-mappings.get('price_type'));
        System.assertEquals('priceTypeCode', x-property-mappings.get('price_type_code'));
        System.assertEquals('priceTypeText', x-property-mappings.get('price_type_text'));
        System.assertEquals('isPriceTypeOpening', x-property-mappings.get('is_price_type_opening'));
        System.assertEquals('isPriceTypeClosing', x-property-mappings.get('is_price_type_closing'));
        System.assertEquals('officialPrice', x-property-mappings.get('official_price'));
    }
}
