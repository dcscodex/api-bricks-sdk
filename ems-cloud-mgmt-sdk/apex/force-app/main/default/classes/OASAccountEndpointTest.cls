@isTest
private class OASAccountEndpointTest {
    @isTest
    private static void equalsSameInstance() {
        OASAccountEndpoint accountEndpoint1 = OASAccountEndpoint.getExample();
        OASAccountEndpoint accountEndpoint2 = accountEndpoint1;
        OASAccountEndpoint accountEndpoint3 = new OASAccountEndpoint();
        OASAccountEndpoint accountEndpoint4 = accountEndpoint3;

        System.assert(accountEndpoint1.equals(accountEndpoint2));
        System.assert(accountEndpoint2.equals(accountEndpoint1));
        System.assert(accountEndpoint1.equals(accountEndpoint1));
        System.assert(accountEndpoint3.equals(accountEndpoint4));
        System.assert(accountEndpoint4.equals(accountEndpoint3));
        System.assert(accountEndpoint3.equals(accountEndpoint3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAccountEndpoint accountEndpoint1 = OASAccountEndpoint.getExample();
        OASAccountEndpoint accountEndpoint2 = OASAccountEndpoint.getExample();
        OASAccountEndpoint accountEndpoint3 = new OASAccountEndpoint();
        OASAccountEndpoint accountEndpoint4 = new OASAccountEndpoint();

        System.assert(accountEndpoint1.equals(accountEndpoint2));
        System.assert(accountEndpoint2.equals(accountEndpoint1));
        System.assert(accountEndpoint3.equals(accountEndpoint4));
        System.assert(accountEndpoint4.equals(accountEndpoint3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAccountEndpoint accountEndpoint1 = OASAccountEndpoint.getExample();
        OASAccountEndpoint accountEndpoint2 = new OASAccountEndpoint();

        System.assertEquals(false, accountEndpoint1.equals('foo'));
        System.assertEquals(false, accountEndpoint2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAccountEndpoint accountEndpoint1 = OASAccountEndpoint.getExample();
        OASAccountEndpoint accountEndpoint2 = new OASAccountEndpoint();
        OASAccountEndpoint accountEndpoint3;

        System.assertEquals(false, accountEndpoint1.equals(accountEndpoint3));
        System.assertEquals(false, accountEndpoint2.equals(accountEndpoint3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAccountEndpoint accountEndpoint1 = OASAccountEndpoint.getExample();
        OASAccountEndpoint accountEndpoint2 = new OASAccountEndpoint();

        System.assertEquals(accountEndpoint1.hashCode(), accountEndpoint1.hashCode());
        System.assertEquals(accountEndpoint2.hashCode(), accountEndpoint2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAccountEndpoint accountEndpoint1 = OASAccountEndpoint.getExample();
        OASAccountEndpoint accountEndpoint2 = OASAccountEndpoint.getExample();
        OASAccountEndpoint accountEndpoint3 = new OASAccountEndpoint();
        OASAccountEndpoint accountEndpoint4 = new OASAccountEndpoint();

        System.assert(accountEndpoint1.equals(accountEndpoint2));
        System.assert(accountEndpoint3.equals(accountEndpoint4));
        System.assertEquals(accountEndpoint1.hashCode(), accountEndpoint2.hashCode());
        System.assertEquals(accountEndpoint3.hashCode(), accountEndpoint4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAccountEndpoint accountEndpoint = new OASAccountEndpoint();
        Map<String, String> x-property-mappings = accountEndpoint.getx-property-mappings();
        System.assertEquals('exchangeId', x-property-mappings.get('exchange_id'));
        System.assertEquals('locationId', x-property-mappings.get('location_id'));
        System.assertEquals('endpointSchema', x-property-mappings.get('endpoint_schema'));
        System.assertEquals('endpointHost', x-property-mappings.get('endpoint_host'));
        System.assertEquals('endpointUrl', x-property-mappings.get('endpoint_url'));
    }
}
