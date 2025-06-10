@isTest
private class OASOptionsStrikeTest {
    @isTest
    private static void equalsSameInstance() {
        OASOptionsStrike optionsStrike1 = OASOptionsStrike.getExample();
        OASOptionsStrike optionsStrike2 = optionsStrike1;
        OASOptionsStrike optionsStrike3 = new OASOptionsStrike();
        OASOptionsStrike optionsStrike4 = optionsStrike3;

        System.assert(optionsStrike1.equals(optionsStrike2));
        System.assert(optionsStrike2.equals(optionsStrike1));
        System.assert(optionsStrike1.equals(optionsStrike1));
        System.assert(optionsStrike3.equals(optionsStrike4));
        System.assert(optionsStrike4.equals(optionsStrike3));
        System.assert(optionsStrike3.equals(optionsStrike3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOptionsStrike optionsStrike1 = OASOptionsStrike.getExample();
        OASOptionsStrike optionsStrike2 = OASOptionsStrike.getExample();
        OASOptionsStrike optionsStrike3 = new OASOptionsStrike();
        OASOptionsStrike optionsStrike4 = new OASOptionsStrike();

        System.assert(optionsStrike1.equals(optionsStrike2));
        System.assert(optionsStrike2.equals(optionsStrike1));
        System.assert(optionsStrike3.equals(optionsStrike4));
        System.assert(optionsStrike4.equals(optionsStrike3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOptionsStrike optionsStrike1 = OASOptionsStrike.getExample();
        OASOptionsStrike optionsStrike2 = new OASOptionsStrike();

        System.assertEquals(false, optionsStrike1.equals('foo'));
        System.assertEquals(false, optionsStrike2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOptionsStrike optionsStrike1 = OASOptionsStrike.getExample();
        OASOptionsStrike optionsStrike2 = new OASOptionsStrike();
        OASOptionsStrike optionsStrike3;

        System.assertEquals(false, optionsStrike1.equals(optionsStrike3));
        System.assertEquals(false, optionsStrike2.equals(optionsStrike3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOptionsStrike optionsStrike1 = OASOptionsStrike.getExample();
        OASOptionsStrike optionsStrike2 = new OASOptionsStrike();

        System.assertEquals(optionsStrike1.hashCode(), optionsStrike1.hashCode());
        System.assertEquals(optionsStrike2.hashCode(), optionsStrike2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOptionsStrike optionsStrike1 = OASOptionsStrike.getExample();
        OASOptionsStrike optionsStrike2 = OASOptionsStrike.getExample();
        OASOptionsStrike optionsStrike3 = new OASOptionsStrike();
        OASOptionsStrike optionsStrike4 = new OASOptionsStrike();

        System.assert(optionsStrike1.equals(optionsStrike2));
        System.assert(optionsStrike3.equals(optionsStrike4));
        System.assertEquals(optionsStrike1.hashCode(), optionsStrike2.hashCode());
        System.assertEquals(optionsStrike3.hashCode(), optionsStrike4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOptionsStrike optionsStrike = new OASOptionsStrike();
        Map<String, String> x-property-mappings = optionsStrike.getx-property-mappings();
        System.assertEquals('strikePrice', x-property-mappings.get('strike_price'));
    }
}
