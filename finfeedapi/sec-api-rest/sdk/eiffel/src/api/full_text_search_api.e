note
 description:"[
		FinFeedAPI SEC REST API
 		No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
  		The version of the OpenAPI document: v1
 	    Contact: support@apibricks.io

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"

class
	FULLTEXTSEARCH_API

inherit

    API_I


feature -- API Access


	v1_full_text_get (form_type: STRING_32; filling_date_start: STRING_32; filling_date_end: STRING_32; text_contains: STRING_32; text_not_contain: STRING_32; page_size: INTEGER_32; page_number: INTEGER_32; sort_by: STRING_32; sort_order: STRING_32): detachable LIST [DTO_SEC_FILING_RESULT_DTO]
			-- Full-text search of SEC filing documents
			-- Search across SEC filing documents with advanced filtering and sorting capabilities.  ### Available Sort Fields  Field Name | Description -----------|------------- AccessionNumber | SEC filing accession number FormType | Type of the filing document FilingDate | Date when filing was submitted CompanyName | Name of the company CIK | Central Index Key DocumentFilename | Name of the filing document DocumentDescription | Description of the document  ### Search Options  Option | Description --------|------------- text_contains | Keywords that must appear in the document text_not_contain | Keywords that must not appear in the document  ### Date Format All dates must be provided in YYYY-MM-DD format  :::tip Use text_contains and text_not_contain with multiple keywords separated by commas for more precise searches :::  :::note The search is case-insensitive and supports partial word matches :::
			-- 
			-- argument: form_type Filter by form type (e.g., \&quot;10-K\&quot;, \&quot;8-K\&quot;). Multiple values can be comma-separated (optional, default to null)
			-- 
			-- argument: filling_date_start Filter by filling date start (inclusive), format YYYY-MM-DD (optional, default to null)
			-- 
			-- argument: filling_date_end Filter by filling date end (inclusive), format YYYY-MM-DD (optional, default to null)
			-- 
			-- argument: text_contains Keywords that the text must contain. Multiple values can be comma-separated (optional, default to null)
			-- 
			-- argument: text_not_contain Keywords that the text must not contain. Multiple values can be comma-separated (optional, default to null)
			-- 
			-- argument: page_size Number of results per page (default: 100) (optional, default to null)
			-- 
			-- argument: page_number Page number to retrieve (default: 1) (optional, default to null)
			-- 
			-- argument: sort_by Field to sort by (default: AccessionNumber) (optional, default to AccessionNumber)
			-- 
			-- argument: sort_order Sort order (asc or desc). Defaults to asc (optional, default to asc)
			-- 
			-- 
			-- Result LIST [DTO_SEC_FILING_RESULT_DTO]
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/v1/full-text"
			l_request.fill_query_params(api_client.parameter_to_tuple("", "form_type", form_type));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "filling_date_start", filling_date_start));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "filling_date_end", filling_date_end));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "text_contains", text_contains));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "text_not_contain", text_not_contain));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "page_size", page_size));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "page_number", page_number));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "sort_by", sort_by));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "sort_order", sort_order));


			if attached {STRING} api_client.select_header_accept ({ARRAY [STRING]}<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type ({ARRAY [STRING]}<<>>),"Content-Type")
			l_request.set_auth_names ({ARRAY [STRING]}<<"APIKey", "JWT">>)
			l_response := api_client.call_api (l_path, "Get", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { LIST [DTO_SEC_FILING_RESULT_DTO] } l_response.data ({ LIST [DTO_SEC_FILING_RESULT_DTO] }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end


end
