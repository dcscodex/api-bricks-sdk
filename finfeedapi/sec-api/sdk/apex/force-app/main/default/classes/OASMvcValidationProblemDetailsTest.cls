@isTest
private class OASMvcValidationProblemDetailsTest {
    @isTest
    private static void equalsSameInstance() {
        OASMvcValidationProblemDetails mvcValidationProblemDetails1 = OASMvcValidationProblemDetails.getExample();
        OASMvcValidationProblemDetails mvcValidationProblemDetails2 = mvcValidationProblemDetails1;
        OASMvcValidationProblemDetails mvcValidationProblemDetails3 = new OASMvcValidationProblemDetails();
        OASMvcValidationProblemDetails mvcValidationProblemDetails4 = mvcValidationProblemDetails3;

        System.assert(mvcValidationProblemDetails1.equals(mvcValidationProblemDetails2));
        System.assert(mvcValidationProblemDetails2.equals(mvcValidationProblemDetails1));
        System.assert(mvcValidationProblemDetails1.equals(mvcValidationProblemDetails1));
        System.assert(mvcValidationProblemDetails3.equals(mvcValidationProblemDetails4));
        System.assert(mvcValidationProblemDetails4.equals(mvcValidationProblemDetails3));
        System.assert(mvcValidationProblemDetails3.equals(mvcValidationProblemDetails3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASMvcValidationProblemDetails mvcValidationProblemDetails1 = OASMvcValidationProblemDetails.getExample();
        OASMvcValidationProblemDetails mvcValidationProblemDetails2 = OASMvcValidationProblemDetails.getExample();
        OASMvcValidationProblemDetails mvcValidationProblemDetails3 = new OASMvcValidationProblemDetails();
        OASMvcValidationProblemDetails mvcValidationProblemDetails4 = new OASMvcValidationProblemDetails();

        System.assert(mvcValidationProblemDetails1.equals(mvcValidationProblemDetails2));
        System.assert(mvcValidationProblemDetails2.equals(mvcValidationProblemDetails1));
        System.assert(mvcValidationProblemDetails3.equals(mvcValidationProblemDetails4));
        System.assert(mvcValidationProblemDetails4.equals(mvcValidationProblemDetails3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASMvcValidationProblemDetails mvcValidationProblemDetails1 = OASMvcValidationProblemDetails.getExample();
        OASMvcValidationProblemDetails mvcValidationProblemDetails2 = new OASMvcValidationProblemDetails();

        System.assertEquals(false, mvcValidationProblemDetails1.equals('foo'));
        System.assertEquals(false, mvcValidationProblemDetails2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASMvcValidationProblemDetails mvcValidationProblemDetails1 = OASMvcValidationProblemDetails.getExample();
        OASMvcValidationProblemDetails mvcValidationProblemDetails2 = new OASMvcValidationProblemDetails();
        OASMvcValidationProblemDetails mvcValidationProblemDetails3;

        System.assertEquals(false, mvcValidationProblemDetails1.equals(mvcValidationProblemDetails3));
        System.assertEquals(false, mvcValidationProblemDetails2.equals(mvcValidationProblemDetails3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASMvcValidationProblemDetails mvcValidationProblemDetails1 = OASMvcValidationProblemDetails.getExample();
        OASMvcValidationProblemDetails mvcValidationProblemDetails2 = new OASMvcValidationProblemDetails();

        System.assertEquals(mvcValidationProblemDetails1.hashCode(), mvcValidationProblemDetails1.hashCode());
        System.assertEquals(mvcValidationProblemDetails2.hashCode(), mvcValidationProblemDetails2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASMvcValidationProblemDetails mvcValidationProblemDetails1 = OASMvcValidationProblemDetails.getExample();
        OASMvcValidationProblemDetails mvcValidationProblemDetails2 = OASMvcValidationProblemDetails.getExample();
        OASMvcValidationProblemDetails mvcValidationProblemDetails3 = new OASMvcValidationProblemDetails();
        OASMvcValidationProblemDetails mvcValidationProblemDetails4 = new OASMvcValidationProblemDetails();

        System.assert(mvcValidationProblemDetails1.equals(mvcValidationProblemDetails2));
        System.assert(mvcValidationProblemDetails3.equals(mvcValidationProblemDetails4));
        System.assertEquals(mvcValidationProblemDetails1.hashCode(), mvcValidationProblemDetails2.hashCode());
        System.assertEquals(mvcValidationProblemDetails3.hashCode(), mvcValidationProblemDetails4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASMvcValidationProblemDetails mvcValidationProblemDetails = new OASMvcValidationProblemDetails();
        System.assertEquals(new Map<String, List<String>>(), mvcValidationProblemDetails.errors);
        System.assertEquals(null, mvcValidationProblemDetails.type);
        System.assertEquals(null, mvcValidationProblemDetails.title);
        System.assertEquals(null, mvcValidationProblemDetails.status);
        System.assertEquals(null, mvcValidationProblemDetails.detail);
        System.assertEquals(null, mvcValidationProblemDetails.instance);
    }
}
