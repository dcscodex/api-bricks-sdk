package org.openapitools.client.api {

import org.openapitools.common.ApiInvoker;
import org.openapitools.exception.ApiErrorCodes;
import org.openapitools.exception.ApiError;
import org.openapitools.common.ApiUserCredentials;
import org.openapitools.event.Response;
import org.openapitools.common.OpenApi;
import org.openapitools.client.model.CancelAllOrder;
import org.openapitools.client.model.CancelOrder;
import org.openapitools.client.model.CreateOrder400;
import org.openapitools.client.model.Messages;
import org.openapitools.client.model.MessagesOk;
import org.openapitools.client.model.NewOrder;
import org.openapitools.client.model.Order;
import org.openapitools.client.model.OrderLive;

import mx.rpc.AsyncToken;
import mx.utils.UIDUtil;
import flash.utils.Dictionary;
import flash.events.EventDispatcher;

public class OrdersApi extends OpenApi {
    /**
    * Constructor for the OrdersApi api client
    * @param apiCredentials Wrapper object for tokens and hostName required towards authentication
    * @param eventDispatcher Optional event dispatcher that when provided is used by the SDK to dispatch any Response
    */
    public function OrdersApi(apiCredentials: ApiUserCredentials, eventDispatcher: EventDispatcher = null) {
        super(apiCredentials, eventDispatcher);
    }

        public static const event_v1_orders_cancel_all_post: String = "v1_orders_cancel_all_post";
        public static const event_v1_orders_cancel_post: String = "v1_orders_cancel_post";
        public static const event_v1_orders_get: String = "v1_orders_get";
        public static const event_v1_orders_post: String = "v1_orders_post";


    /*
     * Returns MessagesOk 
     */
    public function v1_orders_cancel_all_post (cancelAllOrder: CancelAllOrder): String {
        // create path and map variables
        var path: String = "/v1/orders/cancel/all".replace(/{format}/g,"xml");

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "POST", queryParams, cancelAllOrder, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "v1_orders_cancel_all_post";

        token.returnType = MessagesOk;
        return requestId;

    }

    /*
     * Returns OrderLive 
     */
    public function v1_orders_cancel_post (cancelOrder: CancelOrder): String {
        // create path and map variables
        var path: String = "/v1/orders/cancel".replace(/{format}/g,"xml");

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "POST", queryParams, cancelOrder, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "v1_orders_cancel_post";

        token.returnType = OrderLive;
        return requestId;

    }

    /*
     * Returns Array 
     */
    public function v1_orders_get (exchangeId: String): String {
        // create path and map variables
        var path: String = "/v1/orders".replace(/{format}/g,"xml");

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }

        if("null" != String(exchangeId))
            queryParams["exchange_id"] = toPathValue(exchangeId);

        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "v1_orders_get";

        token.returnType = Array;
        return requestId;

    }

    /*
     * Returns OrderLive 
     */
    public function v1_orders_post (newOrder: NewOrder): String {
        // create path and map variables
        var path: String = "/v1/orders".replace(/{format}/g,"xml");

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }

        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "POST", queryParams, newOrder, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "v1_orders_post";

        token.returnType = OrderLive;
        return requestId;

    }
}
}
