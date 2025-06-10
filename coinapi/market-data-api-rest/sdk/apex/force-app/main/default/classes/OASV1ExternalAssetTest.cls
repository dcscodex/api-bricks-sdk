@isTest
private class OASV1ExternalAssetTest {
    @isTest
    private static void equalsSameInstance() {
        OASV1ExternalAsset v1ExternalAsset1 = OASV1ExternalAsset.getExample();
        OASV1ExternalAsset v1ExternalAsset2 = v1ExternalAsset1;
        OASV1ExternalAsset v1ExternalAsset3 = new OASV1ExternalAsset();
        OASV1ExternalAsset v1ExternalAsset4 = v1ExternalAsset3;

        System.assert(v1ExternalAsset1.equals(v1ExternalAsset2));
        System.assert(v1ExternalAsset2.equals(v1ExternalAsset1));
        System.assert(v1ExternalAsset1.equals(v1ExternalAsset1));
        System.assert(v1ExternalAsset3.equals(v1ExternalAsset4));
        System.assert(v1ExternalAsset4.equals(v1ExternalAsset3));
        System.assert(v1ExternalAsset3.equals(v1ExternalAsset3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASV1ExternalAsset v1ExternalAsset1 = OASV1ExternalAsset.getExample();
        OASV1ExternalAsset v1ExternalAsset2 = OASV1ExternalAsset.getExample();
        OASV1ExternalAsset v1ExternalAsset3 = new OASV1ExternalAsset();
        OASV1ExternalAsset v1ExternalAsset4 = new OASV1ExternalAsset();

        System.assert(v1ExternalAsset1.equals(v1ExternalAsset2));
        System.assert(v1ExternalAsset2.equals(v1ExternalAsset1));
        System.assert(v1ExternalAsset3.equals(v1ExternalAsset4));
        System.assert(v1ExternalAsset4.equals(v1ExternalAsset3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASV1ExternalAsset v1ExternalAsset1 = OASV1ExternalAsset.getExample();
        OASV1ExternalAsset v1ExternalAsset2 = new OASV1ExternalAsset();

        System.assertEquals(false, v1ExternalAsset1.equals('foo'));
        System.assertEquals(false, v1ExternalAsset2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASV1ExternalAsset v1ExternalAsset1 = OASV1ExternalAsset.getExample();
        OASV1ExternalAsset v1ExternalAsset2 = new OASV1ExternalAsset();
        OASV1ExternalAsset v1ExternalAsset3;

        System.assertEquals(false, v1ExternalAsset1.equals(v1ExternalAsset3));
        System.assertEquals(false, v1ExternalAsset2.equals(v1ExternalAsset3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASV1ExternalAsset v1ExternalAsset1 = OASV1ExternalAsset.getExample();
        OASV1ExternalAsset v1ExternalAsset2 = new OASV1ExternalAsset();

        System.assertEquals(v1ExternalAsset1.hashCode(), v1ExternalAsset1.hashCode());
        System.assertEquals(v1ExternalAsset2.hashCode(), v1ExternalAsset2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASV1ExternalAsset v1ExternalAsset1 = OASV1ExternalAsset.getExample();
        OASV1ExternalAsset v1ExternalAsset2 = OASV1ExternalAsset.getExample();
        OASV1ExternalAsset v1ExternalAsset3 = new OASV1ExternalAsset();
        OASV1ExternalAsset v1ExternalAsset4 = new OASV1ExternalAsset();

        System.assert(v1ExternalAsset1.equals(v1ExternalAsset2));
        System.assert(v1ExternalAsset3.equals(v1ExternalAsset4));
        System.assertEquals(v1ExternalAsset1.hashCode(), v1ExternalAsset2.hashCode());
        System.assertEquals(v1ExternalAsset3.hashCode(), v1ExternalAsset4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASV1ExternalAsset v1ExternalAsset = new OASV1ExternalAsset();
        Map<String, String> x-property-mappings = v1ExternalAsset.getx-property-mappings();
        System.assertEquals('assetId', x-property-mappings.get('asset_id'));
        System.assertEquals('assetType', x-property-mappings.get('asset_type'));
    }
}
