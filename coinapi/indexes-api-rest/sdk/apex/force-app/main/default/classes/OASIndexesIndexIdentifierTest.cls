@isTest
private class OASIndexesIndexIdentifierTest {
    @isTest
    private static void equalsSameInstance() {
        OASIndexesIndexIdentifier indexesIndexIdentifier1 = OASIndexesIndexIdentifier.getExample();
        OASIndexesIndexIdentifier indexesIndexIdentifier2 = indexesIndexIdentifier1;
        OASIndexesIndexIdentifier indexesIndexIdentifier3 = new OASIndexesIndexIdentifier();
        OASIndexesIndexIdentifier indexesIndexIdentifier4 = indexesIndexIdentifier3;

        System.assert(indexesIndexIdentifier1.equals(indexesIndexIdentifier2));
        System.assert(indexesIndexIdentifier2.equals(indexesIndexIdentifier1));
        System.assert(indexesIndexIdentifier1.equals(indexesIndexIdentifier1));
        System.assert(indexesIndexIdentifier3.equals(indexesIndexIdentifier4));
        System.assert(indexesIndexIdentifier4.equals(indexesIndexIdentifier3));
        System.assert(indexesIndexIdentifier3.equals(indexesIndexIdentifier3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASIndexesIndexIdentifier indexesIndexIdentifier1 = OASIndexesIndexIdentifier.getExample();
        OASIndexesIndexIdentifier indexesIndexIdentifier2 = OASIndexesIndexIdentifier.getExample();
        OASIndexesIndexIdentifier indexesIndexIdentifier3 = new OASIndexesIndexIdentifier();
        OASIndexesIndexIdentifier indexesIndexIdentifier4 = new OASIndexesIndexIdentifier();

        System.assert(indexesIndexIdentifier1.equals(indexesIndexIdentifier2));
        System.assert(indexesIndexIdentifier2.equals(indexesIndexIdentifier1));
        System.assert(indexesIndexIdentifier3.equals(indexesIndexIdentifier4));
        System.assert(indexesIndexIdentifier4.equals(indexesIndexIdentifier3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASIndexesIndexIdentifier indexesIndexIdentifier1 = OASIndexesIndexIdentifier.getExample();
        OASIndexesIndexIdentifier indexesIndexIdentifier2 = new OASIndexesIndexIdentifier();

        System.assertEquals(false, indexesIndexIdentifier1.equals('foo'));
        System.assertEquals(false, indexesIndexIdentifier2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASIndexesIndexIdentifier indexesIndexIdentifier1 = OASIndexesIndexIdentifier.getExample();
        OASIndexesIndexIdentifier indexesIndexIdentifier2 = new OASIndexesIndexIdentifier();
        OASIndexesIndexIdentifier indexesIndexIdentifier3;

        System.assertEquals(false, indexesIndexIdentifier1.equals(indexesIndexIdentifier3));
        System.assertEquals(false, indexesIndexIdentifier2.equals(indexesIndexIdentifier3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASIndexesIndexIdentifier indexesIndexIdentifier1 = OASIndexesIndexIdentifier.getExample();
        OASIndexesIndexIdentifier indexesIndexIdentifier2 = new OASIndexesIndexIdentifier();

        System.assertEquals(indexesIndexIdentifier1.hashCode(), indexesIndexIdentifier1.hashCode());
        System.assertEquals(indexesIndexIdentifier2.hashCode(), indexesIndexIdentifier2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASIndexesIndexIdentifier indexesIndexIdentifier1 = OASIndexesIndexIdentifier.getExample();
        OASIndexesIndexIdentifier indexesIndexIdentifier2 = OASIndexesIndexIdentifier.getExample();
        OASIndexesIndexIdentifier indexesIndexIdentifier3 = new OASIndexesIndexIdentifier();
        OASIndexesIndexIdentifier indexesIndexIdentifier4 = new OASIndexesIndexIdentifier();

        System.assert(indexesIndexIdentifier1.equals(indexesIndexIdentifier2));
        System.assert(indexesIndexIdentifier3.equals(indexesIndexIdentifier4));
        System.assertEquals(indexesIndexIdentifier1.hashCode(), indexesIndexIdentifier2.hashCode());
        System.assertEquals(indexesIndexIdentifier3.hashCode(), indexesIndexIdentifier4.hashCode());
    }
}
