/**
 * CoinAPI Market Data REST API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: v1
 * Contact: support@apibricks.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.api;

import org.openapitools.client.ApiInvoker;
import org.openapitools.client.ApiException;
import org.openapitools.client.Pair;

import org.openapitools.client.model.*;

import java.util.*;

import com.android.volley.Response;
import com.android.volley.VolleyError;

import java.util.*;
import org.openapitools.client.model.V1Quote;
import org.openapitools.client.model.V1QuoteTrade;

import org.apache.http.HttpEntity;
import org.apache.http.entity.mime.MultipartEntityBuilder;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;

public class QuotesApi {
  String basePath = "https://rest.coinapi.io";
  ApiInvoker apiInvoker = ApiInvoker.getInstance();

  public void addHeader(String key, String value) {
    getInvoker().addDefaultHeader(key, value);
  }

  public ApiInvoker getInvoker() {
    return apiInvoker;
  }

  public void setBasePath(String basePath) {
    this.basePath = basePath;
  }

  public String getBasePath() {
    return basePath;
  }

  /**
  * Current data
  * Get current quotes for all symbols or for a specific symbol.              :::info When requesting current data for a specific symbol, output is not encapsulated into JSON array as only one item is returned. :::
   * @param filterSymbolId Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)
   * @return List<V1QuoteTrade>
  */
  public List<V1QuoteTrade> v1QuotesCurrentGet (String filterSymbolId) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;

    // create path and map variables
    String path = "/v1/quotes/current";

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    queryParams.addAll(ApiInvoker.parameterToPairs("", "filter_symbol_id", filterSymbolId));
    String[] contentTypes = {
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] { "APIKey", "JWT" };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return (List<V1QuoteTrade>) ApiInvoker.deserialize(localVarResponse, "array", V1QuoteTrade.class);
      } else {
         return null;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * Current data
   * Get current quotes for all symbols or for a specific symbol.              :::info When requesting current data for a specific symbol, output is not encapsulated into JSON array as only one item is returned. :::
   * @param filterSymbolId Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)
  */
  public void v1QuotesCurrentGet (String filterSymbolId, final Response.Listener<List<V1QuoteTrade>> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;


    // create path and map variables
    String path = "/v1/quotes/current".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();

    queryParams.addAll(ApiInvoker.parameterToPairs("", "filter_symbol_id", filterSymbolId));


    String[] contentTypes = {
      
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] { "APIKey", "JWT" };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((List<V1QuoteTrade>) ApiInvoker.deserialize(localVarResponse,  "array", V1QuoteTrade.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * Latest data
  * Get latest updates of the quotes up to 1 minute ago. Latest data is always returned in time descending order.
   * @param filterSymbolId Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)
   * @param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
   * @return List<V1Quote>
  */
  public List<V1Quote> v1QuotesLatestGet (String filterSymbolId, Integer limit) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;

    // create path and map variables
    String path = "/v1/quotes/latest";

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    queryParams.addAll(ApiInvoker.parameterToPairs("", "filter_symbol_id", filterSymbolId));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "limit", limit));
    String[] contentTypes = {
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] { "APIKey", "JWT" };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return (List<V1Quote>) ApiInvoker.deserialize(localVarResponse, "array", V1Quote.class);
      } else {
         return null;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * Latest data
   * Get latest updates of the quotes up to 1 minute ago. Latest data is always returned in time descending order.
   * @param filterSymbolId Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)   * @param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  */
  public void v1QuotesLatestGet (String filterSymbolId, Integer limit, final Response.Listener<List<V1Quote>> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;


    // create path and map variables
    String path = "/v1/quotes/latest".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();

    queryParams.addAll(ApiInvoker.parameterToPairs("", "filter_symbol_id", filterSymbolId));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "limit", limit));


    String[] contentTypes = {
      
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] { "APIKey", "JWT" };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((List<V1Quote>) ApiInvoker.deserialize(localVarResponse,  "array", V1Quote.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * Current quotes for a specific symbol
  * 
   * @param symbolId The symbol identifier (from the Metadata -&gt; Symbols)
   * @return V1QuoteTrade
  */
  public V1QuoteTrade v1QuotesSymbolIdCurrentGet (String symbolId) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;
    // verify the required parameter 'symbolId' is set
    if (symbolId == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'symbolId' when calling v1QuotesSymbolIdCurrentGet",
        new ApiException(400, "Missing the required parameter 'symbolId' when calling v1QuotesSymbolIdCurrentGet"));
    }

    // create path and map variables
    String path = "/v1/quotes/{symbol_id}/current".replaceAll("\\{" + "symbol_id" + "\\}", apiInvoker.escapeString(symbolId.toString()));

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    String[] contentTypes = {
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] { "APIKey", "JWT" };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return (V1QuoteTrade) ApiInvoker.deserialize(localVarResponse, "", V1QuoteTrade.class);
      } else {
         return null;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * Current quotes for a specific symbol
   * 
   * @param symbolId The symbol identifier (from the Metadata -&gt; Symbols)
  */
  public void v1QuotesSymbolIdCurrentGet (String symbolId, final Response.Listener<V1QuoteTrade> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

    // verify the required parameter 'symbolId' is set
    if (symbolId == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'symbolId' when calling v1QuotesSymbolIdCurrentGet",
        new ApiException(400, "Missing the required parameter 'symbolId' when calling v1QuotesSymbolIdCurrentGet"));
    }

    // create path and map variables
    String path = "/v1/quotes/{symbol_id}/current".replaceAll("\\{format\\}","json").replaceAll("\\{" + "symbol_id" + "\\}", apiInvoker.escapeString(symbolId.toString()));

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();



    String[] contentTypes = {
      
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] { "APIKey", "JWT" };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((V1QuoteTrade) ApiInvoker.deserialize(localVarResponse,  "", V1QuoteTrade.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * Historical data
  * Get historical quote updates within requested time range, returned in time ascending order.  :::warning The &#39;time_start&#39; and &#39;time_end&#39; parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the &#39;date&#39; parameter instead for querying data for a specific day without filter. :::
   * @param symbolId Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols)
   * @param date Date in ISO 8601, returned data is for the whole given day (preferred method, required if &#39;time_start&#39; is not provided)
   * @param timeStart Starting time in ISO 8601
   * @param timeEnd Timeseries ending time in ISO 8601
   * @param limit Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
   * @return List<V1Quote>
  */
  public List<V1Quote> v1QuotesSymbolIdHistoryGet (String symbolId, String date, String timeStart, String timeEnd, Integer limit) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;
    // verify the required parameter 'symbolId' is set
    if (symbolId == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'symbolId' when calling v1QuotesSymbolIdHistoryGet",
        new ApiException(400, "Missing the required parameter 'symbolId' when calling v1QuotesSymbolIdHistoryGet"));
    }

    // create path and map variables
    String path = "/v1/quotes/{symbol_id}/history".replaceAll("\\{" + "symbol_id" + "\\}", apiInvoker.escapeString(symbolId.toString()));

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    queryParams.addAll(ApiInvoker.parameterToPairs("", "date", date));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "time_start", timeStart));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "time_end", timeEnd));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "limit", limit));
    String[] contentTypes = {
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] { "APIKey", "JWT" };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return (List<V1Quote>) ApiInvoker.deserialize(localVarResponse, "array", V1Quote.class);
      } else {
         return null;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * Historical data
   * Get historical quote updates within requested time range, returned in time ascending order.  :::warning The &#39;time_start&#39; and &#39;time_end&#39; parameters must be from the same day as this endpoint provides intraday data only for specific day. Please use the &#39;date&#39; parameter instead for querying data for a specific day without filter. :::
   * @param symbolId Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols)   * @param date Date in ISO 8601, returned data is for the whole given day (preferred method, required if &#39;time_start&#39; is not provided)   * @param timeStart Starting time in ISO 8601   * @param timeEnd Timeseries ending time in ISO 8601   * @param limit Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  */
  public void v1QuotesSymbolIdHistoryGet (String symbolId, String date, String timeStart, String timeEnd, Integer limit, final Response.Listener<List<V1Quote>> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

    // verify the required parameter 'symbolId' is set
    if (symbolId == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'symbolId' when calling v1QuotesSymbolIdHistoryGet",
        new ApiException(400, "Missing the required parameter 'symbolId' when calling v1QuotesSymbolIdHistoryGet"));
    }

    // create path and map variables
    String path = "/v1/quotes/{symbol_id}/history".replaceAll("\\{format\\}","json").replaceAll("\\{" + "symbol_id" + "\\}", apiInvoker.escapeString(symbolId.toString()));

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();

    queryParams.addAll(ApiInvoker.parameterToPairs("", "date", date));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "time_start", timeStart));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "time_end", timeEnd));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "limit", limit));


    String[] contentTypes = {
      
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] { "APIKey", "JWT" };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((List<V1Quote>) ApiInvoker.deserialize(localVarResponse,  "array", V1Quote.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * Latest quote updates for a specific symbol
  * 
   * @param symbolId Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols)
   * @param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
   * @return List<V1Quote>
  */
  public List<V1Quote> v1QuotesSymbolIdLatestGet (String symbolId, Integer limit) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;
    // verify the required parameter 'symbolId' is set
    if (symbolId == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'symbolId' when calling v1QuotesSymbolIdLatestGet",
        new ApiException(400, "Missing the required parameter 'symbolId' when calling v1QuotesSymbolIdLatestGet"));
    }

    // create path and map variables
    String path = "/v1/quotes/{symbol_id}/latest".replaceAll("\\{" + "symbol_id" + "\\}", apiInvoker.escapeString(symbolId.toString()));

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    queryParams.addAll(ApiInvoker.parameterToPairs("", "limit", limit));
    String[] contentTypes = {
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] { "APIKey", "JWT" };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return (List<V1Quote>) ApiInvoker.deserialize(localVarResponse, "array", V1Quote.class);
      } else {
         return null;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * Latest quote updates for a specific symbol
   * 
   * @param symbolId Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols)   * @param limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
  */
  public void v1QuotesSymbolIdLatestGet (String symbolId, Integer limit, final Response.Listener<List<V1Quote>> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

    // verify the required parameter 'symbolId' is set
    if (symbolId == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'symbolId' when calling v1QuotesSymbolIdLatestGet",
        new ApiException(400, "Missing the required parameter 'symbolId' when calling v1QuotesSymbolIdLatestGet"));
    }

    // create path and map variables
    String path = "/v1/quotes/{symbol_id}/latest".replaceAll("\\{format\\}","json").replaceAll("\\{" + "symbol_id" + "\\}", apiInvoker.escapeString(symbolId.toString()));

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();

    queryParams.addAll(ApiInvoker.parameterToPairs("", "limit", limit));


    String[] contentTypes = {
      
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] { "APIKey", "JWT" };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((List<V1Quote>) ApiInvoker.deserialize(localVarResponse,  "array", V1Quote.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
}
