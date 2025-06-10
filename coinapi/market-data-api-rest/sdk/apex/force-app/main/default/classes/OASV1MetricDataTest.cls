@isTest
private class OASV1MetricDataTest {
    @isTest
    private static void equalsSameInstance() {
        OASV1MetricData v1MetricData1 = OASV1MetricData.getExample();
        OASV1MetricData v1MetricData2 = v1MetricData1;
        OASV1MetricData v1MetricData3 = new OASV1MetricData();
        OASV1MetricData v1MetricData4 = v1MetricData3;

        System.assert(v1MetricData1.equals(v1MetricData2));
        System.assert(v1MetricData2.equals(v1MetricData1));
        System.assert(v1MetricData1.equals(v1MetricData1));
        System.assert(v1MetricData3.equals(v1MetricData4));
        System.assert(v1MetricData4.equals(v1MetricData3));
        System.assert(v1MetricData3.equals(v1MetricData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASV1MetricData v1MetricData1 = OASV1MetricData.getExample();
        OASV1MetricData v1MetricData2 = OASV1MetricData.getExample();
        OASV1MetricData v1MetricData3 = new OASV1MetricData();
        OASV1MetricData v1MetricData4 = new OASV1MetricData();

        System.assert(v1MetricData1.equals(v1MetricData2));
        System.assert(v1MetricData2.equals(v1MetricData1));
        System.assert(v1MetricData3.equals(v1MetricData4));
        System.assert(v1MetricData4.equals(v1MetricData3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASV1MetricData v1MetricData1 = OASV1MetricData.getExample();
        OASV1MetricData v1MetricData2 = new OASV1MetricData();

        System.assertEquals(false, v1MetricData1.equals('foo'));
        System.assertEquals(false, v1MetricData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASV1MetricData v1MetricData1 = OASV1MetricData.getExample();
        OASV1MetricData v1MetricData2 = new OASV1MetricData();
        OASV1MetricData v1MetricData3;

        System.assertEquals(false, v1MetricData1.equals(v1MetricData3));
        System.assertEquals(false, v1MetricData2.equals(v1MetricData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASV1MetricData v1MetricData1 = OASV1MetricData.getExample();
        OASV1MetricData v1MetricData2 = new OASV1MetricData();

        System.assertEquals(v1MetricData1.hashCode(), v1MetricData1.hashCode());
        System.assertEquals(v1MetricData2.hashCode(), v1MetricData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASV1MetricData v1MetricData1 = OASV1MetricData.getExample();
        OASV1MetricData v1MetricData2 = OASV1MetricData.getExample();
        OASV1MetricData v1MetricData3 = new OASV1MetricData();
        OASV1MetricData v1MetricData4 = new OASV1MetricData();

        System.assert(v1MetricData1.equals(v1MetricData2));
        System.assert(v1MetricData3.equals(v1MetricData4));
        System.assertEquals(v1MetricData1.hashCode(), v1MetricData2.hashCode());
        System.assertEquals(v1MetricData3.hashCode(), v1MetricData4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASV1MetricData v1MetricData = new OASV1MetricData();
        Map<String, String> x-property-mappings = v1MetricData.getx-property-mappings();
        System.assertEquals('symbolId', x-property-mappings.get('symbol_id'));
        System.assertEquals('r_time', x-property-mappings.get('time'));
    }
}
