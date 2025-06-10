@isTest
private class OASV1ExchangeTest {
    @isTest
    private static void equalsSameInstance() {
        OASV1Exchange v1Exchange1 = OASV1Exchange.getExample();
        OASV1Exchange v1Exchange2 = v1Exchange1;
        OASV1Exchange v1Exchange3 = new OASV1Exchange();
        OASV1Exchange v1Exchange4 = v1Exchange3;

        System.assert(v1Exchange1.equals(v1Exchange2));
        System.assert(v1Exchange2.equals(v1Exchange1));
        System.assert(v1Exchange1.equals(v1Exchange1));
        System.assert(v1Exchange3.equals(v1Exchange4));
        System.assert(v1Exchange4.equals(v1Exchange3));
        System.assert(v1Exchange3.equals(v1Exchange3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASV1Exchange v1Exchange1 = OASV1Exchange.getExample();
        OASV1Exchange v1Exchange2 = OASV1Exchange.getExample();
        OASV1Exchange v1Exchange3 = new OASV1Exchange();
        OASV1Exchange v1Exchange4 = new OASV1Exchange();

        System.assert(v1Exchange1.equals(v1Exchange2));
        System.assert(v1Exchange2.equals(v1Exchange1));
        System.assert(v1Exchange3.equals(v1Exchange4));
        System.assert(v1Exchange4.equals(v1Exchange3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASV1Exchange v1Exchange1 = OASV1Exchange.getExample();
        OASV1Exchange v1Exchange2 = new OASV1Exchange();

        System.assertEquals(false, v1Exchange1.equals('foo'));
        System.assertEquals(false, v1Exchange2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASV1Exchange v1Exchange1 = OASV1Exchange.getExample();
        OASV1Exchange v1Exchange2 = new OASV1Exchange();
        OASV1Exchange v1Exchange3;

        System.assertEquals(false, v1Exchange1.equals(v1Exchange3));
        System.assertEquals(false, v1Exchange2.equals(v1Exchange3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASV1Exchange v1Exchange1 = OASV1Exchange.getExample();
        OASV1Exchange v1Exchange2 = new OASV1Exchange();

        System.assertEquals(v1Exchange1.hashCode(), v1Exchange1.hashCode());
        System.assertEquals(v1Exchange2.hashCode(), v1Exchange2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASV1Exchange v1Exchange1 = OASV1Exchange.getExample();
        OASV1Exchange v1Exchange2 = OASV1Exchange.getExample();
        OASV1Exchange v1Exchange3 = new OASV1Exchange();
        OASV1Exchange v1Exchange4 = new OASV1Exchange();

        System.assert(v1Exchange1.equals(v1Exchange2));
        System.assert(v1Exchange3.equals(v1Exchange4));
        System.assertEquals(v1Exchange1.hashCode(), v1Exchange2.hashCode());
        System.assertEquals(v1Exchange3.hashCode(), v1Exchange4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASV1Exchange v1Exchange = new OASV1Exchange();
        Map<String, String> x-property-mappings = v1Exchange.getx-property-mappings();
        System.assertEquals('exchangeId', x-property-mappings.get('exchange_id'));
        System.assertEquals('dataStart', x-property-mappings.get('data_start'));
        System.assertEquals('dataEnd', x-property-mappings.get('data_end'));
        System.assertEquals('dataQuoteStart', x-property-mappings.get('data_quote_start'));
        System.assertEquals('dataQuoteEnd', x-property-mappings.get('data_quote_end'));
        System.assertEquals('dataOrderbookStart', x-property-mappings.get('data_orderbook_start'));
        System.assertEquals('dataOrderbookEnd', x-property-mappings.get('data_orderbook_end'));
        System.assertEquals('dataTradeStart', x-property-mappings.get('data_trade_start'));
        System.assertEquals('dataTradeEnd', x-property-mappings.get('data_trade_end'));
        System.assertEquals('dataTradeCount', x-property-mappings.get('data_trade_count'));
        System.assertEquals('dataSymbolsCount', x-property-mappings.get('data_symbols_count'));
        System.assertEquals('volume1hrsUsd', x-property-mappings.get('volume_1hrs_usd'));
        System.assertEquals('volume1dayUsd', x-property-mappings.get('volume_1day_usd'));
        System.assertEquals('volume1mthUsd', x-property-mappings.get('volume_1mth_usd'));
        System.assertEquals('metricId', x-property-mappings.get('metric_id'));
        System.assertEquals('integrationStatus', x-property-mappings.get('integration_status'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASV1Exchange v1Exchange = new OASV1Exchange();
        System.assertEquals(new List<String>(), v1Exchange.metricId);
        System.assertEquals(new List<OASV1Icon>(), v1Exchange.icons);
        System.assertEquals(null, v1Exchange.exchangeId);
        System.assertEquals(null, v1Exchange.website);
        System.assertEquals(null, v1Exchange.name);
        System.assertEquals(null, v1Exchange.dataStart);
        System.assertEquals(null, v1Exchange.dataEnd);
        System.assertEquals(null, v1Exchange.dataQuoteStart);
        System.assertEquals(null, v1Exchange.dataQuoteEnd);
        System.assertEquals(null, v1Exchange.dataOrderbookStart);
        System.assertEquals(null, v1Exchange.dataOrderbookEnd);
        System.assertEquals(null, v1Exchange.dataTradeStart);
        System.assertEquals(null, v1Exchange.dataTradeEnd);
        System.assertEquals(null, v1Exchange.dataTradeCount);
        System.assertEquals(null, v1Exchange.dataSymbolsCount);
        System.assertEquals(null, v1Exchange.volume1hrsUsd);
        System.assertEquals(null, v1Exchange.volume1dayUsd);
        System.assertEquals(null, v1Exchange.volume1mthUsd);
        System.assertEquals(null, v1Exchange.rank);
        System.assertEquals(null, v1Exchange.integrationStatus);
    }
}
