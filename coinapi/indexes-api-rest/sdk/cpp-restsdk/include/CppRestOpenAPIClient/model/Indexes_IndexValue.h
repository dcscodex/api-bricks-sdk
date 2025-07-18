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
 * Indexes_IndexValue.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_Indexes_IndexValue_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_Indexes_IndexValue_H_


#include "CppRestOpenAPIClient/ModelBase.h"

#include "CppRestOpenAPIClient/model/Indexes_IndexValueComponent.h"
#include <cpprest/details/basic_types.h>
#include <vector>

namespace org {
namespace openapitools {
namespace client {
namespace model {

class Indexes_IndexValueComponent;


class  Indexes_IndexValue
    : public ModelBase
{
public:
    Indexes_IndexValue();
    virtual ~Indexes_IndexValue();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;


    /////////////////////////////////////////////
    /// Indexes_IndexValue members


    utility::datetime getTimestamp() const;
    bool timestampIsSet() const;
    void unsetTimestamp();
    void setTimestamp(const utility::datetime& value);

    double getValue() const;
    bool valueIsSet() const;
    void unsetValue();
    void setValue(double value);

    std::vector<std::shared_ptr<Indexes_IndexValueComponent>> getComposition() const;
    bool compositionIsSet() const;
    void unsetComposition();
    void setComposition(const std::vector<std::shared_ptr<Indexes_IndexValueComponent>>& value);


protected:
    utility::datetime m_Timestamp;
    bool m_TimestampIsSet;

    double m_Value;
    bool m_ValueIsSet;

    std::vector<std::shared_ptr<Indexes_IndexValueComponent>> m_Composition;
    bool m_CompositionIsSet;

};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_Indexes_IndexValue_H_ */
