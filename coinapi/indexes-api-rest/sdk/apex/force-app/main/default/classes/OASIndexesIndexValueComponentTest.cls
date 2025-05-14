@isTest
private class OASIndexesIndexValueComponentTest {
    @isTest
    private static void equalsSameInstance() {
        OASIndexesIndexValueComponent indexesIndexValueComponent1 = OASIndexesIndexValueComponent.getExample();
        OASIndexesIndexValueComponent indexesIndexValueComponent2 = indexesIndexValueComponent1;
        OASIndexesIndexValueComponent indexesIndexValueComponent3 = new OASIndexesIndexValueComponent();
        OASIndexesIndexValueComponent indexesIndexValueComponent4 = indexesIndexValueComponent3;

        System.assert(indexesIndexValueComponent1.equals(indexesIndexValueComponent2));
        System.assert(indexesIndexValueComponent2.equals(indexesIndexValueComponent1));
        System.assert(indexesIndexValueComponent1.equals(indexesIndexValueComponent1));
        System.assert(indexesIndexValueComponent3.equals(indexesIndexValueComponent4));
        System.assert(indexesIndexValueComponent4.equals(indexesIndexValueComponent3));
        System.assert(indexesIndexValueComponent3.equals(indexesIndexValueComponent3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASIndexesIndexValueComponent indexesIndexValueComponent1 = OASIndexesIndexValueComponent.getExample();
        OASIndexesIndexValueComponent indexesIndexValueComponent2 = OASIndexesIndexValueComponent.getExample();
        OASIndexesIndexValueComponent indexesIndexValueComponent3 = new OASIndexesIndexValueComponent();
        OASIndexesIndexValueComponent indexesIndexValueComponent4 = new OASIndexesIndexValueComponent();

        System.assert(indexesIndexValueComponent1.equals(indexesIndexValueComponent2));
        System.assert(indexesIndexValueComponent2.equals(indexesIndexValueComponent1));
        System.assert(indexesIndexValueComponent3.equals(indexesIndexValueComponent4));
        System.assert(indexesIndexValueComponent4.equals(indexesIndexValueComponent3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASIndexesIndexValueComponent indexesIndexValueComponent1 = OASIndexesIndexValueComponent.getExample();
        OASIndexesIndexValueComponent indexesIndexValueComponent2 = new OASIndexesIndexValueComponent();

        System.assertEquals(false, indexesIndexValueComponent1.equals('foo'));
        System.assertEquals(false, indexesIndexValueComponent2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASIndexesIndexValueComponent indexesIndexValueComponent1 = OASIndexesIndexValueComponent.getExample();
        OASIndexesIndexValueComponent indexesIndexValueComponent2 = new OASIndexesIndexValueComponent();
        OASIndexesIndexValueComponent indexesIndexValueComponent3;

        System.assertEquals(false, indexesIndexValueComponent1.equals(indexesIndexValueComponent3));
        System.assertEquals(false, indexesIndexValueComponent2.equals(indexesIndexValueComponent3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASIndexesIndexValueComponent indexesIndexValueComponent1 = OASIndexesIndexValueComponent.getExample();
        OASIndexesIndexValueComponent indexesIndexValueComponent2 = new OASIndexesIndexValueComponent();

        System.assertEquals(indexesIndexValueComponent1.hashCode(), indexesIndexValueComponent1.hashCode());
        System.assertEquals(indexesIndexValueComponent2.hashCode(), indexesIndexValueComponent2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASIndexesIndexValueComponent indexesIndexValueComponent1 = OASIndexesIndexValueComponent.getExample();
        OASIndexesIndexValueComponent indexesIndexValueComponent2 = OASIndexesIndexValueComponent.getExample();
        OASIndexesIndexValueComponent indexesIndexValueComponent3 = new OASIndexesIndexValueComponent();
        OASIndexesIndexValueComponent indexesIndexValueComponent4 = new OASIndexesIndexValueComponent();

        System.assert(indexesIndexValueComponent1.equals(indexesIndexValueComponent2));
        System.assert(indexesIndexValueComponent3.equals(indexesIndexValueComponent4));
        System.assertEquals(indexesIndexValueComponent1.hashCode(), indexesIndexValueComponent2.hashCode());
        System.assertEquals(indexesIndexValueComponent3.hashCode(), indexesIndexValueComponent4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASIndexesIndexValueComponent indexesIndexValueComponent = new OASIndexesIndexValueComponent();
        Map<String, String> x-property-mappings = indexesIndexValueComponent.getx-property-mappings();
        System.assertEquals('componentId', x-property-mappings.get('component_id'));
        System.assertEquals('componentValue', x-property-mappings.get('component_value'));
    }
}
