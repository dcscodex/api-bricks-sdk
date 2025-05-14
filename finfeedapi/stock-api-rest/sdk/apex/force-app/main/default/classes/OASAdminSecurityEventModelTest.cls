@isTest
private class OASAdminSecurityEventModelTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdminSecurityEventModel adminSecurityEventModel1 = OASAdminSecurityEventModel.getExample();
        OASAdminSecurityEventModel adminSecurityEventModel2 = adminSecurityEventModel1;
        OASAdminSecurityEventModel adminSecurityEventModel3 = new OASAdminSecurityEventModel();
        OASAdminSecurityEventModel adminSecurityEventModel4 = adminSecurityEventModel3;

        System.assert(adminSecurityEventModel1.equals(adminSecurityEventModel2));
        System.assert(adminSecurityEventModel2.equals(adminSecurityEventModel1));
        System.assert(adminSecurityEventModel1.equals(adminSecurityEventModel1));
        System.assert(adminSecurityEventModel3.equals(adminSecurityEventModel4));
        System.assert(adminSecurityEventModel4.equals(adminSecurityEventModel3));
        System.assert(adminSecurityEventModel3.equals(adminSecurityEventModel3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdminSecurityEventModel adminSecurityEventModel1 = OASAdminSecurityEventModel.getExample();
        OASAdminSecurityEventModel adminSecurityEventModel2 = OASAdminSecurityEventModel.getExample();
        OASAdminSecurityEventModel adminSecurityEventModel3 = new OASAdminSecurityEventModel();
        OASAdminSecurityEventModel adminSecurityEventModel4 = new OASAdminSecurityEventModel();

        System.assert(adminSecurityEventModel1.equals(adminSecurityEventModel2));
        System.assert(adminSecurityEventModel2.equals(adminSecurityEventModel1));
        System.assert(adminSecurityEventModel3.equals(adminSecurityEventModel4));
        System.assert(adminSecurityEventModel4.equals(adminSecurityEventModel3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdminSecurityEventModel adminSecurityEventModel1 = OASAdminSecurityEventModel.getExample();
        OASAdminSecurityEventModel adminSecurityEventModel2 = new OASAdminSecurityEventModel();

        System.assertEquals(false, adminSecurityEventModel1.equals('foo'));
        System.assertEquals(false, adminSecurityEventModel2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdminSecurityEventModel adminSecurityEventModel1 = OASAdminSecurityEventModel.getExample();
        OASAdminSecurityEventModel adminSecurityEventModel2 = new OASAdminSecurityEventModel();
        OASAdminSecurityEventModel adminSecurityEventModel3;

        System.assertEquals(false, adminSecurityEventModel1.equals(adminSecurityEventModel3));
        System.assertEquals(false, adminSecurityEventModel2.equals(adminSecurityEventModel3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdminSecurityEventModel adminSecurityEventModel1 = OASAdminSecurityEventModel.getExample();
        OASAdminSecurityEventModel adminSecurityEventModel2 = new OASAdminSecurityEventModel();

        System.assertEquals(adminSecurityEventModel1.hashCode(), adminSecurityEventModel1.hashCode());
        System.assertEquals(adminSecurityEventModel2.hashCode(), adminSecurityEventModel2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdminSecurityEventModel adminSecurityEventModel1 = OASAdminSecurityEventModel.getExample();
        OASAdminSecurityEventModel adminSecurityEventModel2 = OASAdminSecurityEventModel.getExample();
        OASAdminSecurityEventModel adminSecurityEventModel3 = new OASAdminSecurityEventModel();
        OASAdminSecurityEventModel adminSecurityEventModel4 = new OASAdminSecurityEventModel();

        System.assert(adminSecurityEventModel1.equals(adminSecurityEventModel2));
        System.assert(adminSecurityEventModel3.equals(adminSecurityEventModel4));
        System.assertEquals(adminSecurityEventModel1.hashCode(), adminSecurityEventModel2.hashCode());
        System.assertEquals(adminSecurityEventModel3.hashCode(), adminSecurityEventModel4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAdminSecurityEventModel adminSecurityEventModel = new OASAdminSecurityEventModel();
        Map<String, String> x-property-mappings = adminSecurityEventModel.getx-property-mappings();
        System.assertEquals('timestampNanos', x-property-mappings.get('timestamp_nanos'));
        System.assertEquals('securityEvent', x-property-mappings.get('security_event'));
        System.assertEquals('securityEventCode', x-property-mappings.get('security_event_code'));
        System.assertEquals('securityEventText', x-property-mappings.get('security_event_text'));
        System.assertEquals('isOpeningProcessComplete', x-property-mappings.get('is_opening_process_complete'));
        System.assertEquals('isClosingProcessComplete', x-property-mappings.get('is_closing_process_complete'));
    }
}
