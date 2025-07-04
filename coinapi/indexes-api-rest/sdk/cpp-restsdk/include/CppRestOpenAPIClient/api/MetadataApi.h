/**
 * CoinAPI Indexes REST API
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
 * MetadataApi.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_API_MetadataApi_H_
#define ORG_OPENAPITOOLS_CLIENT_API_MetadataApi_H_



#include "CppRestOpenAPIClient/ApiClient.h"

#include "CppRestOpenAPIClient/model/Metadata_Exchange.h"
#include <vector>
#include <cpprest/details/basic_types.h>
#include <boost/optional.hpp>

namespace org {
namespace openapitools {
namespace client {
namespace api {

using namespace org::openapitools::client::model;



class  MetadataApi 
{
public:

    explicit MetadataApi( std::shared_ptr<const ApiClient> apiClient );

    virtual ~MetadataApi();

    /// <summary>
    /// List all exchanges by exchange_id
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="exchangeId">The ID of the exchange.</param>
    pplx::task<std::vector<std::shared_ptr<Metadata_Exchange>>> apiMetadataExchangesExchangeIdGet(
        utility::string_t exchangeId
    ) const;
    /// <summary>
    /// List all exchanges
    /// </summary>
    /// <remarks>
    /// Get a detailed list of exchanges provided by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
    /// </remarks>
    /// <param name="filterExchangeId">Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. &#x60;BITSTAMP;GEMINI&#x60;) (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    pplx::task<std::vector<std::shared_ptr<Metadata_Exchange>>> apiMetadataExchangesGet(
        boost::optional<utility::string_t> filterExchangeId
    ) const;

protected:
    std::shared_ptr<const ApiClient> m_ApiClient;
};

}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_API_MetadataApi_H_ */

