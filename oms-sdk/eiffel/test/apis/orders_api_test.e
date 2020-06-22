note
    description: "API tests for ORDERS_API"
    date: "$Date$"
    revision: "$Revision$"


class ORDERS_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines

    
    test_v1_orders_cancel_all_post
            -- Cancel all order
            -- 
            -- Cancel all existing order. 
        local
            l_response: MESSAGES_OK
            l_cancel_all_order: CANCEL_ALL_ORDER
        do
            -- TODO: Initialize required params.
            -- l_cancel_all_order
                      
            -- l_response := api.v1_orders_cancel_all_post(l_cancel_all_order)
            assert ("not_implemented", False)
        end
    
    test_v1_orders_cancel_post
            -- Cancel order
            -- 
            -- Cancel an existing order, can be used to cancel margin, exchange, and derivative orders. You can cancel the order by the internal order ID or exchange order ID. 
        local
            l_response: ORDER_LIVE
            l_cancel_order: CANCEL_ORDER
        do
            -- TODO: Initialize required params.
            -- l_cancel_order
                      
            -- l_response := api.v1_orders_cancel_post(l_cancel_order)
            assert ("not_implemented", False)
        end
    
    test_v1_orders_get
            -- Get orders
            -- 
            -- List your current open orders. 
        local
            l_response: LIST [ORDER]
            l_exchange_id: STRING_32
        do
            -- TODO: Initialize required params.
                      
            -- l_response := api.v1_orders_get(l_exchange_id)
            assert ("not_implemented", False)
        end
    
    test_v1_orders_post
            -- Create new order
            -- 
            -- You can place two types of orders: limit and market. Orders can only be placed if your account has sufficient funds. 
        local
            l_response: ORDER_LIVE
            l_new_order: NEW_ORDER
        do
            -- TODO: Initialize required params.
            -- l_new_order
                      
            -- l_response := api.v1_orders_post(l_new_order)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: ORDERS_API
            -- Create an object instance of `ORDERS_API'.
        once            
            create { ORDERS_API } Result
        end

end
