@isTest
private class OASAdminAuctionInformationModelTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdminAuctionInformationModel adminAuctionInformationModel1 = OASAdminAuctionInformationModel.getExample();
        OASAdminAuctionInformationModel adminAuctionInformationModel2 = adminAuctionInformationModel1;
        OASAdminAuctionInformationModel adminAuctionInformationModel3 = new OASAdminAuctionInformationModel();
        OASAdminAuctionInformationModel adminAuctionInformationModel4 = adminAuctionInformationModel3;

        System.assert(adminAuctionInformationModel1.equals(adminAuctionInformationModel2));
        System.assert(adminAuctionInformationModel2.equals(adminAuctionInformationModel1));
        System.assert(adminAuctionInformationModel1.equals(adminAuctionInformationModel1));
        System.assert(adminAuctionInformationModel3.equals(adminAuctionInformationModel4));
        System.assert(adminAuctionInformationModel4.equals(adminAuctionInformationModel3));
        System.assert(adminAuctionInformationModel3.equals(adminAuctionInformationModel3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdminAuctionInformationModel adminAuctionInformationModel1 = OASAdminAuctionInformationModel.getExample();
        OASAdminAuctionInformationModel adminAuctionInformationModel2 = OASAdminAuctionInformationModel.getExample();
        OASAdminAuctionInformationModel adminAuctionInformationModel3 = new OASAdminAuctionInformationModel();
        OASAdminAuctionInformationModel adminAuctionInformationModel4 = new OASAdminAuctionInformationModel();

        System.assert(adminAuctionInformationModel1.equals(adminAuctionInformationModel2));
        System.assert(adminAuctionInformationModel2.equals(adminAuctionInformationModel1));
        System.assert(adminAuctionInformationModel3.equals(adminAuctionInformationModel4));
        System.assert(adminAuctionInformationModel4.equals(adminAuctionInformationModel3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdminAuctionInformationModel adminAuctionInformationModel1 = OASAdminAuctionInformationModel.getExample();
        OASAdminAuctionInformationModel adminAuctionInformationModel2 = new OASAdminAuctionInformationModel();

        System.assertEquals(false, adminAuctionInformationModel1.equals('foo'));
        System.assertEquals(false, adminAuctionInformationModel2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdminAuctionInformationModel adminAuctionInformationModel1 = OASAdminAuctionInformationModel.getExample();
        OASAdminAuctionInformationModel adminAuctionInformationModel2 = new OASAdminAuctionInformationModel();
        OASAdminAuctionInformationModel adminAuctionInformationModel3;

        System.assertEquals(false, adminAuctionInformationModel1.equals(adminAuctionInformationModel3));
        System.assertEquals(false, adminAuctionInformationModel2.equals(adminAuctionInformationModel3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdminAuctionInformationModel adminAuctionInformationModel1 = OASAdminAuctionInformationModel.getExample();
        OASAdminAuctionInformationModel adminAuctionInformationModel2 = new OASAdminAuctionInformationModel();

        System.assertEquals(adminAuctionInformationModel1.hashCode(), adminAuctionInformationModel1.hashCode());
        System.assertEquals(adminAuctionInformationModel2.hashCode(), adminAuctionInformationModel2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdminAuctionInformationModel adminAuctionInformationModel1 = OASAdminAuctionInformationModel.getExample();
        OASAdminAuctionInformationModel adminAuctionInformationModel2 = OASAdminAuctionInformationModel.getExample();
        OASAdminAuctionInformationModel adminAuctionInformationModel3 = new OASAdminAuctionInformationModel();
        OASAdminAuctionInformationModel adminAuctionInformationModel4 = new OASAdminAuctionInformationModel();

        System.assert(adminAuctionInformationModel1.equals(adminAuctionInformationModel2));
        System.assert(adminAuctionInformationModel3.equals(adminAuctionInformationModel4));
        System.assertEquals(adminAuctionInformationModel1.hashCode(), adminAuctionInformationModel2.hashCode());
        System.assertEquals(adminAuctionInformationModel3.hashCode(), adminAuctionInformationModel4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAdminAuctionInformationModel adminAuctionInformationModel = new OASAdminAuctionInformationModel();
        Map<String, String> x-property-mappings = adminAuctionInformationModel.getx-property-mappings();
        System.assertEquals('timestampNanos', x-property-mappings.get('timestamp_nanos'));
        System.assertEquals('auctionType', x-property-mappings.get('auction_type'));
        System.assertEquals('auctionTypeCode', x-property-mappings.get('auction_type_code'));
        System.assertEquals('auctionTypeText', x-property-mappings.get('auction_type_text'));
        System.assertEquals('isAuctionTypeOpening', x-property-mappings.get('is_auction_type_opening'));
        System.assertEquals('isAuctionTypeClosing', x-property-mappings.get('is_auction_type_closing'));
        System.assertEquals('isAuctionTypeIpo', x-property-mappings.get('is_auction_type_ipo'));
        System.assertEquals('isAuctionTypeHalt', x-property-mappings.get('is_auction_type_halt'));
        System.assertEquals('isAuctionTypeVolatility', x-property-mappings.get('is_auction_type_volatility'));
        System.assertEquals('pairedShares', x-property-mappings.get('paired_shares'));
        System.assertEquals('referencePrice', x-property-mappings.get('reference_price'));
        System.assertEquals('indicativeClearingPrice', x-property-mappings.get('indicative_clearing_price'));
        System.assertEquals('imbalanceShares', x-property-mappings.get('imbalance_shares'));
        System.assertEquals('imbalanceSide', x-property-mappings.get('imbalance_side'));
        System.assertEquals('imbalanceSideCode', x-property-mappings.get('imbalance_side_code'));
        System.assertEquals('imbalanceSideText', x-property-mappings.get('imbalance_side_text'));
        System.assertEquals('isImbalanceSideBuy', x-property-mappings.get('is_imbalance_side_buy'));
        System.assertEquals('isImbalanceSideSell', x-property-mappings.get('is_imbalance_side_sell'));
        System.assertEquals('isImbalanceSideNone', x-property-mappings.get('is_imbalance_side_none'));
        System.assertEquals('extensionNumber', x-property-mappings.get('extension_number'));
        System.assertEquals('scheduledAuctionTimeSeconds', x-property-mappings.get('scheduled_auction_time_seconds'));
        System.assertEquals('scheduledAuctionTime', x-property-mappings.get('scheduled_auction_time'));
        System.assertEquals('auctionBookClearingPrice', x-property-mappings.get('auction_book_clearing_price'));
        System.assertEquals('collarReferencePrice', x-property-mappings.get('collar_reference_price'));
        System.assertEquals('lowerAuctionCollar', x-property-mappings.get('lower_auction_collar'));
        System.assertEquals('upperAuctionCollar', x-property-mappings.get('upper_auction_collar'));
    }
}
