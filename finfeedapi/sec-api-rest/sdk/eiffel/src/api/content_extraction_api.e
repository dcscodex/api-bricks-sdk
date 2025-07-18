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
	CONTENTEXTRACTION_API

inherit

    API_I


feature -- API Access


	v1_extractor_get (accession_number: STRING_32; type: detachable DTO_EXTRACTOR_TYPE): detachable STRING_TABLE [ANY]
			-- Extract and classify SEC filing content
			-- Retrieves filing content from the EDGAR database and intelligently classifies it according to form type and item categories.  ### Supported Form Types  Form Type | Description ----------|------------ 8-K      | Current report filing 10-K     | Annual report filing 10-Q     | Quarterly report filing  ### Content Classification - 8-K forms: Content classified by item numbers (e.g., 1.01, 2.01) - 10-K/10-Q forms: Items categorized by their respective part and item structure  :::note Both HTML and plain text documents are supported for content extraction. :::
			-- 
			-- argument: accession_number The SEC filing accession number used to retrieve the filing from EDGAR database. (required)
			-- 
			-- argument: type Result type (text or html, default: text) (optional, default to null)
			-- 
			-- 
			-- Result STRING_TABLE [ANY]
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/v1/extractor"
			l_request.fill_query_params(api_client.parameter_to_tuple("", "accession_number", accession_number));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "type", type));


			if attached {STRING} api_client.select_header_accept ({ARRAY [STRING]}<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type ({ARRAY [STRING]}<<>>),"Content-Type")
			l_request.set_auth_names ({ARRAY [STRING]}<<"APIKey", "JWT">>)
			l_response := api_client.call_api (l_path, "Get", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { STRING_TABLE [ANY] } l_response.data ({ STRING_TABLE [ANY] }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end

	v1_extractor_item_get (accession_number: STRING_32; item_number: STRING_32; type: detachable DTO_EXTRACTOR_TYPE): detachable STRING_32
			-- Extract specific item content from SEC filing
			-- Retrieves filing content from the EDGAR database and returns only the text content of the specified item number.  ### Item Number Format  Form Type | Item Format Examples -----------|------------------- 8-K       | 1.01, 2.01, 7.01 10-K      | 1, 2, 3 10-K/10-Q | PartI 1, PartII 2  :::tip For best results, ensure the item number matches exactly with the filing&#39;s structure. :::
			-- 
			-- argument: accession_number The SEC filing accession number used to retrieve the filing from EDGAR database. (required)
			-- 
			-- argument: item_number The specific item number to extract (e.g., \&quot;1.01\&quot;, \&quot;2.01\&quot;, \&quot;7.01\&quot;). (required)
			-- 
			-- argument: type Result type (text or html, default: text) (optional, default to null)
			-- 
			-- 
			-- Result STRING_32
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/v1/extractor/item"
			l_request.fill_query_params(api_client.parameter_to_tuple("", "accession_number", accession_number));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "item_number", item_number));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "type", type));


			if attached {STRING} api_client.select_header_accept ({ARRAY [STRING]}<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type ({ARRAY [STRING]}<<>>),"Content-Type")
			l_request.set_auth_names ({ARRAY [STRING]}<<"APIKey", "JWT">>)
			l_response := api_client.call_api (l_path, "Get", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { STRING_32 } l_response.data ({ STRING_32 }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end


end
