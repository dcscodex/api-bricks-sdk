/**
 * FinFeedAPI Stock REST API
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

#include "CppRestOpenAPIClient/model/FinFeedAPI_ExchangeModel.h"
#include "CppRestOpenAPIClient/model/FinFeedAPI_SymbolModel.h"
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
    /// List of exchanges
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    pplx::task<std::vector<std::shared_ptr<FinFeedAPI_ExchangeModel>>> v1ExchangesGet(
    ) const;
    /// <summary>
    /// List of symbols for the exchange
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="exchangeId"></param>
    pplx::task<std::vector<std::shared_ptr<FinFeedAPI_SymbolModel>>> v1SymbolsExchangeIdGet(
        utility::string_t exchangeId
    ) const;

protected:
    std::shared_ptr<const ApiClient> m_ApiClient;
};

}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_API_MetadataApi_H_ */

