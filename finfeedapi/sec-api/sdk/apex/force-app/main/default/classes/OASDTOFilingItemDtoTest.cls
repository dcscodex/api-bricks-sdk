@isTest
private class OASDTOFilingItemDtoTest {
    @isTest
    private static void equalsSameInstance() {
        OASDTOFilingItemDto dtOFilingItemDto1 = OASDTOFilingItemDto.getExample();
        OASDTOFilingItemDto dtOFilingItemDto2 = dtOFilingItemDto1;
        OASDTOFilingItemDto dtOFilingItemDto3 = new OASDTOFilingItemDto();
        OASDTOFilingItemDto dtOFilingItemDto4 = dtOFilingItemDto3;

        System.assert(dtOFilingItemDto1.equals(dtOFilingItemDto2));
        System.assert(dtOFilingItemDto2.equals(dtOFilingItemDto1));
        System.assert(dtOFilingItemDto1.equals(dtOFilingItemDto1));
        System.assert(dtOFilingItemDto3.equals(dtOFilingItemDto4));
        System.assert(dtOFilingItemDto4.equals(dtOFilingItemDto3));
        System.assert(dtOFilingItemDto3.equals(dtOFilingItemDto3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDTOFilingItemDto dtOFilingItemDto1 = OASDTOFilingItemDto.getExample();
        OASDTOFilingItemDto dtOFilingItemDto2 = OASDTOFilingItemDto.getExample();
        OASDTOFilingItemDto dtOFilingItemDto3 = new OASDTOFilingItemDto();
        OASDTOFilingItemDto dtOFilingItemDto4 = new OASDTOFilingItemDto();

        System.assert(dtOFilingItemDto1.equals(dtOFilingItemDto2));
        System.assert(dtOFilingItemDto2.equals(dtOFilingItemDto1));
        System.assert(dtOFilingItemDto3.equals(dtOFilingItemDto4));
        System.assert(dtOFilingItemDto4.equals(dtOFilingItemDto3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDTOFilingItemDto dtOFilingItemDto1 = OASDTOFilingItemDto.getExample();
        OASDTOFilingItemDto dtOFilingItemDto2 = new OASDTOFilingItemDto();

        System.assertEquals(false, dtOFilingItemDto1.equals('foo'));
        System.assertEquals(false, dtOFilingItemDto2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDTOFilingItemDto dtOFilingItemDto1 = OASDTOFilingItemDto.getExample();
        OASDTOFilingItemDto dtOFilingItemDto2 = new OASDTOFilingItemDto();
        OASDTOFilingItemDto dtOFilingItemDto3;

        System.assertEquals(false, dtOFilingItemDto1.equals(dtOFilingItemDto3));
        System.assertEquals(false, dtOFilingItemDto2.equals(dtOFilingItemDto3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDTOFilingItemDto dtOFilingItemDto1 = OASDTOFilingItemDto.getExample();
        OASDTOFilingItemDto dtOFilingItemDto2 = new OASDTOFilingItemDto();

        System.assertEquals(dtOFilingItemDto1.hashCode(), dtOFilingItemDto1.hashCode());
        System.assertEquals(dtOFilingItemDto2.hashCode(), dtOFilingItemDto2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDTOFilingItemDto dtOFilingItemDto1 = OASDTOFilingItemDto.getExample();
        OASDTOFilingItemDto dtOFilingItemDto2 = OASDTOFilingItemDto.getExample();
        OASDTOFilingItemDto dtOFilingItemDto3 = new OASDTOFilingItemDto();
        OASDTOFilingItemDto dtOFilingItemDto4 = new OASDTOFilingItemDto();

        System.assert(dtOFilingItemDto1.equals(dtOFilingItemDto2));
        System.assert(dtOFilingItemDto3.equals(dtOFilingItemDto4));
        System.assertEquals(dtOFilingItemDto1.hashCode(), dtOFilingItemDto2.hashCode());
        System.assertEquals(dtOFilingItemDto3.hashCode(), dtOFilingItemDto4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDTOFilingItemDto dtOFilingItemDto = new OASDTOFilingItemDto();
        Map<String, String> x-property-mappings = dtOFilingItemDto.getx-property-mappings();
        System.assertEquals('itemNumber', x-property-mappings.get('item_number'));
        System.assertEquals('itemTitle', x-property-mappings.get('item_title'));
    }
}
