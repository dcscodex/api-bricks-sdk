@isTest
private class OASUpdateAccountTest {
    @isTest
    private static void equalsSameInstance() {
        OASUpdateAccount updateAccount1 = OASUpdateAccount.getExample();
        OASUpdateAccount updateAccount2 = updateAccount1;
        OASUpdateAccount updateAccount3 = new OASUpdateAccount();
        OASUpdateAccount updateAccount4 = updateAccount3;

        System.assert(updateAccount1.equals(updateAccount2));
        System.assert(updateAccount2.equals(updateAccount1));
        System.assert(updateAccount1.equals(updateAccount1));
        System.assert(updateAccount3.equals(updateAccount4));
        System.assert(updateAccount4.equals(updateAccount3));
        System.assert(updateAccount3.equals(updateAccount3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUpdateAccount updateAccount1 = OASUpdateAccount.getExample();
        OASUpdateAccount updateAccount2 = OASUpdateAccount.getExample();
        OASUpdateAccount updateAccount3 = new OASUpdateAccount();
        OASUpdateAccount updateAccount4 = new OASUpdateAccount();

        System.assert(updateAccount1.equals(updateAccount2));
        System.assert(updateAccount2.equals(updateAccount1));
        System.assert(updateAccount3.equals(updateAccount4));
        System.assert(updateAccount4.equals(updateAccount3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUpdateAccount updateAccount1 = OASUpdateAccount.getExample();
        OASUpdateAccount updateAccount2 = new OASUpdateAccount();

        System.assertEquals(false, updateAccount1.equals('foo'));
        System.assertEquals(false, updateAccount2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUpdateAccount updateAccount1 = OASUpdateAccount.getExample();
        OASUpdateAccount updateAccount2 = new OASUpdateAccount();
        OASUpdateAccount updateAccount3;

        System.assertEquals(false, updateAccount1.equals(updateAccount3));
        System.assertEquals(false, updateAccount2.equals(updateAccount3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUpdateAccount updateAccount1 = OASUpdateAccount.getExample();
        OASUpdateAccount updateAccount2 = new OASUpdateAccount();

        System.assertEquals(updateAccount1.hashCode(), updateAccount1.hashCode());
        System.assertEquals(updateAccount2.hashCode(), updateAccount2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUpdateAccount updateAccount1 = OASUpdateAccount.getExample();
        OASUpdateAccount updateAccount2 = OASUpdateAccount.getExample();
        OASUpdateAccount updateAccount3 = new OASUpdateAccount();
        OASUpdateAccount updateAccount4 = new OASUpdateAccount();

        System.assert(updateAccount1.equals(updateAccount2));
        System.assert(updateAccount3.equals(updateAccount4));
        System.assertEquals(updateAccount1.hashCode(), updateAccount2.hashCode());
        System.assertEquals(updateAccount3.hashCode(), updateAccount4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUpdateAccount updateAccount = new OASUpdateAccount();
        Map<String, String> x-property-mappings = updateAccount.getx-property-mappings();
        System.assertEquals('exchangeId', x-property-mappings.get('exchange_id'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASUpdateAccount updateAccount = new OASUpdateAccount();
        System.assertEquals(new List<OASKeyValue>(), updateAccount.parameters);
        System.assertEquals(null, updateAccount.exchangeId);
    }
}
