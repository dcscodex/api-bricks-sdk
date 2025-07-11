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
 * Indexes_IndexMultiAssetWeight.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_Indexes_IndexMultiAssetWeight_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_Indexes_IndexMultiAssetWeight_H_


#include "CppRestOpenAPIClient/ModelBase.h"

#include <cpprest/details/basic_types.h>

namespace org {
namespace openapitools {
namespace client {
namespace model {



class  Indexes_IndexMultiAssetWeight
    : public ModelBase
{
public:
    Indexes_IndexMultiAssetWeight();
    virtual ~Indexes_IndexMultiAssetWeight();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;


    /////////////////////////////////////////////
    /// Indexes_IndexMultiAssetWeight members


    utility::string_t getIndexId() const;
    bool indexIdIsSet() const;
    void unsetIndexId();
    void setIndexId(const utility::string_t& value);

    utility::string_t getAssetId() const;
    bool assetIdIsSet() const;
    void unsetAssetId();
    void setAssetId(const utility::string_t& value);

    double getWeight() const;
    bool weightIsSet() const;
    void unsetWeight();
    void setWeight(double value);


protected:
    utility::string_t m_IndexId;
    bool m_IndexIdIsSet;

    utility::string_t m_AssetId;
    bool m_AssetIdIsSet;

    double m_Weight;
    bool m_WeightIsSet;

};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_Indexes_IndexMultiAssetWeight_H_ */
