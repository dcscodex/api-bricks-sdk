@isTest
private class OASAdminSecurityDirectoryModelTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdminSecurityDirectoryModel adminSecurityDirectoryModel1 = OASAdminSecurityDirectoryModel.getExample();
        OASAdminSecurityDirectoryModel adminSecurityDirectoryModel2 = adminSecurityDirectoryModel1;
        OASAdminSecurityDirectoryModel adminSecurityDirectoryModel3 = new OASAdminSecurityDirectoryModel();
        OASAdminSecurityDirectoryModel adminSecurityDirectoryModel4 = adminSecurityDirectoryModel3;

        System.assert(adminSecurityDirectoryModel1.equals(adminSecurityDirectoryModel2));
        System.assert(adminSecurityDirectoryModel2.equals(adminSecurityDirectoryModel1));
        System.assert(adminSecurityDirectoryModel1.equals(adminSecurityDirectoryModel1));
        System.assert(adminSecurityDirectoryModel3.equals(adminSecurityDirectoryModel4));
        System.assert(adminSecurityDirectoryModel4.equals(adminSecurityDirectoryModel3));
        System.assert(adminSecurityDirectoryModel3.equals(adminSecurityDirectoryModel3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdminSecurityDirectoryModel adminSecurityDirectoryModel1 = OASAdminSecurityDirectoryModel.getExample();
        OASAdminSecurityDirectoryModel adminSecurityDirectoryModel2 = OASAdminSecurityDirectoryModel.getExample();
        OASAdminSecurityDirectoryModel adminSecurityDirectoryModel3 = new OASAdminSecurityDirectoryModel();
        OASAdminSecurityDirectoryModel adminSecurityDirectoryModel4 = new OASAdminSecurityDirectoryModel();

        System.assert(adminSecurityDirectoryModel1.equals(adminSecurityDirectoryModel2));
        System.assert(adminSecurityDirectoryModel2.equals(adminSecurityDirectoryModel1));
        System.assert(adminSecurityDirectoryModel3.equals(adminSecurityDirectoryModel4));
        System.assert(adminSecurityDirectoryModel4.equals(adminSecurityDirectoryModel3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdminSecurityDirectoryModel adminSecurityDirectoryModel1 = OASAdminSecurityDirectoryModel.getExample();
        OASAdminSecurityDirectoryModel adminSecurityDirectoryModel2 = new OASAdminSecurityDirectoryModel();

        System.assertEquals(false, adminSecurityDirectoryModel1.equals('foo'));
        System.assertEquals(false, adminSecurityDirectoryModel2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdminSecurityDirectoryModel adminSecurityDirectoryModel1 = OASAdminSecurityDirectoryModel.getExample();
        OASAdminSecurityDirectoryModel adminSecurityDirectoryModel2 = new OASAdminSecurityDirectoryModel();
        OASAdminSecurityDirectoryModel adminSecurityDirectoryModel3;

        System.assertEquals(false, adminSecurityDirectoryModel1.equals(adminSecurityDirectoryModel3));
        System.assertEquals(false, adminSecurityDirectoryModel2.equals(adminSecurityDirectoryModel3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdminSecurityDirectoryModel adminSecurityDirectoryModel1 = OASAdminSecurityDirectoryModel.getExample();
        OASAdminSecurityDirectoryModel adminSecurityDirectoryModel2 = new OASAdminSecurityDirectoryModel();

        System.assertEquals(adminSecurityDirectoryModel1.hashCode(), adminSecurityDirectoryModel1.hashCode());
        System.assertEquals(adminSecurityDirectoryModel2.hashCode(), adminSecurityDirectoryModel2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdminSecurityDirectoryModel adminSecurityDirectoryModel1 = OASAdminSecurityDirectoryModel.getExample();
        OASAdminSecurityDirectoryModel adminSecurityDirectoryModel2 = OASAdminSecurityDirectoryModel.getExample();
        OASAdminSecurityDirectoryModel adminSecurityDirectoryModel3 = new OASAdminSecurityDirectoryModel();
        OASAdminSecurityDirectoryModel adminSecurityDirectoryModel4 = new OASAdminSecurityDirectoryModel();

        System.assert(adminSecurityDirectoryModel1.equals(adminSecurityDirectoryModel2));
        System.assert(adminSecurityDirectoryModel3.equals(adminSecurityDirectoryModel4));
        System.assertEquals(adminSecurityDirectoryModel1.hashCode(), adminSecurityDirectoryModel2.hashCode());
        System.assertEquals(adminSecurityDirectoryModel3.hashCode(), adminSecurityDirectoryModel4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAdminSecurityDirectoryModel adminSecurityDirectoryModel = new OASAdminSecurityDirectoryModel();
        Map<String, String> x-property-mappings = adminSecurityDirectoryModel.getx-property-mappings();
        System.assertEquals('timestampNanos', x-property-mappings.get('timestamp_nanos'));
        System.assertEquals('roundLotSize', x-property-mappings.get('round_lot_size'));
        System.assertEquals('adjustedPocPrice', x-property-mappings.get('adjusted_poc_price'));
        System.assertEquals('luldTier', x-property-mappings.get('luld_tier'));
        System.assertEquals('luldTierCode', x-property-mappings.get('luld_tier_code'));
        System.assertEquals('luldTierText', x-property-mappings.get('luld_tier_text'));
        System.assertEquals('isLuldTierNotApplicable', x-property-mappings.get('is_luld_tier_not_applicable'));
        System.assertEquals('isLuldTier1', x-property-mappings.get('is_luld_tier1'));
        System.assertEquals('isLuldTier2', x-property-mappings.get('is_luld_tier2'));
    }
}
