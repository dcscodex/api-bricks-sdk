@isTest
private class OASIndexesIndexDefinitionSnapshotEntTest {
    @isTest
    private static void equalsSameInstance() {
        OASIndexesIndexDefinitionSnapshotEnt indexesIndexDefinitionSnapshotEntry1 = OASIndexesIndexDefinitionSnapshotEnt.getExample();
        OASIndexesIndexDefinitionSnapshotEnt indexesIndexDefinitionSnapshotEntry2 = indexesIndexDefinitionSnapshotEntry1;
        OASIndexesIndexDefinitionSnapshotEnt indexesIndexDefinitionSnapshotEntry3 = new OASIndexesIndexDefinitionSnapshotEnt();
        OASIndexesIndexDefinitionSnapshotEnt indexesIndexDefinitionSnapshotEntry4 = indexesIndexDefinitionSnapshotEntry3;

        System.assert(indexesIndexDefinitionSnapshotEntry1.equals(indexesIndexDefinitionSnapshotEntry2));
        System.assert(indexesIndexDefinitionSnapshotEntry2.equals(indexesIndexDefinitionSnapshotEntry1));
        System.assert(indexesIndexDefinitionSnapshotEntry1.equals(indexesIndexDefinitionSnapshotEntry1));
        System.assert(indexesIndexDefinitionSnapshotEntry3.equals(indexesIndexDefinitionSnapshotEntry4));
        System.assert(indexesIndexDefinitionSnapshotEntry4.equals(indexesIndexDefinitionSnapshotEntry3));
        System.assert(indexesIndexDefinitionSnapshotEntry3.equals(indexesIndexDefinitionSnapshotEntry3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASIndexesIndexDefinitionSnapshotEnt indexesIndexDefinitionSnapshotEntry1 = OASIndexesIndexDefinitionSnapshotEnt.getExample();
        OASIndexesIndexDefinitionSnapshotEnt indexesIndexDefinitionSnapshotEntry2 = OASIndexesIndexDefinitionSnapshotEnt.getExample();
        OASIndexesIndexDefinitionSnapshotEnt indexesIndexDefinitionSnapshotEntry3 = new OASIndexesIndexDefinitionSnapshotEnt();
        OASIndexesIndexDefinitionSnapshotEnt indexesIndexDefinitionSnapshotEntry4 = new OASIndexesIndexDefinitionSnapshotEnt();

        System.assert(indexesIndexDefinitionSnapshotEntry1.equals(indexesIndexDefinitionSnapshotEntry2));
        System.assert(indexesIndexDefinitionSnapshotEntry2.equals(indexesIndexDefinitionSnapshotEntry1));
        System.assert(indexesIndexDefinitionSnapshotEntry3.equals(indexesIndexDefinitionSnapshotEntry4));
        System.assert(indexesIndexDefinitionSnapshotEntry4.equals(indexesIndexDefinitionSnapshotEntry3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASIndexesIndexDefinitionSnapshotEnt indexesIndexDefinitionSnapshotEntry1 = OASIndexesIndexDefinitionSnapshotEnt.getExample();
        OASIndexesIndexDefinitionSnapshotEnt indexesIndexDefinitionSnapshotEntry2 = new OASIndexesIndexDefinitionSnapshotEnt();

        System.assertEquals(false, indexesIndexDefinitionSnapshotEntry1.equals('foo'));
        System.assertEquals(false, indexesIndexDefinitionSnapshotEntry2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASIndexesIndexDefinitionSnapshotEnt indexesIndexDefinitionSnapshotEntry1 = OASIndexesIndexDefinitionSnapshotEnt.getExample();
        OASIndexesIndexDefinitionSnapshotEnt indexesIndexDefinitionSnapshotEntry2 = new OASIndexesIndexDefinitionSnapshotEnt();
        OASIndexesIndexDefinitionSnapshotEnt indexesIndexDefinitionSnapshotEntry3;

        System.assertEquals(false, indexesIndexDefinitionSnapshotEntry1.equals(indexesIndexDefinitionSnapshotEntry3));
        System.assertEquals(false, indexesIndexDefinitionSnapshotEntry2.equals(indexesIndexDefinitionSnapshotEntry3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASIndexesIndexDefinitionSnapshotEnt indexesIndexDefinitionSnapshotEntry1 = OASIndexesIndexDefinitionSnapshotEnt.getExample();
        OASIndexesIndexDefinitionSnapshotEnt indexesIndexDefinitionSnapshotEntry2 = new OASIndexesIndexDefinitionSnapshotEnt();

        System.assertEquals(indexesIndexDefinitionSnapshotEntry1.hashCode(), indexesIndexDefinitionSnapshotEntry1.hashCode());
        System.assertEquals(indexesIndexDefinitionSnapshotEntry2.hashCode(), indexesIndexDefinitionSnapshotEntry2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASIndexesIndexDefinitionSnapshotEnt indexesIndexDefinitionSnapshotEntry1 = OASIndexesIndexDefinitionSnapshotEnt.getExample();
        OASIndexesIndexDefinitionSnapshotEnt indexesIndexDefinitionSnapshotEntry2 = OASIndexesIndexDefinitionSnapshotEnt.getExample();
        OASIndexesIndexDefinitionSnapshotEnt indexesIndexDefinitionSnapshotEntry3 = new OASIndexesIndexDefinitionSnapshotEnt();
        OASIndexesIndexDefinitionSnapshotEnt indexesIndexDefinitionSnapshotEntry4 = new OASIndexesIndexDefinitionSnapshotEnt();

        System.assert(indexesIndexDefinitionSnapshotEntry1.equals(indexesIndexDefinitionSnapshotEntry2));
        System.assert(indexesIndexDefinitionSnapshotEntry3.equals(indexesIndexDefinitionSnapshotEntry4));
        System.assertEquals(indexesIndexDefinitionSnapshotEntry1.hashCode(), indexesIndexDefinitionSnapshotEntry2.hashCode());
        System.assertEquals(indexesIndexDefinitionSnapshotEntry3.hashCode(), indexesIndexDefinitionSnapshotEntry4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASIndexesIndexDefinitionSnapshotEnt indexesIndexDefinitionSnapshotEntry = new OASIndexesIndexDefinitionSnapshotEnt();
        Map<String, String> x-property-mappings = indexesIndexDefinitionSnapshotEntry.getx-property-mappings();
        System.assertEquals('indexId', x-property-mappings.get('index_id'));
    }
}
