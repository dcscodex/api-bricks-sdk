@isTest
private class OASDTOFilingSortByTest {
    @isTest
    private static void allowableValues() {
        Set<OASDTOFilingSortBy> expected = new Set<OASDTOFilingSortBy>{
            OASDTOFilingSortBy.ACCESSIONNUMBER,
            OASDTOFilingSortBy.FILINGDATE,
            OASDTOFilingSortBy.REPORTDATE,
            OASDTOFilingSortBy.ACCEPTANCEDATETIME,
            OASDTOFilingSortBy.SIZE
        };
        Set<OASDTOFilingSortBy> actual  = new Set<OASDTOFilingSortBy>(OASDTOFilingSortBy.values());
        System.assertEquals(expected, actual);
    }
}
