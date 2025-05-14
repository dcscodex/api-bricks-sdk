@isTest
private class OASFinFeedAPIExchangeModelTest {
    @isTest
    private static void equalsSameInstance() {
        OASFinFeedAPIExchangeModel finFeedAPIExchangeModel1 = OASFinFeedAPIExchangeModel.getExample();
        OASFinFeedAPIExchangeModel finFeedAPIExchangeModel2 = finFeedAPIExchangeModel1;
        OASFinFeedAPIExchangeModel finFeedAPIExchangeModel3 = new OASFinFeedAPIExchangeModel();
        OASFinFeedAPIExchangeModel finFeedAPIExchangeModel4 = finFeedAPIExchangeModel3;

        System.assert(finFeedAPIExchangeModel1.equals(finFeedAPIExchangeModel2));
        System.assert(finFeedAPIExchangeModel2.equals(finFeedAPIExchangeModel1));
        System.assert(finFeedAPIExchangeModel1.equals(finFeedAPIExchangeModel1));
        System.assert(finFeedAPIExchangeModel3.equals(finFeedAPIExchangeModel4));
        System.assert(finFeedAPIExchangeModel4.equals(finFeedAPIExchangeModel3));
        System.assert(finFeedAPIExchangeModel3.equals(finFeedAPIExchangeModel3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASFinFeedAPIExchangeModel finFeedAPIExchangeModel1 = OASFinFeedAPIExchangeModel.getExample();
        OASFinFeedAPIExchangeModel finFeedAPIExchangeModel2 = OASFinFeedAPIExchangeModel.getExample();
        OASFinFeedAPIExchangeModel finFeedAPIExchangeModel3 = new OASFinFeedAPIExchangeModel();
        OASFinFeedAPIExchangeModel finFeedAPIExchangeModel4 = new OASFinFeedAPIExchangeModel();

        System.assert(finFeedAPIExchangeModel1.equals(finFeedAPIExchangeModel2));
        System.assert(finFeedAPIExchangeModel2.equals(finFeedAPIExchangeModel1));
        System.assert(finFeedAPIExchangeModel3.equals(finFeedAPIExchangeModel4));
        System.assert(finFeedAPIExchangeModel4.equals(finFeedAPIExchangeModel3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASFinFeedAPIExchangeModel finFeedAPIExchangeModel1 = OASFinFeedAPIExchangeModel.getExample();
        OASFinFeedAPIExchangeModel finFeedAPIExchangeModel2 = new OASFinFeedAPIExchangeModel();

        System.assertEquals(false, finFeedAPIExchangeModel1.equals('foo'));
        System.assertEquals(false, finFeedAPIExchangeModel2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASFinFeedAPIExchangeModel finFeedAPIExchangeModel1 = OASFinFeedAPIExchangeModel.getExample();
        OASFinFeedAPIExchangeModel finFeedAPIExchangeModel2 = new OASFinFeedAPIExchangeModel();
        OASFinFeedAPIExchangeModel finFeedAPIExchangeModel3;

        System.assertEquals(false, finFeedAPIExchangeModel1.equals(finFeedAPIExchangeModel3));
        System.assertEquals(false, finFeedAPIExchangeModel2.equals(finFeedAPIExchangeModel3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASFinFeedAPIExchangeModel finFeedAPIExchangeModel1 = OASFinFeedAPIExchangeModel.getExample();
        OASFinFeedAPIExchangeModel finFeedAPIExchangeModel2 = new OASFinFeedAPIExchangeModel();

        System.assertEquals(finFeedAPIExchangeModel1.hashCode(), finFeedAPIExchangeModel1.hashCode());
        System.assertEquals(finFeedAPIExchangeModel2.hashCode(), finFeedAPIExchangeModel2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASFinFeedAPIExchangeModel finFeedAPIExchangeModel1 = OASFinFeedAPIExchangeModel.getExample();
        OASFinFeedAPIExchangeModel finFeedAPIExchangeModel2 = OASFinFeedAPIExchangeModel.getExample();
        OASFinFeedAPIExchangeModel finFeedAPIExchangeModel3 = new OASFinFeedAPIExchangeModel();
        OASFinFeedAPIExchangeModel finFeedAPIExchangeModel4 = new OASFinFeedAPIExchangeModel();

        System.assert(finFeedAPIExchangeModel1.equals(finFeedAPIExchangeModel2));
        System.assert(finFeedAPIExchangeModel3.equals(finFeedAPIExchangeModel4));
        System.assertEquals(finFeedAPIExchangeModel1.hashCode(), finFeedAPIExchangeModel2.hashCode());
        System.assertEquals(finFeedAPIExchangeModel3.hashCode(), finFeedAPIExchangeModel4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASFinFeedAPIExchangeModel finFeedAPIExchangeModel = new OASFinFeedAPIExchangeModel();
        Map<String, String> x-property-mappings = finFeedAPIExchangeModel.getx-property-mappings();
        System.assertEquals('exchangeId', x-property-mappings.get('exchange_id'));
        System.assertEquals('lastDatapointDate', x-property-mappings.get('last_datapoint_date'));
        System.assertEquals('operatingMic', x-property-mappings.get('operating_mic'));
        System.assertEquals('oprtSgmt', x-property-mappings.get('oprt_sgmt'));
        System.assertEquals('marketNameInstitutionDescription', x-property-mappings.get('market_name_institution_description'));
        System.assertEquals('legalEntityName', x-property-mappings.get('legal_entity_name'));
        System.assertEquals('marketCategoryCode', x-property-mappings.get('market_category_code'));
        System.assertEquals('isoCountryCode', x-property-mappings.get('iso_country_code'));
        System.assertEquals('creationDate', x-property-mappings.get('creation_date'));
        System.assertEquals('lastUpdateDate', x-property-mappings.get('last_update_date'));
        System.assertEquals('lastValidationDate', x-property-mappings.get('last_validation_date'));
        System.assertEquals('expiryDate', x-property-mappings.get('expiry_date'));
    }
}
