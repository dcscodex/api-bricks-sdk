-module(openapi_fin_feed_api_exchange_model).

-export([encode/1]).

-export_type([openapi_fin_feed_api_exchange_model/0]).

-type openapi_fin_feed_api_exchange_model() ::
    #{ 'exchange_id' => binary(),
       'last_datapoint_date' => binary(),
       'mic' => binary(),
       'operating_mic' => binary(),
       'oprt_sgmt' => binary(),
       'market_name_institution_description' => binary(),
       'legal_entity_name' => binary(),
       'lei' => binary(),
       'market_category_code' => binary(),
       'acronym' => binary(),
       'iso_country_code' => binary(),
       'city' => binary(),
       'website' => binary(),
       'status' => binary(),
       'creation_date' => openapi_date_time:openapi_date_time(),
       'last_update_date' => openapi_date_time:openapi_date_time(),
       'last_validation_date' => openapi_date_time:openapi_date_time(),
       'expiry_date' => openapi_date_time:openapi_date_time(),
       'comments' => binary()
     }.

encode(#{ 'exchange_id' := ExchangeId,
          'last_datapoint_date' := LastDatapointDate,
          'mic' := Mic,
          'operating_mic' := OperatingMic,
          'oprt_sgmt' := OprtSgmt,
          'market_name_institution_description' := MarketNameInstitutionDescription,
          'legal_entity_name' := LegalEntityName,
          'lei' := Lei,
          'market_category_code' := MarketCategoryCode,
          'acronym' := Acronym,
          'iso_country_code' := IsoCountryCode,
          'city' := City,
          'website' := Website,
          'status' := Status,
          'creation_date' := CreationDate,
          'last_update_date' := LastUpdateDate,
          'last_validation_date' := LastValidationDate,
          'expiry_date' := ExpiryDate,
          'comments' := Comments
        }) ->
    #{ 'exchange_id' => ExchangeId,
       'last_datapoint_date' => LastDatapointDate,
       'mic' => Mic,
       'operating_mic' => OperatingMic,
       'oprt_sgmt' => OprtSgmt,
       'market_name_institution_description' => MarketNameInstitutionDescription,
       'legal_entity_name' => LegalEntityName,
       'lei' => Lei,
       'market_category_code' => MarketCategoryCode,
       'acronym' => Acronym,
       'iso_country_code' => IsoCountryCode,
       'city' => City,
       'website' => Website,
       'status' => Status,
       'creation_date' => CreationDate,
       'last_update_date' => LastUpdateDate,
       'last_validation_date' => LastValidationDate,
       'expiry_date' => ExpiryDate,
       'comments' => Comments
     }.
