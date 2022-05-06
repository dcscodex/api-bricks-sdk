@isTest
private class OASAccountDataTest {
    @isTest
    private static void equalsSameInstance() {
        OASAccountData accountData1 = OASAccountData.getExample();
        OASAccountData accountData2 = accountData1;
        OASAccountData accountData3 = new OASAccountData();
        OASAccountData accountData4 = accountData3;

        System.assert(accountData1.equals(accountData2));
        System.assert(accountData2.equals(accountData1));
        System.assert(accountData1.equals(accountData1));
        System.assert(accountData3.equals(accountData4));
        System.assert(accountData4.equals(accountData3));
        System.assert(accountData3.equals(accountData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAccountData accountData1 = OASAccountData.getExample();
        OASAccountData accountData2 = OASAccountData.getExample();
        OASAccountData accountData3 = new OASAccountData();
        OASAccountData accountData4 = new OASAccountData();

        System.assert(accountData1.equals(accountData2));
        System.assert(accountData2.equals(accountData1));
        System.assert(accountData3.equals(accountData4));
        System.assert(accountData4.equals(accountData3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAccountData accountData1 = OASAccountData.getExample();
        OASAccountData accountData2 = new OASAccountData();

        System.assertEquals(false, accountData1.equals('foo'));
        System.assertEquals(false, accountData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAccountData accountData1 = OASAccountData.getExample();
        OASAccountData accountData2 = new OASAccountData();
        OASAccountData accountData3;

        System.assertEquals(false, accountData1.equals(accountData3));
        System.assertEquals(false, accountData2.equals(accountData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAccountData accountData1 = OASAccountData.getExample();
        OASAccountData accountData2 = new OASAccountData();

        System.assertEquals(accountData1.hashCode(), accountData1.hashCode());
        System.assertEquals(accountData2.hashCode(), accountData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAccountData accountData1 = OASAccountData.getExample();
        OASAccountData accountData2 = OASAccountData.getExample();
        OASAccountData accountData3 = new OASAccountData();
        OASAccountData accountData4 = new OASAccountData();

        System.assert(accountData1.equals(accountData2));
        System.assert(accountData3.equals(accountData4));
        System.assertEquals(accountData1.hashCode(), accountData2.hashCode());
        System.assertEquals(accountData3.hashCode(), accountData4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAccountData accountData = new OASAccountData();
        Map<String, String> x-property-mappings = accountData.getx-property-mappings();
        System.assertEquals('exchangeId', x-property-mappings.get('exchange_id'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASAccountData accountData = new OASAccountData();
        System.assertEquals(new List<OASKeyValue>(), accountData.parameters);
        System.assertEquals(null, accountData.exchangeId);
    }
}
