@isTest
private class OASV1AssetTest {
    @isTest
    private static void equalsSameInstance() {
        OASV1Asset v1Asset1 = OASV1Asset.getExample();
        OASV1Asset v1Asset2 = v1Asset1;
        OASV1Asset v1Asset3 = new OASV1Asset();
        OASV1Asset v1Asset4 = v1Asset3;

        System.assert(v1Asset1.equals(v1Asset2));
        System.assert(v1Asset2.equals(v1Asset1));
        System.assert(v1Asset1.equals(v1Asset1));
        System.assert(v1Asset3.equals(v1Asset4));
        System.assert(v1Asset4.equals(v1Asset3));
        System.assert(v1Asset3.equals(v1Asset3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASV1Asset v1Asset1 = OASV1Asset.getExample();
        OASV1Asset v1Asset2 = OASV1Asset.getExample();
        OASV1Asset v1Asset3 = new OASV1Asset();
        OASV1Asset v1Asset4 = new OASV1Asset();

        System.assert(v1Asset1.equals(v1Asset2));
        System.assert(v1Asset2.equals(v1Asset1));
        System.assert(v1Asset3.equals(v1Asset4));
        System.assert(v1Asset4.equals(v1Asset3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASV1Asset v1Asset1 = OASV1Asset.getExample();
        OASV1Asset v1Asset2 = new OASV1Asset();

        System.assertEquals(false, v1Asset1.equals('foo'));
        System.assertEquals(false, v1Asset2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASV1Asset v1Asset1 = OASV1Asset.getExample();
        OASV1Asset v1Asset2 = new OASV1Asset();
        OASV1Asset v1Asset3;

        System.assertEquals(false, v1Asset1.equals(v1Asset3));
        System.assertEquals(false, v1Asset2.equals(v1Asset3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASV1Asset v1Asset1 = OASV1Asset.getExample();
        OASV1Asset v1Asset2 = new OASV1Asset();

        System.assertEquals(v1Asset1.hashCode(), v1Asset1.hashCode());
        System.assertEquals(v1Asset2.hashCode(), v1Asset2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASV1Asset v1Asset1 = OASV1Asset.getExample();
        OASV1Asset v1Asset2 = OASV1Asset.getExample();
        OASV1Asset v1Asset3 = new OASV1Asset();
        OASV1Asset v1Asset4 = new OASV1Asset();

        System.assert(v1Asset1.equals(v1Asset2));
        System.assert(v1Asset3.equals(v1Asset4));
        System.assertEquals(v1Asset1.hashCode(), v1Asset2.hashCode());
        System.assertEquals(v1Asset3.hashCode(), v1Asset4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASV1Asset v1Asset = new OASV1Asset();
        Map<String, String> x-property-mappings = v1Asset.getx-property-mappings();
        System.assertEquals('assetId', x-property-mappings.get('asset_id'));
        System.assertEquals('typeIsCrypto', x-property-mappings.get('type_is_crypto'));
        System.assertEquals('dataQuoteStart', x-property-mappings.get('data_quote_start'));
        System.assertEquals('dataQuoteEnd', x-property-mappings.get('data_quote_end'));
        System.assertEquals('dataOrderbookStart', x-property-mappings.get('data_orderbook_start'));
        System.assertEquals('dataOrderbookEnd', x-property-mappings.get('data_orderbook_end'));
        System.assertEquals('dataTradeStart', x-property-mappings.get('data_trade_start'));
        System.assertEquals('dataTradeEnd', x-property-mappings.get('data_trade_end'));
        System.assertEquals('dataSymbolsCount', x-property-mappings.get('data_symbols_count'));
        System.assertEquals('volume1hrsUsd', x-property-mappings.get('volume_1hrs_usd'));
        System.assertEquals('volume1dayUsd', x-property-mappings.get('volume_1day_usd'));
        System.assertEquals('volume1mthUsd', x-property-mappings.get('volume_1mth_usd'));
        System.assertEquals('priceUsd', x-property-mappings.get('price_usd'));
        System.assertEquals('idIcon', x-property-mappings.get('id_icon'));
        System.assertEquals('supplyCurrent', x-property-mappings.get('supply_current'));
        System.assertEquals('supplyTotal', x-property-mappings.get('supply_total'));
        System.assertEquals('supplyMax', x-property-mappings.get('supply_max'));
        System.assertEquals('chainAddresses', x-property-mappings.get('chain_addresses'));
        System.assertEquals('dataStart', x-property-mappings.get('data_start'));
        System.assertEquals('dataEnd', x-property-mappings.get('data_end'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASV1Asset v1Asset = new OASV1Asset();
        System.assertEquals(new List<OASV1ChainNetworkAddress>(), v1Asset.chainAddresses);
        System.assertEquals(null, v1Asset.assetId);
        System.assertEquals(null, v1Asset.name);
        System.assertEquals(null, v1Asset.typeIsCrypto);
        System.assertEquals(null, v1Asset.dataQuoteStart);
        System.assertEquals(null, v1Asset.dataQuoteEnd);
        System.assertEquals(null, v1Asset.dataOrderbookStart);
        System.assertEquals(null, v1Asset.dataOrderbookEnd);
        System.assertEquals(null, v1Asset.dataTradeStart);
        System.assertEquals(null, v1Asset.dataTradeEnd);
        System.assertEquals(null, v1Asset.dataSymbolsCount);
        System.assertEquals(null, v1Asset.volume1hrsUsd);
        System.assertEquals(null, v1Asset.volume1dayUsd);
        System.assertEquals(null, v1Asset.volume1mthUsd);
        System.assertEquals(null, v1Asset.priceUsd);
        System.assertEquals(null, v1Asset.idIcon);
        System.assertEquals(null, v1Asset.supplyCurrent);
        System.assertEquals(null, v1Asset.supplyTotal);
        System.assertEquals(null, v1Asset.supplyMax);
        System.assertEquals(null, v1Asset.dataStart);
        System.assertEquals(null, v1Asset.dataEnd);
    }
}
