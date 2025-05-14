@isTest
private class OASLevel3ClearBookModelTest {
    @isTest
    private static void equalsSameInstance() {
        OASLevel3ClearBookModel level3ClearBookModel1 = OASLevel3ClearBookModel.getExample();
        OASLevel3ClearBookModel level3ClearBookModel2 = level3ClearBookModel1;
        OASLevel3ClearBookModel level3ClearBookModel3 = new OASLevel3ClearBookModel();
        OASLevel3ClearBookModel level3ClearBookModel4 = level3ClearBookModel3;

        System.assert(level3ClearBookModel1.equals(level3ClearBookModel2));
        System.assert(level3ClearBookModel2.equals(level3ClearBookModel1));
        System.assert(level3ClearBookModel1.equals(level3ClearBookModel1));
        System.assert(level3ClearBookModel3.equals(level3ClearBookModel4));
        System.assert(level3ClearBookModel4.equals(level3ClearBookModel3));
        System.assert(level3ClearBookModel3.equals(level3ClearBookModel3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLevel3ClearBookModel level3ClearBookModel1 = OASLevel3ClearBookModel.getExample();
        OASLevel3ClearBookModel level3ClearBookModel2 = OASLevel3ClearBookModel.getExample();
        OASLevel3ClearBookModel level3ClearBookModel3 = new OASLevel3ClearBookModel();
        OASLevel3ClearBookModel level3ClearBookModel4 = new OASLevel3ClearBookModel();

        System.assert(level3ClearBookModel1.equals(level3ClearBookModel2));
        System.assert(level3ClearBookModel2.equals(level3ClearBookModel1));
        System.assert(level3ClearBookModel3.equals(level3ClearBookModel4));
        System.assert(level3ClearBookModel4.equals(level3ClearBookModel3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLevel3ClearBookModel level3ClearBookModel1 = OASLevel3ClearBookModel.getExample();
        OASLevel3ClearBookModel level3ClearBookModel2 = new OASLevel3ClearBookModel();

        System.assertEquals(false, level3ClearBookModel1.equals('foo'));
        System.assertEquals(false, level3ClearBookModel2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLevel3ClearBookModel level3ClearBookModel1 = OASLevel3ClearBookModel.getExample();
        OASLevel3ClearBookModel level3ClearBookModel2 = new OASLevel3ClearBookModel();
        OASLevel3ClearBookModel level3ClearBookModel3;

        System.assertEquals(false, level3ClearBookModel1.equals(level3ClearBookModel3));
        System.assertEquals(false, level3ClearBookModel2.equals(level3ClearBookModel3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLevel3ClearBookModel level3ClearBookModel1 = OASLevel3ClearBookModel.getExample();
        OASLevel3ClearBookModel level3ClearBookModel2 = new OASLevel3ClearBookModel();

        System.assertEquals(level3ClearBookModel1.hashCode(), level3ClearBookModel1.hashCode());
        System.assertEquals(level3ClearBookModel2.hashCode(), level3ClearBookModel2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLevel3ClearBookModel level3ClearBookModel1 = OASLevel3ClearBookModel.getExample();
        OASLevel3ClearBookModel level3ClearBookModel2 = OASLevel3ClearBookModel.getExample();
        OASLevel3ClearBookModel level3ClearBookModel3 = new OASLevel3ClearBookModel();
        OASLevel3ClearBookModel level3ClearBookModel4 = new OASLevel3ClearBookModel();

        System.assert(level3ClearBookModel1.equals(level3ClearBookModel2));
        System.assert(level3ClearBookModel3.equals(level3ClearBookModel4));
        System.assertEquals(level3ClearBookModel1.hashCode(), level3ClearBookModel2.hashCode());
        System.assertEquals(level3ClearBookModel3.hashCode(), level3ClearBookModel4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLevel3ClearBookModel level3ClearBookModel = new OASLevel3ClearBookModel();
        Map<String, String> x-property-mappings = level3ClearBookModel.getx-property-mappings();
        System.assertEquals('timestampNanos', x-property-mappings.get('timestamp_nanos'));
    }
}
