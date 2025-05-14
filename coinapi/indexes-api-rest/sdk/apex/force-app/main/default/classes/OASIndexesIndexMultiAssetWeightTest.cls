@isTest
private class OASIndexesIndexMultiAssetWeightTest {
    @isTest
    private static void equalsSameInstance() {
        OASIndexesIndexMultiAssetWeight indexesIndexMultiAssetWeight1 = OASIndexesIndexMultiAssetWeight.getExample();
        OASIndexesIndexMultiAssetWeight indexesIndexMultiAssetWeight2 = indexesIndexMultiAssetWeight1;
        OASIndexesIndexMultiAssetWeight indexesIndexMultiAssetWeight3 = new OASIndexesIndexMultiAssetWeight();
        OASIndexesIndexMultiAssetWeight indexesIndexMultiAssetWeight4 = indexesIndexMultiAssetWeight3;

        System.assert(indexesIndexMultiAssetWeight1.equals(indexesIndexMultiAssetWeight2));
        System.assert(indexesIndexMultiAssetWeight2.equals(indexesIndexMultiAssetWeight1));
        System.assert(indexesIndexMultiAssetWeight1.equals(indexesIndexMultiAssetWeight1));
        System.assert(indexesIndexMultiAssetWeight3.equals(indexesIndexMultiAssetWeight4));
        System.assert(indexesIndexMultiAssetWeight4.equals(indexesIndexMultiAssetWeight3));
        System.assert(indexesIndexMultiAssetWeight3.equals(indexesIndexMultiAssetWeight3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASIndexesIndexMultiAssetWeight indexesIndexMultiAssetWeight1 = OASIndexesIndexMultiAssetWeight.getExample();
        OASIndexesIndexMultiAssetWeight indexesIndexMultiAssetWeight2 = OASIndexesIndexMultiAssetWeight.getExample();
        OASIndexesIndexMultiAssetWeight indexesIndexMultiAssetWeight3 = new OASIndexesIndexMultiAssetWeight();
        OASIndexesIndexMultiAssetWeight indexesIndexMultiAssetWeight4 = new OASIndexesIndexMultiAssetWeight();

        System.assert(indexesIndexMultiAssetWeight1.equals(indexesIndexMultiAssetWeight2));
        System.assert(indexesIndexMultiAssetWeight2.equals(indexesIndexMultiAssetWeight1));
        System.assert(indexesIndexMultiAssetWeight3.equals(indexesIndexMultiAssetWeight4));
        System.assert(indexesIndexMultiAssetWeight4.equals(indexesIndexMultiAssetWeight3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASIndexesIndexMultiAssetWeight indexesIndexMultiAssetWeight1 = OASIndexesIndexMultiAssetWeight.getExample();
        OASIndexesIndexMultiAssetWeight indexesIndexMultiAssetWeight2 = new OASIndexesIndexMultiAssetWeight();

        System.assertEquals(false, indexesIndexMultiAssetWeight1.equals('foo'));
        System.assertEquals(false, indexesIndexMultiAssetWeight2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASIndexesIndexMultiAssetWeight indexesIndexMultiAssetWeight1 = OASIndexesIndexMultiAssetWeight.getExample();
        OASIndexesIndexMultiAssetWeight indexesIndexMultiAssetWeight2 = new OASIndexesIndexMultiAssetWeight();
        OASIndexesIndexMultiAssetWeight indexesIndexMultiAssetWeight3;

        System.assertEquals(false, indexesIndexMultiAssetWeight1.equals(indexesIndexMultiAssetWeight3));
        System.assertEquals(false, indexesIndexMultiAssetWeight2.equals(indexesIndexMultiAssetWeight3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASIndexesIndexMultiAssetWeight indexesIndexMultiAssetWeight1 = OASIndexesIndexMultiAssetWeight.getExample();
        OASIndexesIndexMultiAssetWeight indexesIndexMultiAssetWeight2 = new OASIndexesIndexMultiAssetWeight();

        System.assertEquals(indexesIndexMultiAssetWeight1.hashCode(), indexesIndexMultiAssetWeight1.hashCode());
        System.assertEquals(indexesIndexMultiAssetWeight2.hashCode(), indexesIndexMultiAssetWeight2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASIndexesIndexMultiAssetWeight indexesIndexMultiAssetWeight1 = OASIndexesIndexMultiAssetWeight.getExample();
        OASIndexesIndexMultiAssetWeight indexesIndexMultiAssetWeight2 = OASIndexesIndexMultiAssetWeight.getExample();
        OASIndexesIndexMultiAssetWeight indexesIndexMultiAssetWeight3 = new OASIndexesIndexMultiAssetWeight();
        OASIndexesIndexMultiAssetWeight indexesIndexMultiAssetWeight4 = new OASIndexesIndexMultiAssetWeight();

        System.assert(indexesIndexMultiAssetWeight1.equals(indexesIndexMultiAssetWeight2));
        System.assert(indexesIndexMultiAssetWeight3.equals(indexesIndexMultiAssetWeight4));
        System.assertEquals(indexesIndexMultiAssetWeight1.hashCode(), indexesIndexMultiAssetWeight2.hashCode());
        System.assertEquals(indexesIndexMultiAssetWeight3.hashCode(), indexesIndexMultiAssetWeight4.hashCode());
    }
}
