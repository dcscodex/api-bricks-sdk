note
    description: "API tests for CERTIFICATE_API"
    date: "$Date$"
    revision: "$Revision$"


class CERTIFICATE_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_certificate
            -- Get authentication certificate
            --
            -- Providing PEM file with the Private Key, Public Key and the Certificate to authenticate to the EMS API.
        local
            l_response: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.certificate
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: CERTIFICATE_API
            -- Create an object instance of `CERTIFICATE_API'.
        once
            create { CERTIFICATE_API } Result
        end

end
