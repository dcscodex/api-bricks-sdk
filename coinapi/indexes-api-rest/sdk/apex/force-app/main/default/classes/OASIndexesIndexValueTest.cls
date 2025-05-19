@isTest
private class OASIndexesIndexValueTest {
    @isTest
    private static void equalsSameInstance() {
        OASIndexesIndexValue indexesIndexValue1 = OASIndexesIndexValue.getExample();
        OASIndexesIndexValue indexesIndexValue2 = indexesIndexValue1;
        OASIndexesIndexValue indexesIndexValue3 = new OASIndexesIndexValue();
        OASIndexesIndexValue indexesIndexValue4 = indexesIndexValue3;

        System.assert(indexesIndexValue1.equals(indexesIndexValue2));
        System.assert(indexesIndexValue2.equals(indexesIndexValue1));
        System.assert(indexesIndexValue1.equals(indexesIndexValue1));
        System.assert(indexesIndexValue3.equals(indexesIndexValue4));
        System.assert(indexesIndexValue4.equals(indexesIndexValue3));
        System.assert(indexesIndexValue3.equals(indexesIndexValue3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASIndexesIndexValue indexesIndexValue1 = OASIndexesIndexValue.getExample();
        OASIndexesIndexValue indexesIndexValue2 = OASIndexesIndexValue.getExample();
        OASIndexesIndexValue indexesIndexValue3 = new OASIndexesIndexValue();
        OASIndexesIndexValue indexesIndexValue4 = new OASIndexesIndexValue();

        System.assert(indexesIndexValue1.equals(indexesIndexValue2));
        System.assert(indexesIndexValue2.equals(indexesIndexValue1));
        System.assert(indexesIndexValue3.equals(indexesIndexValue4));
        System.assert(indexesIndexValue4.equals(indexesIndexValue3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASIndexesIndexValue indexesIndexValue1 = OASIndexesIndexValue.getExample();
        OASIndexesIndexValue indexesIndexValue2 = new OASIndexesIndexValue();

        System.assertEquals(false, indexesIndexValue1.equals('foo'));
        System.assertEquals(false, indexesIndexValue2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASIndexesIndexValue indexesIndexValue1 = OASIndexesIndexValue.getExample();
        OASIndexesIndexValue indexesIndexValue2 = new OASIndexesIndexValue();
        OASIndexesIndexValue indexesIndexValue3;

        System.assertEquals(false, indexesIndexValue1.equals(indexesIndexValue3));
        System.assertEquals(false, indexesIndexValue2.equals(indexesIndexValue3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASIndexesIndexValue indexesIndexValue1 = OASIndexesIndexValue.getExample();
        OASIndexesIndexValue indexesIndexValue2 = new OASIndexesIndexValue();

        System.assertEquals(indexesIndexValue1.hashCode(), indexesIndexValue1.hashCode());
        System.assertEquals(indexesIndexValue2.hashCode(), indexesIndexValue2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASIndexesIndexValue indexesIndexValue1 = OASIndexesIndexValue.getExample();
        OASIndexesIndexValue indexesIndexValue2 = OASIndexesIndexValue.getExample();
        OASIndexesIndexValue indexesIndexValue3 = new OASIndexesIndexValue();
        OASIndexesIndexValue indexesIndexValue4 = new OASIndexesIndexValue();

        System.assert(indexesIndexValue1.equals(indexesIndexValue2));
        System.assert(indexesIndexValue3.equals(indexesIndexValue4));
        System.assertEquals(indexesIndexValue1.hashCode(), indexesIndexValue2.hashCode());
        System.assertEquals(indexesIndexValue3.hashCode(), indexesIndexValue4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASIndexesIndexValue indexesIndexValue = new OASIndexesIndexValue();
        System.assertEquals(new List<OASIndexesIndexValueComponent>(), indexesIndexValue.composition);
        System.assertEquals(null, indexesIndexValue.timestamp);
        System.assertEquals(null, indexesIndexValue.value);
    }
}
