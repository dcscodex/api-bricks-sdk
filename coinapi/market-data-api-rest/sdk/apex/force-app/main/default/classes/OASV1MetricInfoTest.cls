@isTest
private class OASV1MetricInfoTest {
    @isTest
    private static void equalsSameInstance() {
        OASV1MetricInfo v1MetricInfo1 = OASV1MetricInfo.getExample();
        OASV1MetricInfo v1MetricInfo2 = v1MetricInfo1;
        OASV1MetricInfo v1MetricInfo3 = new OASV1MetricInfo();
        OASV1MetricInfo v1MetricInfo4 = v1MetricInfo3;

        System.assert(v1MetricInfo1.equals(v1MetricInfo2));
        System.assert(v1MetricInfo2.equals(v1MetricInfo1));
        System.assert(v1MetricInfo1.equals(v1MetricInfo1));
        System.assert(v1MetricInfo3.equals(v1MetricInfo4));
        System.assert(v1MetricInfo4.equals(v1MetricInfo3));
        System.assert(v1MetricInfo3.equals(v1MetricInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASV1MetricInfo v1MetricInfo1 = OASV1MetricInfo.getExample();
        OASV1MetricInfo v1MetricInfo2 = OASV1MetricInfo.getExample();
        OASV1MetricInfo v1MetricInfo3 = new OASV1MetricInfo();
        OASV1MetricInfo v1MetricInfo4 = new OASV1MetricInfo();

        System.assert(v1MetricInfo1.equals(v1MetricInfo2));
        System.assert(v1MetricInfo2.equals(v1MetricInfo1));
        System.assert(v1MetricInfo3.equals(v1MetricInfo4));
        System.assert(v1MetricInfo4.equals(v1MetricInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASV1MetricInfo v1MetricInfo1 = OASV1MetricInfo.getExample();
        OASV1MetricInfo v1MetricInfo2 = new OASV1MetricInfo();

        System.assertEquals(false, v1MetricInfo1.equals('foo'));
        System.assertEquals(false, v1MetricInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASV1MetricInfo v1MetricInfo1 = OASV1MetricInfo.getExample();
        OASV1MetricInfo v1MetricInfo2 = new OASV1MetricInfo();
        OASV1MetricInfo v1MetricInfo3;

        System.assertEquals(false, v1MetricInfo1.equals(v1MetricInfo3));
        System.assertEquals(false, v1MetricInfo2.equals(v1MetricInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASV1MetricInfo v1MetricInfo1 = OASV1MetricInfo.getExample();
        OASV1MetricInfo v1MetricInfo2 = new OASV1MetricInfo();

        System.assertEquals(v1MetricInfo1.hashCode(), v1MetricInfo1.hashCode());
        System.assertEquals(v1MetricInfo2.hashCode(), v1MetricInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASV1MetricInfo v1MetricInfo1 = OASV1MetricInfo.getExample();
        OASV1MetricInfo v1MetricInfo2 = OASV1MetricInfo.getExample();
        OASV1MetricInfo v1MetricInfo3 = new OASV1MetricInfo();
        OASV1MetricInfo v1MetricInfo4 = new OASV1MetricInfo();

        System.assert(v1MetricInfo1.equals(v1MetricInfo2));
        System.assert(v1MetricInfo3.equals(v1MetricInfo4));
        System.assertEquals(v1MetricInfo1.hashCode(), v1MetricInfo2.hashCode());
        System.assertEquals(v1MetricInfo3.hashCode(), v1MetricInfo4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASV1MetricInfo v1MetricInfo = new OASV1MetricInfo();
        Map<String, String> x-property-mappings = v1MetricInfo.getx-property-mappings();
        System.assertEquals('metricId', x-property-mappings.get('metric_id'));
        System.assertEquals('sourceId', x-property-mappings.get('source_id'));
    }
}
