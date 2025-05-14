@isTest
private class OASAdminShortSalePriceTestStatusModeTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdminShortSalePriceTestStatusMode adminShortSalePriceTestStatusModel1 = OASAdminShortSalePriceTestStatusMode.getExample();
        OASAdminShortSalePriceTestStatusMode adminShortSalePriceTestStatusModel2 = adminShortSalePriceTestStatusModel1;
        OASAdminShortSalePriceTestStatusMode adminShortSalePriceTestStatusModel3 = new OASAdminShortSalePriceTestStatusMode();
        OASAdminShortSalePriceTestStatusMode adminShortSalePriceTestStatusModel4 = adminShortSalePriceTestStatusModel3;

        System.assert(adminShortSalePriceTestStatusModel1.equals(adminShortSalePriceTestStatusModel2));
        System.assert(adminShortSalePriceTestStatusModel2.equals(adminShortSalePriceTestStatusModel1));
        System.assert(adminShortSalePriceTestStatusModel1.equals(adminShortSalePriceTestStatusModel1));
        System.assert(adminShortSalePriceTestStatusModel3.equals(adminShortSalePriceTestStatusModel4));
        System.assert(adminShortSalePriceTestStatusModel4.equals(adminShortSalePriceTestStatusModel3));
        System.assert(adminShortSalePriceTestStatusModel3.equals(adminShortSalePriceTestStatusModel3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdminShortSalePriceTestStatusMode adminShortSalePriceTestStatusModel1 = OASAdminShortSalePriceTestStatusMode.getExample();
        OASAdminShortSalePriceTestStatusMode adminShortSalePriceTestStatusModel2 = OASAdminShortSalePriceTestStatusMode.getExample();
        OASAdminShortSalePriceTestStatusMode adminShortSalePriceTestStatusModel3 = new OASAdminShortSalePriceTestStatusMode();
        OASAdminShortSalePriceTestStatusMode adminShortSalePriceTestStatusModel4 = new OASAdminShortSalePriceTestStatusMode();

        System.assert(adminShortSalePriceTestStatusModel1.equals(adminShortSalePriceTestStatusModel2));
        System.assert(adminShortSalePriceTestStatusModel2.equals(adminShortSalePriceTestStatusModel1));
        System.assert(adminShortSalePriceTestStatusModel3.equals(adminShortSalePriceTestStatusModel4));
        System.assert(adminShortSalePriceTestStatusModel4.equals(adminShortSalePriceTestStatusModel3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdminShortSalePriceTestStatusMode adminShortSalePriceTestStatusModel1 = OASAdminShortSalePriceTestStatusMode.getExample();
        OASAdminShortSalePriceTestStatusMode adminShortSalePriceTestStatusModel2 = new OASAdminShortSalePriceTestStatusMode();

        System.assertEquals(false, adminShortSalePriceTestStatusModel1.equals('foo'));
        System.assertEquals(false, adminShortSalePriceTestStatusModel2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdminShortSalePriceTestStatusMode adminShortSalePriceTestStatusModel1 = OASAdminShortSalePriceTestStatusMode.getExample();
        OASAdminShortSalePriceTestStatusMode adminShortSalePriceTestStatusModel2 = new OASAdminShortSalePriceTestStatusMode();
        OASAdminShortSalePriceTestStatusMode adminShortSalePriceTestStatusModel3;

        System.assertEquals(false, adminShortSalePriceTestStatusModel1.equals(adminShortSalePriceTestStatusModel3));
        System.assertEquals(false, adminShortSalePriceTestStatusModel2.equals(adminShortSalePriceTestStatusModel3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdminShortSalePriceTestStatusMode adminShortSalePriceTestStatusModel1 = OASAdminShortSalePriceTestStatusMode.getExample();
        OASAdminShortSalePriceTestStatusMode adminShortSalePriceTestStatusModel2 = new OASAdminShortSalePriceTestStatusMode();

        System.assertEquals(adminShortSalePriceTestStatusModel1.hashCode(), adminShortSalePriceTestStatusModel1.hashCode());
        System.assertEquals(adminShortSalePriceTestStatusModel2.hashCode(), adminShortSalePriceTestStatusModel2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdminShortSalePriceTestStatusMode adminShortSalePriceTestStatusModel1 = OASAdminShortSalePriceTestStatusMode.getExample();
        OASAdminShortSalePriceTestStatusMode adminShortSalePriceTestStatusModel2 = OASAdminShortSalePriceTestStatusMode.getExample();
        OASAdminShortSalePriceTestStatusMode adminShortSalePriceTestStatusModel3 = new OASAdminShortSalePriceTestStatusMode();
        OASAdminShortSalePriceTestStatusMode adminShortSalePriceTestStatusModel4 = new OASAdminShortSalePriceTestStatusMode();

        System.assert(adminShortSalePriceTestStatusModel1.equals(adminShortSalePriceTestStatusModel2));
        System.assert(adminShortSalePriceTestStatusModel3.equals(adminShortSalePriceTestStatusModel4));
        System.assertEquals(adminShortSalePriceTestStatusModel1.hashCode(), adminShortSalePriceTestStatusModel2.hashCode());
        System.assertEquals(adminShortSalePriceTestStatusModel3.hashCode(), adminShortSalePriceTestStatusModel4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAdminShortSalePriceTestStatusMode adminShortSalePriceTestStatusModel = new OASAdminShortSalePriceTestStatusMode();
        Map<String, String> x-property-mappings = adminShortSalePriceTestStatusModel.getx-property-mappings();
        System.assertEquals('timestampNanos', x-property-mappings.get('timestamp_nanos'));
        System.assertEquals('shortSalePriceTestStatus', x-property-mappings.get('short_sale_price_test_status'));
        System.assertEquals('shortSalePriceTestStatusCode', x-property-mappings.get('short_sale_price_test_status_code'));
        System.assertEquals('shortSalePriceTestStatusText', x-property-mappings.get('short_sale_price_test_status_text'));
        System.assertEquals('isShortSalePriceTestNotInEffect', x-property-mappings.get('is_short_sale_price_test_not_in_effect'));
        System.assertEquals('isShortSalePriceTestInEffect', x-property-mappings.get('is_short_sale_price_test_in_effect'));
        System.assertEquals('detailCode', x-property-mappings.get('detail_code'));
        System.assertEquals('detailText', x-property-mappings.get('detail_text'));
        System.assertEquals('isDetailNoPriceTest', x-property-mappings.get('is_detail_no_price_test'));
        System.assertEquals('isDetailActivated', x-property-mappings.get('is_detail_activated'));
        System.assertEquals('isDetailContinued', x-property-mappings.get('is_detail_continued'));
        System.assertEquals('isDetailDeactivated', x-property-mappings.get('is_detail_deactivated'));
        System.assertEquals('isDetailNotAvailable', x-property-mappings.get('is_detail_not_available'));
    }
}
