@isTest
private class OASV1SymbolTest {
    @isTest
    private static void equalsSameInstance() {
        OASV1Symbol v1Symbol1 = OASV1Symbol.getExample();
        OASV1Symbol v1Symbol2 = v1Symbol1;
        OASV1Symbol v1Symbol3 = new OASV1Symbol();
        OASV1Symbol v1Symbol4 = v1Symbol3;

        System.assert(v1Symbol1.equals(v1Symbol2));
        System.assert(v1Symbol2.equals(v1Symbol1));
        System.assert(v1Symbol1.equals(v1Symbol1));
        System.assert(v1Symbol3.equals(v1Symbol4));
        System.assert(v1Symbol4.equals(v1Symbol3));
        System.assert(v1Symbol3.equals(v1Symbol3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASV1Symbol v1Symbol1 = OASV1Symbol.getExample();
        OASV1Symbol v1Symbol2 = OASV1Symbol.getExample();
        OASV1Symbol v1Symbol3 = new OASV1Symbol();
        OASV1Symbol v1Symbol4 = new OASV1Symbol();

        System.assert(v1Symbol1.equals(v1Symbol2));
        System.assert(v1Symbol2.equals(v1Symbol1));
        System.assert(v1Symbol3.equals(v1Symbol4));
        System.assert(v1Symbol4.equals(v1Symbol3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASV1Symbol v1Symbol1 = OASV1Symbol.getExample();
        OASV1Symbol v1Symbol2 = new OASV1Symbol();

        System.assertEquals(false, v1Symbol1.equals('foo'));
        System.assertEquals(false, v1Symbol2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASV1Symbol v1Symbol1 = OASV1Symbol.getExample();
        OASV1Symbol v1Symbol2 = new OASV1Symbol();
        OASV1Symbol v1Symbol3;

        System.assertEquals(false, v1Symbol1.equals(v1Symbol3));
        System.assertEquals(false, v1Symbol2.equals(v1Symbol3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASV1Symbol v1Symbol1 = OASV1Symbol.getExample();
        OASV1Symbol v1Symbol2 = new OASV1Symbol();

        System.assertEquals(v1Symbol1.hashCode(), v1Symbol1.hashCode());
        System.assertEquals(v1Symbol2.hashCode(), v1Symbol2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASV1Symbol v1Symbol1 = OASV1Symbol.getExample();
        OASV1Symbol v1Symbol2 = OASV1Symbol.getExample();
        OASV1Symbol v1Symbol3 = new OASV1Symbol();
        OASV1Symbol v1Symbol4 = new OASV1Symbol();

        System.assert(v1Symbol1.equals(v1Symbol2));
        System.assert(v1Symbol3.equals(v1Symbol4));
        System.assertEquals(v1Symbol1.hashCode(), v1Symbol2.hashCode());
        System.assertEquals(v1Symbol3.hashCode(), v1Symbol4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASV1Symbol v1Symbol = new OASV1Symbol();
        Map<String, String> x-property-mappings = v1Symbol.getx-property-mappings();
        System.assertEquals('symbolId', x-property-mappings.get('symbol_id'));
        System.assertEquals('exchangeId', x-property-mappings.get('exchange_id'));
        System.assertEquals('symbolType', x-property-mappings.get('symbol_type'));
        System.assertEquals('assetIdBase', x-property-mappings.get('asset_id_base'));
        System.assertEquals('assetIdQuote', x-property-mappings.get('asset_id_quote'));
        System.assertEquals('assetIdUnit', x-property-mappings.get('asset_id_unit'));
        System.assertEquals('futureContractUnit', x-property-mappings.get('future_contract_unit'));
        System.assertEquals('futureContractUnitAsset', x-property-mappings.get('future_contract_unit_asset'));
        System.assertEquals('futureDeliveryTime', x-property-mappings.get('future_delivery_time'));
        System.assertEquals('optionTypeIsCall', x-property-mappings.get('option_type_is_call'));
        System.assertEquals('optionStrikePrice', x-property-mappings.get('option_strike_price'));
        System.assertEquals('optionContractUnit', x-property-mappings.get('option_contract_unit'));
        System.assertEquals('optionExerciseStyle', x-property-mappings.get('option_exercise_style'));
        System.assertEquals('optionExpirationTime', x-property-mappings.get('option_expiration_time'));
        System.assertEquals('contractDeliveryTime', x-property-mappings.get('contract_delivery_time'));
        System.assertEquals('contractUnit', x-property-mappings.get('contract_unit'));
        System.assertEquals('contractUnitAsset', x-property-mappings.get('contract_unit_asset'));
        System.assertEquals('contractId', x-property-mappings.get('contract_id'));
        System.assertEquals('contractDisplayName', x-property-mappings.get('contract_display_name'));
        System.assertEquals('contractDisplayDescription', x-property-mappings.get('contract_display_description'));
        System.assertEquals('dataStart', x-property-mappings.get('data_start'));
        System.assertEquals('dataEnd', x-property-mappings.get('data_end'));
        System.assertEquals('dataQuoteStart', x-property-mappings.get('data_quote_start'));
        System.assertEquals('dataQuoteEnd', x-property-mappings.get('data_quote_end'));
        System.assertEquals('dataOrderbookStart', x-property-mappings.get('data_orderbook_start'));
        System.assertEquals('dataOrderbookEnd', x-property-mappings.get('data_orderbook_end'));
        System.assertEquals('dataTradeStart', x-property-mappings.get('data_trade_start'));
        System.assertEquals('dataTradeEnd', x-property-mappings.get('data_trade_end'));
        System.assertEquals('indexId', x-property-mappings.get('index_id'));
        System.assertEquals('indexDisplayName', x-property-mappings.get('index_display_name'));
        System.assertEquals('indexDisplayDescription', x-property-mappings.get('index_display_description'));
        System.assertEquals('volume1hrs', x-property-mappings.get('volume_1hrs'));
        System.assertEquals('volume1hrsUsd', x-property-mappings.get('volume_1hrs_usd'));
        System.assertEquals('volume1day', x-property-mappings.get('volume_1day'));
        System.assertEquals('volume1dayUsd', x-property-mappings.get('volume_1day_usd'));
        System.assertEquals('volume1mth', x-property-mappings.get('volume_1mth'));
        System.assertEquals('volume1mthUsd', x-property-mappings.get('volume_1mth_usd'));
        System.assertEquals('symbolIdExchange', x-property-mappings.get('symbol_id_exchange'));
        System.assertEquals('assetIdBaseExchange', x-property-mappings.get('asset_id_base_exchange'));
        System.assertEquals('assetIdQuoteExchange', x-property-mappings.get('asset_id_quote_exchange'));
        System.assertEquals('pricePrecision', x-property-mappings.get('price_precision'));
        System.assertEquals('sizePrecision', x-property-mappings.get('size_precision'));
        System.assertEquals('rawKvp', x-property-mappings.get('raw_kvp'));
        System.assertEquals('volumeToUsd', x-property-mappings.get('volume_to_usd'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASV1Symbol v1Symbol = new OASV1Symbol();
        System.assertEquals(new Map<String, String>(), v1Symbol.rawKvp);
        System.assertEquals(null, v1Symbol.symbolId);
        System.assertEquals(null, v1Symbol.exchangeId);
        System.assertEquals(null, v1Symbol.symbolType);
        System.assertEquals(null, v1Symbol.assetIdBase);
        System.assertEquals(null, v1Symbol.assetIdQuote);
        System.assertEquals(null, v1Symbol.assetIdUnit);
        System.assertEquals(null, v1Symbol.futureContractUnit);
        System.assertEquals(null, v1Symbol.futureContractUnitAsset);
        System.assertEquals(null, v1Symbol.futureDeliveryTime);
        System.assertEquals(null, v1Symbol.optionTypeIsCall);
        System.assertEquals(null, v1Symbol.optionStrikePrice);
        System.assertEquals(null, v1Symbol.optionContractUnit);
        System.assertEquals(null, v1Symbol.optionExerciseStyle);
        System.assertEquals(null, v1Symbol.optionExpirationTime);
        System.assertEquals(null, v1Symbol.contractDeliveryTime);
        System.assertEquals(null, v1Symbol.contractUnit);
        System.assertEquals(null, v1Symbol.contractUnitAsset);
        System.assertEquals(null, v1Symbol.contractId);
        System.assertEquals(null, v1Symbol.contractDisplayName);
        System.assertEquals(null, v1Symbol.contractDisplayDescription);
        System.assertEquals(null, v1Symbol.dataStart);
        System.assertEquals(null, v1Symbol.dataEnd);
        System.assertEquals(null, v1Symbol.dataQuoteStart);
        System.assertEquals(null, v1Symbol.dataQuoteEnd);
        System.assertEquals(null, v1Symbol.dataOrderbookStart);
        System.assertEquals(null, v1Symbol.dataOrderbookEnd);
        System.assertEquals(null, v1Symbol.dataTradeStart);
        System.assertEquals(null, v1Symbol.dataTradeEnd);
        System.assertEquals(null, v1Symbol.indexId);
        System.assertEquals(null, v1Symbol.indexDisplayName);
        System.assertEquals(null, v1Symbol.indexDisplayDescription);
        System.assertEquals(null, v1Symbol.volume1hrs);
        System.assertEquals(null, v1Symbol.volume1hrsUsd);
        System.assertEquals(null, v1Symbol.volume1day);
        System.assertEquals(null, v1Symbol.volume1dayUsd);
        System.assertEquals(null, v1Symbol.volume1mth);
        System.assertEquals(null, v1Symbol.volume1mthUsd);
        System.assertEquals(null, v1Symbol.price);
        System.assertEquals(null, v1Symbol.symbolIdExchange);
        System.assertEquals(null, v1Symbol.assetIdBaseExchange);
        System.assertEquals(null, v1Symbol.assetIdQuoteExchange);
        System.assertEquals(null, v1Symbol.pricePrecision);
        System.assertEquals(null, v1Symbol.sizePrecision);
        System.assertEquals(null, v1Symbol.volumeToUsd);
    }
}
