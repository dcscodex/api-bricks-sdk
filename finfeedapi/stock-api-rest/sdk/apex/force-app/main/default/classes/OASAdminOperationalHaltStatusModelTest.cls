@isTest
private class OASAdminOperationalHaltStatusModelTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdminOperationalHaltStatusModel adminOperationalHaltStatusModel1 = OASAdminOperationalHaltStatusModel.getExample();
        OASAdminOperationalHaltStatusModel adminOperationalHaltStatusModel2 = adminOperationalHaltStatusModel1;
        OASAdminOperationalHaltStatusModel adminOperationalHaltStatusModel3 = new OASAdminOperationalHaltStatusModel();
        OASAdminOperationalHaltStatusModel adminOperationalHaltStatusModel4 = adminOperationalHaltStatusModel3;

        System.assert(adminOperationalHaltStatusModel1.equals(adminOperationalHaltStatusModel2));
        System.assert(adminOperationalHaltStatusModel2.equals(adminOperationalHaltStatusModel1));
        System.assert(adminOperationalHaltStatusModel1.equals(adminOperationalHaltStatusModel1));
        System.assert(adminOperationalHaltStatusModel3.equals(adminOperationalHaltStatusModel4));
        System.assert(adminOperationalHaltStatusModel4.equals(adminOperationalHaltStatusModel3));
        System.assert(adminOperationalHaltStatusModel3.equals(adminOperationalHaltStatusModel3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdminOperationalHaltStatusModel adminOperationalHaltStatusModel1 = OASAdminOperationalHaltStatusModel.getExample();
        OASAdminOperationalHaltStatusModel adminOperationalHaltStatusModel2 = OASAdminOperationalHaltStatusModel.getExample();
        OASAdminOperationalHaltStatusModel adminOperationalHaltStatusModel3 = new OASAdminOperationalHaltStatusModel();
        OASAdminOperationalHaltStatusModel adminOperationalHaltStatusModel4 = new OASAdminOperationalHaltStatusModel();

        System.assert(adminOperationalHaltStatusModel1.equals(adminOperationalHaltStatusModel2));
        System.assert(adminOperationalHaltStatusModel2.equals(adminOperationalHaltStatusModel1));
        System.assert(adminOperationalHaltStatusModel3.equals(adminOperationalHaltStatusModel4));
        System.assert(adminOperationalHaltStatusModel4.equals(adminOperationalHaltStatusModel3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdminOperationalHaltStatusModel adminOperationalHaltStatusModel1 = OASAdminOperationalHaltStatusModel.getExample();
        OASAdminOperationalHaltStatusModel adminOperationalHaltStatusModel2 = new OASAdminOperationalHaltStatusModel();

        System.assertEquals(false, adminOperationalHaltStatusModel1.equals('foo'));
        System.assertEquals(false, adminOperationalHaltStatusModel2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdminOperationalHaltStatusModel adminOperationalHaltStatusModel1 = OASAdminOperationalHaltStatusModel.getExample();
        OASAdminOperationalHaltStatusModel adminOperationalHaltStatusModel2 = new OASAdminOperationalHaltStatusModel();
        OASAdminOperationalHaltStatusModel adminOperationalHaltStatusModel3;

        System.assertEquals(false, adminOperationalHaltStatusModel1.equals(adminOperationalHaltStatusModel3));
        System.assertEquals(false, adminOperationalHaltStatusModel2.equals(adminOperationalHaltStatusModel3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdminOperationalHaltStatusModel adminOperationalHaltStatusModel1 = OASAdminOperationalHaltStatusModel.getExample();
        OASAdminOperationalHaltStatusModel adminOperationalHaltStatusModel2 = new OASAdminOperationalHaltStatusModel();

        System.assertEquals(adminOperationalHaltStatusModel1.hashCode(), adminOperationalHaltStatusModel1.hashCode());
        System.assertEquals(adminOperationalHaltStatusModel2.hashCode(), adminOperationalHaltStatusModel2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdminOperationalHaltStatusModel adminOperationalHaltStatusModel1 = OASAdminOperationalHaltStatusModel.getExample();
        OASAdminOperationalHaltStatusModel adminOperationalHaltStatusModel2 = OASAdminOperationalHaltStatusModel.getExample();
        OASAdminOperationalHaltStatusModel adminOperationalHaltStatusModel3 = new OASAdminOperationalHaltStatusModel();
        OASAdminOperationalHaltStatusModel adminOperationalHaltStatusModel4 = new OASAdminOperationalHaltStatusModel();

        System.assert(adminOperationalHaltStatusModel1.equals(adminOperationalHaltStatusModel2));
        System.assert(adminOperationalHaltStatusModel3.equals(adminOperationalHaltStatusModel4));
        System.assertEquals(adminOperationalHaltStatusModel1.hashCode(), adminOperationalHaltStatusModel2.hashCode());
        System.assertEquals(adminOperationalHaltStatusModel3.hashCode(), adminOperationalHaltStatusModel4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAdminOperationalHaltStatusModel adminOperationalHaltStatusModel = new OASAdminOperationalHaltStatusModel();
        Map<String, String> x-property-mappings = adminOperationalHaltStatusModel.getx-property-mappings();
        System.assertEquals('timestampNanos', x-property-mappings.get('timestamp_nanos'));
        System.assertEquals('operationalHaltStatus', x-property-mappings.get('operational_halt_status'));
        System.assertEquals('operationalHaltStatusCode', x-property-mappings.get('operational_halt_status_code'));
        System.assertEquals('operationalHaltStatusText', x-property-mappings.get('operational_halt_status_text'));
        System.assertEquals('isOperationallyHalted', x-property-mappings.get('is_operationally_halted'));
        System.assertEquals('isNotOperationallyHalted', x-property-mappings.get('is_not_operationally_halted'));
    }
}
