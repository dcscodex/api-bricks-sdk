@isTest
private class OASV1GeneralDataTest {
    @isTest
    private static void equalsSameInstance() {
        OASV1GeneralData v1GeneralData1 = OASV1GeneralData.getExample();
        OASV1GeneralData v1GeneralData2 = v1GeneralData1;
        OASV1GeneralData v1GeneralData3 = new OASV1GeneralData();
        OASV1GeneralData v1GeneralData4 = v1GeneralData3;

        System.assert(v1GeneralData1.equals(v1GeneralData2));
        System.assert(v1GeneralData2.equals(v1GeneralData1));
        System.assert(v1GeneralData1.equals(v1GeneralData1));
        System.assert(v1GeneralData3.equals(v1GeneralData4));
        System.assert(v1GeneralData4.equals(v1GeneralData3));
        System.assert(v1GeneralData3.equals(v1GeneralData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASV1GeneralData v1GeneralData1 = OASV1GeneralData.getExample();
        OASV1GeneralData v1GeneralData2 = OASV1GeneralData.getExample();
        OASV1GeneralData v1GeneralData3 = new OASV1GeneralData();
        OASV1GeneralData v1GeneralData4 = new OASV1GeneralData();

        System.assert(v1GeneralData1.equals(v1GeneralData2));
        System.assert(v1GeneralData2.equals(v1GeneralData1));
        System.assert(v1GeneralData3.equals(v1GeneralData4));
        System.assert(v1GeneralData4.equals(v1GeneralData3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASV1GeneralData v1GeneralData1 = OASV1GeneralData.getExample();
        OASV1GeneralData v1GeneralData2 = new OASV1GeneralData();

        System.assertEquals(false, v1GeneralData1.equals('foo'));
        System.assertEquals(false, v1GeneralData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASV1GeneralData v1GeneralData1 = OASV1GeneralData.getExample();
        OASV1GeneralData v1GeneralData2 = new OASV1GeneralData();
        OASV1GeneralData v1GeneralData3;

        System.assertEquals(false, v1GeneralData1.equals(v1GeneralData3));
        System.assertEquals(false, v1GeneralData2.equals(v1GeneralData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASV1GeneralData v1GeneralData1 = OASV1GeneralData.getExample();
        OASV1GeneralData v1GeneralData2 = new OASV1GeneralData();

        System.assertEquals(v1GeneralData1.hashCode(), v1GeneralData1.hashCode());
        System.assertEquals(v1GeneralData2.hashCode(), v1GeneralData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASV1GeneralData v1GeneralData1 = OASV1GeneralData.getExample();
        OASV1GeneralData v1GeneralData2 = OASV1GeneralData.getExample();
        OASV1GeneralData v1GeneralData3 = new OASV1GeneralData();
        OASV1GeneralData v1GeneralData4 = new OASV1GeneralData();

        System.assert(v1GeneralData1.equals(v1GeneralData2));
        System.assert(v1GeneralData3.equals(v1GeneralData4));
        System.assertEquals(v1GeneralData1.hashCode(), v1GeneralData2.hashCode());
        System.assertEquals(v1GeneralData3.hashCode(), v1GeneralData4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASV1GeneralData v1GeneralData = new OASV1GeneralData();
        Map<String, String> x-property-mappings = v1GeneralData.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('exchangeId', x-property-mappings.get('exchange_id'));
        System.assertEquals('assetId', x-property-mappings.get('asset_id'));
        System.assertEquals('symbolId', x-property-mappings.get('symbol_id'));
        System.assertEquals('metricId', x-property-mappings.get('metric_id'));
        System.assertEquals('valueDecimal', x-property-mappings.get('value_decimal'));
        System.assertEquals('valueText', x-property-mappings.get('value_text'));
        System.assertEquals('valueTime', x-property-mappings.get('value_time'));
    }
}
