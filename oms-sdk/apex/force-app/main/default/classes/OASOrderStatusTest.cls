@isTest
private class OASOrderStatusTest {
    @isTest
    private static void allowableValues() {
        Set<OASOrderStatus> expected = new Set<OASOrderStatus>{
            OASOrderStatus.RECEIVED,
            OASOrderStatus.ROUTING,
            OASOrderStatus.ROUTED,
            OASOrderStatus.NEW,
            OASOrderStatus.PENDING_CANCEL,
            OASOrderStatus.PARTIALLY_FILLED,
            OASOrderStatus.FILLED,
            OASOrderStatus.CANCELED,
            OASOrderStatus.REJECTED
        };
        Set<OASOrderStatus> actual  = new Set<OASOrderStatus>(OASOrderStatus.values());
        System.assertEquals(expected, actual);
    }
}
