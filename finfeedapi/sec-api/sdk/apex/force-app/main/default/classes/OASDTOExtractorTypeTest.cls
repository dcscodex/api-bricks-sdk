@isTest
private class OASDTOExtractorTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASDTOExtractorType> expected = new Set<OASDTOExtractorType>{
            OASDTOExtractorType.TEXT,
            OASDTOExtractorType.HTML
        };
        Set<OASDTOExtractorType> actual  = new Set<OASDTOExtractorType>(OASDTOExtractorType.values());
        System.assertEquals(expected, actual);
    }
}
