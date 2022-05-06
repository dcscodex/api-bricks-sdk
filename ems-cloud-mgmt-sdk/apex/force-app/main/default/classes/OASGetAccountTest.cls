@isTest
private class OASGetAccountTest {
    @isTest
    private static void equalsSameInstance() {
        OASGetAccount getAccount1 = OASGetAccount.getExample();
        OASGetAccount getAccount2 = getAccount1;
        OASGetAccount getAccount3 = new OASGetAccount();
        OASGetAccount getAccount4 = getAccount3;

        System.assert(getAccount1.equals(getAccount2));
        System.assert(getAccount2.equals(getAccount1));
        System.assert(getAccount1.equals(getAccount1));
        System.assert(getAccount3.equals(getAccount4));
        System.assert(getAccount4.equals(getAccount3));
        System.assert(getAccount3.equals(getAccount3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGetAccount getAccount1 = OASGetAccount.getExample();
        OASGetAccount getAccount2 = OASGetAccount.getExample();
        OASGetAccount getAccount3 = new OASGetAccount();
        OASGetAccount getAccount4 = new OASGetAccount();

        System.assert(getAccount1.equals(getAccount2));
        System.assert(getAccount2.equals(getAccount1));
        System.assert(getAccount3.equals(getAccount4));
        System.assert(getAccount4.equals(getAccount3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGetAccount getAccount1 = OASGetAccount.getExample();
        OASGetAccount getAccount2 = new OASGetAccount();

        System.assertEquals(false, getAccount1.equals('foo'));
        System.assertEquals(false, getAccount2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGetAccount getAccount1 = OASGetAccount.getExample();
        OASGetAccount getAccount2 = new OASGetAccount();
        OASGetAccount getAccount3;

        System.assertEquals(false, getAccount1.equals(getAccount3));
        System.assertEquals(false, getAccount2.equals(getAccount3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGetAccount getAccount1 = OASGetAccount.getExample();
        OASGetAccount getAccount2 = new OASGetAccount();

        System.assertEquals(getAccount1.hashCode(), getAccount1.hashCode());
        System.assertEquals(getAccount2.hashCode(), getAccount2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGetAccount getAccount1 = OASGetAccount.getExample();
        OASGetAccount getAccount2 = OASGetAccount.getExample();
        OASGetAccount getAccount3 = new OASGetAccount();
        OASGetAccount getAccount4 = new OASGetAccount();

        System.assert(getAccount1.equals(getAccount2));
        System.assert(getAccount3.equals(getAccount4));
        System.assertEquals(getAccount1.hashCode(), getAccount2.hashCode());
        System.assertEquals(getAccount3.hashCode(), getAccount4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGetAccount getAccount = new OASGetAccount();
        Map<String, String> x-property-mappings = getAccount.getx-property-mappings();
        System.assertEquals('exchangeId', x-property-mappings.get('exchange_id'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASGetAccount getAccount = new OASGetAccount();
        System.assertEquals(new List<OASKeyValue>(), getAccount.parameters);
        System.assertEquals(null, getAccount.exchangeId);
    }
}
