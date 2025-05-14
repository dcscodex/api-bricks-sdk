@isTest
private class OASAdminAdminMessageModelTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdminAdminMessageModel adminAdminMessageModel1 = OASAdminAdminMessageModel.getExample();
        OASAdminAdminMessageModel adminAdminMessageModel2 = adminAdminMessageModel1;
        OASAdminAdminMessageModel adminAdminMessageModel3 = new OASAdminAdminMessageModel();
        OASAdminAdminMessageModel adminAdminMessageModel4 = adminAdminMessageModel3;

        System.assert(adminAdminMessageModel1.equals(adminAdminMessageModel2));
        System.assert(adminAdminMessageModel2.equals(adminAdminMessageModel1));
        System.assert(adminAdminMessageModel1.equals(adminAdminMessageModel1));
        System.assert(adminAdminMessageModel3.equals(adminAdminMessageModel4));
        System.assert(adminAdminMessageModel4.equals(adminAdminMessageModel3));
        System.assert(adminAdminMessageModel3.equals(adminAdminMessageModel3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdminAdminMessageModel adminAdminMessageModel1 = OASAdminAdminMessageModel.getExample();
        OASAdminAdminMessageModel adminAdminMessageModel2 = OASAdminAdminMessageModel.getExample();
        OASAdminAdminMessageModel adminAdminMessageModel3 = new OASAdminAdminMessageModel();
        OASAdminAdminMessageModel adminAdminMessageModel4 = new OASAdminAdminMessageModel();

        System.assert(adminAdminMessageModel1.equals(adminAdminMessageModel2));
        System.assert(adminAdminMessageModel2.equals(adminAdminMessageModel1));
        System.assert(adminAdminMessageModel3.equals(adminAdminMessageModel4));
        System.assert(adminAdminMessageModel4.equals(adminAdminMessageModel3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdminAdminMessageModel adminAdminMessageModel1 = OASAdminAdminMessageModel.getExample();
        OASAdminAdminMessageModel adminAdminMessageModel2 = new OASAdminAdminMessageModel();

        System.assertEquals(false, adminAdminMessageModel1.equals('foo'));
        System.assertEquals(false, adminAdminMessageModel2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdminAdminMessageModel adminAdminMessageModel1 = OASAdminAdminMessageModel.getExample();
        OASAdminAdminMessageModel adminAdminMessageModel2 = new OASAdminAdminMessageModel();
        OASAdminAdminMessageModel adminAdminMessageModel3;

        System.assertEquals(false, adminAdminMessageModel1.equals(adminAdminMessageModel3));
        System.assertEquals(false, adminAdminMessageModel2.equals(adminAdminMessageModel3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdminAdminMessageModel adminAdminMessageModel1 = OASAdminAdminMessageModel.getExample();
        OASAdminAdminMessageModel adminAdminMessageModel2 = new OASAdminAdminMessageModel();

        System.assertEquals(adminAdminMessageModel1.hashCode(), adminAdminMessageModel1.hashCode());
        System.assertEquals(adminAdminMessageModel2.hashCode(), adminAdminMessageModel2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdminAdminMessageModel adminAdminMessageModel1 = OASAdminAdminMessageModel.getExample();
        OASAdminAdminMessageModel adminAdminMessageModel2 = OASAdminAdminMessageModel.getExample();
        OASAdminAdminMessageModel adminAdminMessageModel3 = new OASAdminAdminMessageModel();
        OASAdminAdminMessageModel adminAdminMessageModel4 = new OASAdminAdminMessageModel();

        System.assert(adminAdminMessageModel1.equals(adminAdminMessageModel2));
        System.assert(adminAdminMessageModel3.equals(adminAdminMessageModel4));
        System.assertEquals(adminAdminMessageModel1.hashCode(), adminAdminMessageModel2.hashCode());
        System.assertEquals(adminAdminMessageModel3.hashCode(), adminAdminMessageModel4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAdminAdminMessageModel adminAdminMessageModel = new OASAdminAdminMessageModel();
        Map<String, String> x-property-mappings = adminAdminMessageModel.getx-property-mappings();
        System.assertEquals('tradingStatus', x-property-mappings.get('trading_status'));
        System.assertEquals('officialPrice', x-property-mappings.get('official_price'));
        System.assertEquals('securityEvent', x-property-mappings.get('security_event'));
        System.assertEquals('auctionInformation', x-property-mappings.get('auction_information'));
        System.assertEquals('shortSalePriceTest', x-property-mappings.get('short_sale_price_test'));
        System.assertEquals('operationalHaltStatus', x-property-mappings.get('operational_halt_status'));
        System.assertEquals('retailLiquidityIndicator', x-property-mappings.get('retail_liquidity_indicator'));
        System.assertEquals('systemEvent', x-property-mappings.get('system_event'));
        System.assertEquals('securityDirectory', x-property-mappings.get('security_directory'));
    }
}
