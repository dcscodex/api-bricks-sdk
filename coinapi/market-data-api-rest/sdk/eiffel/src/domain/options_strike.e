note
 description:"[
		CoinAPI Market Data REST API
 		No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
  		The version of the OpenAPI document: v1
 	    Contact: support@apibricks.io

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"
class OPTIONS_STRIKE




feature --Access

    strike_price: REAL_64
      -- The strike price.
    call: detachable V1_QUOTE_TRADE
      
    put: detachable V1_QUOTE_TRADE
      

feature -- Change Element

    set_strike_price (a_name: like strike_price)
        -- Set 'strike_price' with 'a_name'.
      do
        strike_price := a_name
      ensure
        strike_price_set: strike_price = a_name
      end

    set_call (a_name: like call)
        -- Set 'call' with 'a_name'.
      do
        call := a_name
      ensure
        call_set: call = a_name
      end

    set_put (a_name: like put)
        -- Set 'put' with 'a_name'.
      do
        put := a_name
      ensure
        put_set: put = a_name
      end


 feature -- Status Report

    output: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass OPTIONS_STRIKE%N")
        if attached strike_price as l_strike_price then
          Result.append ("%Nstrike_price:")
          Result.append (l_strike_price.out)
          Result.append ("%N")
        end
        if attached call as l_call then
          Result.append ("%Ncall:")
          Result.append (l_call.out)
          Result.append ("%N")
        end
        if attached put as l_put then
          Result.append ("%Nput:")
          Result.append (l_put.out)
          Result.append ("%N")
        end
      end
end

