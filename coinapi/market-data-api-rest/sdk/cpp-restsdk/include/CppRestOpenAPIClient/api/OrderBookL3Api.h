/**
 * CoinAPI Market Data REST API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: v1
 * Contact: support@apibricks.io
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 7.13.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OrderBookL3Api.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_API_OrderBookL3Api_H_
#define ORG_OPENAPITOOLS_CLIENT_API_OrderBookL3Api_H_



#include "CppRestOpenAPIClient/ApiClient.h"

#include "CppRestOpenAPIClient/model/V1_OrderBookBase.h"
#include <vector>
#include <cpprest/details/basic_types.h>
#include <boost/optional.hpp>

namespace org {
namespace openapitools {
namespace client {
namespace api {

using namespace org::openapitools::client::model;



class  OrderBookL3Api 
{
public:

    explicit OrderBookL3Api( std::shared_ptr<const ApiClient> apiClient );

    virtual ~OrderBookL3Api();

    /// <summary>
    /// Current order books
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="filterSymbolId">Comma or semicolon delimited parts of symbol identifier used to filter the response. (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    /// <param name="limitLevels">The maximum number of levels to include in the response. (optional, default to 0)</param>
    pplx::task<std::vector<std::shared_ptr<V1_OrderBookBase>>> v1Orderbooks3CurrentGet(
        boost::optional<utility::string_t> filterSymbolId,
        boost::optional<int32_t> limitLevels
    ) const;
    /// <summary>
    /// Current order book by symbol_id
    /// </summary>
    /// <remarks>
    /// Retrieves the current order book for the specified symbol.
    /// </remarks>
    /// <param name="symbolId">The symbol ID (from the Metadata -&gt; Symbols)</param>
    /// <param name="limitLevels">The maximum number of levels to include in the response. (optional, default to 0)</param>
    pplx::task<std::shared_ptr<V1_OrderBookBase>> v1Orderbooks3SymbolIdCurrentGet(
        utility::string_t symbolId,
        boost::optional<int32_t> limitLevels
    ) const;

protected:
    std::shared_ptr<const ApiClient> m_ApiClient;
};

}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_API_OrderBookL3Api_H_ */

