@isTest
private class OASAdminSystemEventModelTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdminSystemEventModel adminSystemEventModel1 = OASAdminSystemEventModel.getExample();
        OASAdminSystemEventModel adminSystemEventModel2 = adminSystemEventModel1;
        OASAdminSystemEventModel adminSystemEventModel3 = new OASAdminSystemEventModel();
        OASAdminSystemEventModel adminSystemEventModel4 = adminSystemEventModel3;

        System.assert(adminSystemEventModel1.equals(adminSystemEventModel2));
        System.assert(adminSystemEventModel2.equals(adminSystemEventModel1));
        System.assert(adminSystemEventModel1.equals(adminSystemEventModel1));
        System.assert(adminSystemEventModel3.equals(adminSystemEventModel4));
        System.assert(adminSystemEventModel4.equals(adminSystemEventModel3));
        System.assert(adminSystemEventModel3.equals(adminSystemEventModel3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdminSystemEventModel adminSystemEventModel1 = OASAdminSystemEventModel.getExample();
        OASAdminSystemEventModel adminSystemEventModel2 = OASAdminSystemEventModel.getExample();
        OASAdminSystemEventModel adminSystemEventModel3 = new OASAdminSystemEventModel();
        OASAdminSystemEventModel adminSystemEventModel4 = new OASAdminSystemEventModel();

        System.assert(adminSystemEventModel1.equals(adminSystemEventModel2));
        System.assert(adminSystemEventModel2.equals(adminSystemEventModel1));
        System.assert(adminSystemEventModel3.equals(adminSystemEventModel4));
        System.assert(adminSystemEventModel4.equals(adminSystemEventModel3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdminSystemEventModel adminSystemEventModel1 = OASAdminSystemEventModel.getExample();
        OASAdminSystemEventModel adminSystemEventModel2 = new OASAdminSystemEventModel();

        System.assertEquals(false, adminSystemEventModel1.equals('foo'));
        System.assertEquals(false, adminSystemEventModel2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdminSystemEventModel adminSystemEventModel1 = OASAdminSystemEventModel.getExample();
        OASAdminSystemEventModel adminSystemEventModel2 = new OASAdminSystemEventModel();
        OASAdminSystemEventModel adminSystemEventModel3;

        System.assertEquals(false, adminSystemEventModel1.equals(adminSystemEventModel3));
        System.assertEquals(false, adminSystemEventModel2.equals(adminSystemEventModel3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdminSystemEventModel adminSystemEventModel1 = OASAdminSystemEventModel.getExample();
        OASAdminSystemEventModel adminSystemEventModel2 = new OASAdminSystemEventModel();

        System.assertEquals(adminSystemEventModel1.hashCode(), adminSystemEventModel1.hashCode());
        System.assertEquals(adminSystemEventModel2.hashCode(), adminSystemEventModel2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdminSystemEventModel adminSystemEventModel1 = OASAdminSystemEventModel.getExample();
        OASAdminSystemEventModel adminSystemEventModel2 = OASAdminSystemEventModel.getExample();
        OASAdminSystemEventModel adminSystemEventModel3 = new OASAdminSystemEventModel();
        OASAdminSystemEventModel adminSystemEventModel4 = new OASAdminSystemEventModel();

        System.assert(adminSystemEventModel1.equals(adminSystemEventModel2));
        System.assert(adminSystemEventModel3.equals(adminSystemEventModel4));
        System.assertEquals(adminSystemEventModel1.hashCode(), adminSystemEventModel2.hashCode());
        System.assertEquals(adminSystemEventModel3.hashCode(), adminSystemEventModel4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAdminSystemEventModel adminSystemEventModel = new OASAdminSystemEventModel();
        Map<String, String> x-property-mappings = adminSystemEventModel.getx-property-mappings();
        System.assertEquals('timestampNanos', x-property-mappings.get('timestamp_nanos'));
        System.assertEquals('systemEvent', x-property-mappings.get('system_event'));
        System.assertEquals('systemEventCode', x-property-mappings.get('system_event_code'));
        System.assertEquals('systemEventText', x-property-mappings.get('system_event_text'));
        System.assertEquals('isSystemEventStartOfMessages', x-property-mappings.get('is_system_event_start_of_messages'));
        System.assertEquals('isSystemEventStartOfSystemHours', x-property-mappings.get('is_system_event_start_of_system_hours'));
        System.assertEquals('isSystemEventStartOfRegularMarketHours', x-property-mappings.get('is_system_event_start_of_regular_market_hours'));
        System.assertEquals('isSystemEventEndOfRegularMarketHours', x-property-mappings.get('is_system_event_end_of_regular_market_hours'));
        System.assertEquals('isSystemEventEndOfSystemHours', x-property-mappings.get('is_system_event_end_of_system_hours'));
        System.assertEquals('isSystemEventEndOfMessages', x-property-mappings.get('is_system_event_end_of_messages'));
    }
}
