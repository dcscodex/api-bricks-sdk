@isTest
private class OASV1IconTest {
    @isTest
    private static void equalsSameInstance() {
        OASV1Icon v1Icon1 = OASV1Icon.getExample();
        OASV1Icon v1Icon2 = v1Icon1;
        OASV1Icon v1Icon3 = new OASV1Icon();
        OASV1Icon v1Icon4 = v1Icon3;

        System.assert(v1Icon1.equals(v1Icon2));
        System.assert(v1Icon2.equals(v1Icon1));
        System.assert(v1Icon1.equals(v1Icon1));
        System.assert(v1Icon3.equals(v1Icon4));
        System.assert(v1Icon4.equals(v1Icon3));
        System.assert(v1Icon3.equals(v1Icon3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASV1Icon v1Icon1 = OASV1Icon.getExample();
        OASV1Icon v1Icon2 = OASV1Icon.getExample();
        OASV1Icon v1Icon3 = new OASV1Icon();
        OASV1Icon v1Icon4 = new OASV1Icon();

        System.assert(v1Icon1.equals(v1Icon2));
        System.assert(v1Icon2.equals(v1Icon1));
        System.assert(v1Icon3.equals(v1Icon4));
        System.assert(v1Icon4.equals(v1Icon3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASV1Icon v1Icon1 = OASV1Icon.getExample();
        OASV1Icon v1Icon2 = new OASV1Icon();

        System.assertEquals(false, v1Icon1.equals('foo'));
        System.assertEquals(false, v1Icon2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASV1Icon v1Icon1 = OASV1Icon.getExample();
        OASV1Icon v1Icon2 = new OASV1Icon();
        OASV1Icon v1Icon3;

        System.assertEquals(false, v1Icon1.equals(v1Icon3));
        System.assertEquals(false, v1Icon2.equals(v1Icon3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASV1Icon v1Icon1 = OASV1Icon.getExample();
        OASV1Icon v1Icon2 = new OASV1Icon();

        System.assertEquals(v1Icon1.hashCode(), v1Icon1.hashCode());
        System.assertEquals(v1Icon2.hashCode(), v1Icon2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASV1Icon v1Icon1 = OASV1Icon.getExample();
        OASV1Icon v1Icon2 = OASV1Icon.getExample();
        OASV1Icon v1Icon3 = new OASV1Icon();
        OASV1Icon v1Icon4 = new OASV1Icon();

        System.assert(v1Icon1.equals(v1Icon2));
        System.assert(v1Icon3.equals(v1Icon4));
        System.assertEquals(v1Icon1.hashCode(), v1Icon2.hashCode());
        System.assertEquals(v1Icon3.hashCode(), v1Icon4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASV1Icon v1Icon = new OASV1Icon();
        Map<String, String> x-property-mappings = v1Icon.getx-property-mappings();
        System.assertEquals('exchangeId', x-property-mappings.get('exchange_id'));
        System.assertEquals('assetId', x-property-mappings.get('asset_id'));
    }
}
