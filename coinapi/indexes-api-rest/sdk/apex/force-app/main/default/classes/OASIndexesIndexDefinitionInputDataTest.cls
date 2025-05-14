@isTest
private class OASIndexesIndexDefinitionInputDataTest {
    @isTest
    private static void equalsSameInstance() {
        OASIndexesIndexDefinitionInputData indexesIndexDefinitionInputData1 = OASIndexesIndexDefinitionInputData.getExample();
        OASIndexesIndexDefinitionInputData indexesIndexDefinitionInputData2 = indexesIndexDefinitionInputData1;
        OASIndexesIndexDefinitionInputData indexesIndexDefinitionInputData3 = new OASIndexesIndexDefinitionInputData();
        OASIndexesIndexDefinitionInputData indexesIndexDefinitionInputData4 = indexesIndexDefinitionInputData3;

        System.assert(indexesIndexDefinitionInputData1.equals(indexesIndexDefinitionInputData2));
        System.assert(indexesIndexDefinitionInputData2.equals(indexesIndexDefinitionInputData1));
        System.assert(indexesIndexDefinitionInputData1.equals(indexesIndexDefinitionInputData1));
        System.assert(indexesIndexDefinitionInputData3.equals(indexesIndexDefinitionInputData4));
        System.assert(indexesIndexDefinitionInputData4.equals(indexesIndexDefinitionInputData3));
        System.assert(indexesIndexDefinitionInputData3.equals(indexesIndexDefinitionInputData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASIndexesIndexDefinitionInputData indexesIndexDefinitionInputData1 = OASIndexesIndexDefinitionInputData.getExample();
        OASIndexesIndexDefinitionInputData indexesIndexDefinitionInputData2 = OASIndexesIndexDefinitionInputData.getExample();
        OASIndexesIndexDefinitionInputData indexesIndexDefinitionInputData3 = new OASIndexesIndexDefinitionInputData();
        OASIndexesIndexDefinitionInputData indexesIndexDefinitionInputData4 = new OASIndexesIndexDefinitionInputData();

        System.assert(indexesIndexDefinitionInputData1.equals(indexesIndexDefinitionInputData2));
        System.assert(indexesIndexDefinitionInputData2.equals(indexesIndexDefinitionInputData1));
        System.assert(indexesIndexDefinitionInputData3.equals(indexesIndexDefinitionInputData4));
        System.assert(indexesIndexDefinitionInputData4.equals(indexesIndexDefinitionInputData3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASIndexesIndexDefinitionInputData indexesIndexDefinitionInputData1 = OASIndexesIndexDefinitionInputData.getExample();
        OASIndexesIndexDefinitionInputData indexesIndexDefinitionInputData2 = new OASIndexesIndexDefinitionInputData();

        System.assertEquals(false, indexesIndexDefinitionInputData1.equals('foo'));
        System.assertEquals(false, indexesIndexDefinitionInputData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASIndexesIndexDefinitionInputData indexesIndexDefinitionInputData1 = OASIndexesIndexDefinitionInputData.getExample();
        OASIndexesIndexDefinitionInputData indexesIndexDefinitionInputData2 = new OASIndexesIndexDefinitionInputData();
        OASIndexesIndexDefinitionInputData indexesIndexDefinitionInputData3;

        System.assertEquals(false, indexesIndexDefinitionInputData1.equals(indexesIndexDefinitionInputData3));
        System.assertEquals(false, indexesIndexDefinitionInputData2.equals(indexesIndexDefinitionInputData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASIndexesIndexDefinitionInputData indexesIndexDefinitionInputData1 = OASIndexesIndexDefinitionInputData.getExample();
        OASIndexesIndexDefinitionInputData indexesIndexDefinitionInputData2 = new OASIndexesIndexDefinitionInputData();

        System.assertEquals(indexesIndexDefinitionInputData1.hashCode(), indexesIndexDefinitionInputData1.hashCode());
        System.assertEquals(indexesIndexDefinitionInputData2.hashCode(), indexesIndexDefinitionInputData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASIndexesIndexDefinitionInputData indexesIndexDefinitionInputData1 = OASIndexesIndexDefinitionInputData.getExample();
        OASIndexesIndexDefinitionInputData indexesIndexDefinitionInputData2 = OASIndexesIndexDefinitionInputData.getExample();
        OASIndexesIndexDefinitionInputData indexesIndexDefinitionInputData3 = new OASIndexesIndexDefinitionInputData();
        OASIndexesIndexDefinitionInputData indexesIndexDefinitionInputData4 = new OASIndexesIndexDefinitionInputData();

        System.assert(indexesIndexDefinitionInputData1.equals(indexesIndexDefinitionInputData2));
        System.assert(indexesIndexDefinitionInputData3.equals(indexesIndexDefinitionInputData4));
        System.assertEquals(indexesIndexDefinitionInputData1.hashCode(), indexesIndexDefinitionInputData2.hashCode());
        System.assertEquals(indexesIndexDefinitionInputData3.hashCode(), indexesIndexDefinitionInputData4.hashCode());
    }
}
