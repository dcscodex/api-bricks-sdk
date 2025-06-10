@isTest
private class OASV1MetricTest {
    @isTest
    private static void equalsSameInstance() {
        OASV1Metric v1Metric1 = OASV1Metric.getExample();
        OASV1Metric v1Metric2 = v1Metric1;
        OASV1Metric v1Metric3 = new OASV1Metric();
        OASV1Metric v1Metric4 = v1Metric3;

        System.assert(v1Metric1.equals(v1Metric2));
        System.assert(v1Metric2.equals(v1Metric1));
        System.assert(v1Metric1.equals(v1Metric1));
        System.assert(v1Metric3.equals(v1Metric4));
        System.assert(v1Metric4.equals(v1Metric3));
        System.assert(v1Metric3.equals(v1Metric3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASV1Metric v1Metric1 = OASV1Metric.getExample();
        OASV1Metric v1Metric2 = OASV1Metric.getExample();
        OASV1Metric v1Metric3 = new OASV1Metric();
        OASV1Metric v1Metric4 = new OASV1Metric();

        System.assert(v1Metric1.equals(v1Metric2));
        System.assert(v1Metric2.equals(v1Metric1));
        System.assert(v1Metric3.equals(v1Metric4));
        System.assert(v1Metric4.equals(v1Metric3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASV1Metric v1Metric1 = OASV1Metric.getExample();
        OASV1Metric v1Metric2 = new OASV1Metric();

        System.assertEquals(false, v1Metric1.equals('foo'));
        System.assertEquals(false, v1Metric2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASV1Metric v1Metric1 = OASV1Metric.getExample();
        OASV1Metric v1Metric2 = new OASV1Metric();
        OASV1Metric v1Metric3;

        System.assertEquals(false, v1Metric1.equals(v1Metric3));
        System.assertEquals(false, v1Metric2.equals(v1Metric3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASV1Metric v1Metric1 = OASV1Metric.getExample();
        OASV1Metric v1Metric2 = new OASV1Metric();

        System.assertEquals(v1Metric1.hashCode(), v1Metric1.hashCode());
        System.assertEquals(v1Metric2.hashCode(), v1Metric2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASV1Metric v1Metric1 = OASV1Metric.getExample();
        OASV1Metric v1Metric2 = OASV1Metric.getExample();
        OASV1Metric v1Metric3 = new OASV1Metric();
        OASV1Metric v1Metric4 = new OASV1Metric();

        System.assert(v1Metric1.equals(v1Metric2));
        System.assert(v1Metric3.equals(v1Metric4));
        System.assertEquals(v1Metric1.hashCode(), v1Metric2.hashCode());
        System.assertEquals(v1Metric3.hashCode(), v1Metric4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASV1Metric v1Metric = new OASV1Metric();
        Map<String, String> x-property-mappings = v1Metric.getx-property-mappings();
        System.assertEquals('metricId', x-property-mappings.get('metric_id'));
    }
}
