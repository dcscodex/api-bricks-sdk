/**
 * FinFeedAPI SEC REST API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: v1
 * Contact: support@apibricks.io
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 7.13.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "CppRestOpenAPIClient/model/Mvc_ValidationProblemDetails.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {

Mvc_ValidationProblemDetails::Mvc_ValidationProblemDetails()
{
    m_Type = utility::conversions::to_string_t("");
    m_TypeIsSet = false;
    m_Title = utility::conversions::to_string_t("");
    m_TitleIsSet = false;
    m_Status = 0;
    m_StatusIsSet = false;
    m_Detail = utility::conversions::to_string_t("");
    m_DetailIsSet = false;
    m_Instance = utility::conversions::to_string_t("");
    m_InstanceIsSet = false;
    m_ErrorsIsSet = false;
}

Mvc_ValidationProblemDetails::~Mvc_ValidationProblemDetails()
{
}

void Mvc_ValidationProblemDetails::validate()
{
    // TODO: implement validation
}

web::json::value Mvc_ValidationProblemDetails::toJson() const
{
    web::json::value val = web::json::value::object();
    if(m_TypeIsSet)
    {   
        
        val[utility::conversions::to_string_t(U("type"))] = ModelBase::toJson(m_Type);
    }
    if(m_TitleIsSet)
    {   
        
        val[utility::conversions::to_string_t(U("title"))] = ModelBase::toJson(m_Title);
    }
    if(m_StatusIsSet)
    {   
        
        val[utility::conversions::to_string_t(U("status"))] = ModelBase::toJson(m_Status);
    }
    if(m_DetailIsSet)
    {   
        
        val[utility::conversions::to_string_t(U("detail"))] = ModelBase::toJson(m_Detail);
    }
    if(m_InstanceIsSet)
    {   
        
        val[utility::conversions::to_string_t(U("instance"))] = ModelBase::toJson(m_Instance);
    }
    if(m_ErrorsIsSet)
    {   
        
        val[utility::conversions::to_string_t(U("errors"))] = ModelBase::toJson(m_Errors);
    }

    return val;
}

bool Mvc_ValidationProblemDetails::fromJson(const web::json::value& val)
{
    bool ok = true;
    if(val.has_field(utility::conversions::to_string_t(U("type"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("type")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setType;
            ok &= ModelBase::fromJson(fieldValue, refVal_setType);
            setType(refVal_setType);
            
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("title"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("title")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setTitle;
            ok &= ModelBase::fromJson(fieldValue, refVal_setTitle);
            setTitle(refVal_setTitle);
            
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("status"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("status")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_setStatus;
            ok &= ModelBase::fromJson(fieldValue, refVal_setStatus);
            setStatus(refVal_setStatus);
            
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("detail"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("detail")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setDetail;
            ok &= ModelBase::fromJson(fieldValue, refVal_setDetail);
            setDetail(refVal_setDetail);
            
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("instance"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("instance")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setInstance;
            ok &= ModelBase::fromJson(fieldValue, refVal_setInstance);
            setInstance(refVal_setInstance);
            
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("errors"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("errors")));
        if(!fieldValue.is_null())
        {
            std::map<utility::string_t, std::vector<utility::string_t>> refVal_setErrors;
            ok &= ModelBase::fromJson(fieldValue, refVal_setErrors);
            setErrors(refVal_setErrors);
            
        }
    }
    return ok;
}

void Mvc_ValidationProblemDetails::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }
    if(m_TypeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("type")), m_Type));
    }
    if(m_TitleIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("title")), m_Title));
    }
    if(m_StatusIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("status")), m_Status));
    }
    if(m_DetailIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("detail")), m_Detail));
    }
    if(m_InstanceIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("instance")), m_Instance));
    }
    if(m_ErrorsIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("errors")), m_Errors));
    }
}

bool Mvc_ValidationProblemDetails::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }

    if(multipart->hasContent(utility::conversions::to_string_t(U("type"))))
    {
        utility::string_t refVal_setType;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("type"))), refVal_setType );
        setType(refVal_setType);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("title"))))
    {
        utility::string_t refVal_setTitle;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("title"))), refVal_setTitle );
        setTitle(refVal_setTitle);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("status"))))
    {
        int32_t refVal_setStatus;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("status"))), refVal_setStatus );
        setStatus(refVal_setStatus);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("detail"))))
    {
        utility::string_t refVal_setDetail;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("detail"))), refVal_setDetail );
        setDetail(refVal_setDetail);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("instance"))))
    {
        utility::string_t refVal_setInstance;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("instance"))), refVal_setInstance );
        setInstance(refVal_setInstance);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("errors"))))
    {
        std::map<utility::string_t, std::vector<utility::string_t>> refVal_setErrors;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("errors"))), refVal_setErrors );
        setErrors(refVal_setErrors);
    }
    return ok;
}


utility::string_t Mvc_ValidationProblemDetails::getType() const
{
    return m_Type;
}


void Mvc_ValidationProblemDetails::setType(const utility::string_t& value)
{
    m_Type = value;
    m_TypeIsSet = true;
}

bool Mvc_ValidationProblemDetails::typeIsSet() const
{
    return m_TypeIsSet;
}

void Mvc_ValidationProblemDetails::unsetType()
{
    m_TypeIsSet = false;
}
utility::string_t Mvc_ValidationProblemDetails::getTitle() const
{
    return m_Title;
}


void Mvc_ValidationProblemDetails::setTitle(const utility::string_t& value)
{
    m_Title = value;
    m_TitleIsSet = true;
}

bool Mvc_ValidationProblemDetails::titleIsSet() const
{
    return m_TitleIsSet;
}

void Mvc_ValidationProblemDetails::unsetTitle()
{
    m_TitleIsSet = false;
}
int32_t Mvc_ValidationProblemDetails::getStatus() const
{
    return m_Status;
}

void Mvc_ValidationProblemDetails::setStatus(int32_t value)
{
    m_Status = value;
    m_StatusIsSet = true;
}

bool Mvc_ValidationProblemDetails::statusIsSet() const
{
    return m_StatusIsSet;
}

void Mvc_ValidationProblemDetails::unsetStatus()
{
    m_StatusIsSet = false;
}
utility::string_t Mvc_ValidationProblemDetails::getDetail() const
{
    return m_Detail;
}


void Mvc_ValidationProblemDetails::setDetail(const utility::string_t& value)
{
    m_Detail = value;
    m_DetailIsSet = true;
}

bool Mvc_ValidationProblemDetails::detailIsSet() const
{
    return m_DetailIsSet;
}

void Mvc_ValidationProblemDetails::unsetDetail()
{
    m_DetailIsSet = false;
}
utility::string_t Mvc_ValidationProblemDetails::getInstance() const
{
    return m_Instance;
}


void Mvc_ValidationProblemDetails::setInstance(const utility::string_t& value)
{
    m_Instance = value;
    m_InstanceIsSet = true;
}

bool Mvc_ValidationProblemDetails::instanceIsSet() const
{
    return m_InstanceIsSet;
}

void Mvc_ValidationProblemDetails::unsetInstance()
{
    m_InstanceIsSet = false;
}
std::map<utility::string_t, std::vector<utility::string_t>> Mvc_ValidationProblemDetails::getErrors() const
{
    return m_Errors;
}


void Mvc_ValidationProblemDetails::setErrors(const std::map<utility::string_t, std::vector<utility::string_t>>& value)
{
    m_Errors = value;
    m_ErrorsIsSet = true;
}

bool Mvc_ValidationProblemDetails::errorsIsSet() const
{
    return m_ErrorsIsSet;
}

void Mvc_ValidationProblemDetails::unsetErrors()
{
    m_ErrorsIsSet = false;
}

}
}
}
}


