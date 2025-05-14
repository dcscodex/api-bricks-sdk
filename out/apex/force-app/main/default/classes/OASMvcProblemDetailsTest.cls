@isTest
private class OASMvcProblemDetailsTest {
    @isTest
    private static void equalsSameInstance() {
        OASMvcProblemDetails mvcProblemDetails1 = OASMvcProblemDetails.getExample();
        OASMvcProblemDetails mvcProblemDetails2 = mvcProblemDetails1;
        OASMvcProblemDetails mvcProblemDetails3 = new OASMvcProblemDetails();
        OASMvcProblemDetails mvcProblemDetails4 = mvcProblemDetails3;

        System.assert(mvcProblemDetails1.equals(mvcProblemDetails2));
        System.assert(mvcProblemDetails2.equals(mvcProblemDetails1));
        System.assert(mvcProblemDetails1.equals(mvcProblemDetails1));
        System.assert(mvcProblemDetails3.equals(mvcProblemDetails4));
        System.assert(mvcProblemDetails4.equals(mvcProblemDetails3));
        System.assert(mvcProblemDetails3.equals(mvcProblemDetails3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASMvcProblemDetails mvcProblemDetails1 = OASMvcProblemDetails.getExample();
        OASMvcProblemDetails mvcProblemDetails2 = OASMvcProblemDetails.getExample();
        OASMvcProblemDetails mvcProblemDetails3 = new OASMvcProblemDetails();
        OASMvcProblemDetails mvcProblemDetails4 = new OASMvcProblemDetails();

        System.assert(mvcProblemDetails1.equals(mvcProblemDetails2));
        System.assert(mvcProblemDetails2.equals(mvcProblemDetails1));
        System.assert(mvcProblemDetails3.equals(mvcProblemDetails4));
        System.assert(mvcProblemDetails4.equals(mvcProblemDetails3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASMvcProblemDetails mvcProblemDetails1 = OASMvcProblemDetails.getExample();
        OASMvcProblemDetails mvcProblemDetails2 = new OASMvcProblemDetails();

        System.assertEquals(false, mvcProblemDetails1.equals('foo'));
        System.assertEquals(false, mvcProblemDetails2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASMvcProblemDetails mvcProblemDetails1 = OASMvcProblemDetails.getExample();
        OASMvcProblemDetails mvcProblemDetails2 = new OASMvcProblemDetails();
        OASMvcProblemDetails mvcProblemDetails3;

        System.assertEquals(false, mvcProblemDetails1.equals(mvcProblemDetails3));
        System.assertEquals(false, mvcProblemDetails2.equals(mvcProblemDetails3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASMvcProblemDetails mvcProblemDetails1 = OASMvcProblemDetails.getExample();
        OASMvcProblemDetails mvcProblemDetails2 = new OASMvcProblemDetails();

        System.assertEquals(mvcProblemDetails1.hashCode(), mvcProblemDetails1.hashCode());
        System.assertEquals(mvcProblemDetails2.hashCode(), mvcProblemDetails2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASMvcProblemDetails mvcProblemDetails1 = OASMvcProblemDetails.getExample();
        OASMvcProblemDetails mvcProblemDetails2 = OASMvcProblemDetails.getExample();
        OASMvcProblemDetails mvcProblemDetails3 = new OASMvcProblemDetails();
        OASMvcProblemDetails mvcProblemDetails4 = new OASMvcProblemDetails();

        System.assert(mvcProblemDetails1.equals(mvcProblemDetails2));
        System.assert(mvcProblemDetails3.equals(mvcProblemDetails4));
        System.assertEquals(mvcProblemDetails1.hashCode(), mvcProblemDetails2.hashCode());
        System.assertEquals(mvcProblemDetails3.hashCode(), mvcProblemDetails4.hashCode());
    }
}
