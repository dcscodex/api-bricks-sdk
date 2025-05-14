@isTest
private class OASAdminTradingStatusModelTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdminTradingStatusModel adminTradingStatusModel1 = OASAdminTradingStatusModel.getExample();
        OASAdminTradingStatusModel adminTradingStatusModel2 = adminTradingStatusModel1;
        OASAdminTradingStatusModel adminTradingStatusModel3 = new OASAdminTradingStatusModel();
        OASAdminTradingStatusModel adminTradingStatusModel4 = adminTradingStatusModel3;

        System.assert(adminTradingStatusModel1.equals(adminTradingStatusModel2));
        System.assert(adminTradingStatusModel2.equals(adminTradingStatusModel1));
        System.assert(adminTradingStatusModel1.equals(adminTradingStatusModel1));
        System.assert(adminTradingStatusModel3.equals(adminTradingStatusModel4));
        System.assert(adminTradingStatusModel4.equals(adminTradingStatusModel3));
        System.assert(adminTradingStatusModel3.equals(adminTradingStatusModel3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdminTradingStatusModel adminTradingStatusModel1 = OASAdminTradingStatusModel.getExample();
        OASAdminTradingStatusModel adminTradingStatusModel2 = OASAdminTradingStatusModel.getExample();
        OASAdminTradingStatusModel adminTradingStatusModel3 = new OASAdminTradingStatusModel();
        OASAdminTradingStatusModel adminTradingStatusModel4 = new OASAdminTradingStatusModel();

        System.assert(adminTradingStatusModel1.equals(adminTradingStatusModel2));
        System.assert(adminTradingStatusModel2.equals(adminTradingStatusModel1));
        System.assert(adminTradingStatusModel3.equals(adminTradingStatusModel4));
        System.assert(adminTradingStatusModel4.equals(adminTradingStatusModel3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdminTradingStatusModel adminTradingStatusModel1 = OASAdminTradingStatusModel.getExample();
        OASAdminTradingStatusModel adminTradingStatusModel2 = new OASAdminTradingStatusModel();

        System.assertEquals(false, adminTradingStatusModel1.equals('foo'));
        System.assertEquals(false, adminTradingStatusModel2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdminTradingStatusModel adminTradingStatusModel1 = OASAdminTradingStatusModel.getExample();
        OASAdminTradingStatusModel adminTradingStatusModel2 = new OASAdminTradingStatusModel();
        OASAdminTradingStatusModel adminTradingStatusModel3;

        System.assertEquals(false, adminTradingStatusModel1.equals(adminTradingStatusModel3));
        System.assertEquals(false, adminTradingStatusModel2.equals(adminTradingStatusModel3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdminTradingStatusModel adminTradingStatusModel1 = OASAdminTradingStatusModel.getExample();
        OASAdminTradingStatusModel adminTradingStatusModel2 = new OASAdminTradingStatusModel();

        System.assertEquals(adminTradingStatusModel1.hashCode(), adminTradingStatusModel1.hashCode());
        System.assertEquals(adminTradingStatusModel2.hashCode(), adminTradingStatusModel2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdminTradingStatusModel adminTradingStatusModel1 = OASAdminTradingStatusModel.getExample();
        OASAdminTradingStatusModel adminTradingStatusModel2 = OASAdminTradingStatusModel.getExample();
        OASAdminTradingStatusModel adminTradingStatusModel3 = new OASAdminTradingStatusModel();
        OASAdminTradingStatusModel adminTradingStatusModel4 = new OASAdminTradingStatusModel();

        System.assert(adminTradingStatusModel1.equals(adminTradingStatusModel2));
        System.assert(adminTradingStatusModel3.equals(adminTradingStatusModel4));
        System.assertEquals(adminTradingStatusModel1.hashCode(), adminTradingStatusModel2.hashCode());
        System.assertEquals(adminTradingStatusModel3.hashCode(), adminTradingStatusModel4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAdminTradingStatusModel adminTradingStatusModel = new OASAdminTradingStatusModel();
        Map<String, String> x-property-mappings = adminTradingStatusModel.getx-property-mappings();
        System.assertEquals('timestampNanos', x-property-mappings.get('timestamp_nanos'));
        System.assertEquals('isTradingLive', x-property-mappings.get('is_trading_live'));
        System.assertEquals('isTradingHalted', x-property-mappings.get('is_trading_halted'));
        System.assertEquals('isTradingInOrderAcceptancePeriod', x-property-mappings.get('is_trading_in_order_acceptance_period'));
        System.assertEquals('isTradingPaused', x-property-mappings.get('is_trading_paused'));
        System.assertEquals('isReasonHaltNewsPending', x-property-mappings.get('is_reason_halt_news_pending'));
        System.assertEquals('isReasonIpoNotYetTrading', x-property-mappings.get('is_reason_ipo_not_yet_trading'));
        System.assertEquals('isReasonIpoDeferred', x-property-mappings.get('is_reason_ipo_deferred'));
        System.assertEquals('isReasonHaltNewsDissemination', x-property-mappings.get('is_reason_halt_news_dissemination'));
        System.assertEquals('isReasonIpoOrderAcceptancePeriod', x-property-mappings.get('is_reason_ipo_order_acceptance_period'));
        System.assertEquals('isReasonIpoPreLaunchPeriod', x-property-mappings.get('is_reason_ipo_pre_launch_period'));
        System.assertEquals('isReasonMarketWideCircuitBreakerLevel1', x-property-mappings.get('is_reason_market_wide_circuit_breaker_level1'));
        System.assertEquals('isReasonMarketWideCircuitBreakerLevel2', x-property-mappings.get('is_reason_market_wide_circuit_breaker_level2'));
        System.assertEquals('isReasonMarketWideCircuitBreakerLevel3', x-property-mappings.get('is_reason_market_wide_circuit_breaker_level3'));
        System.assertEquals('isReasonNotApplicable', x-property-mappings.get('is_reason_not_applicable'));
        System.assertEquals('isReasonNotAvailable', x-property-mappings.get('is_reason_not_available'));
    }
}
