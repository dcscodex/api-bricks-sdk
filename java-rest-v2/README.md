--------------------------------------------------
Refactoring steps /java-rest/ and /java-rest-v2/
--------------------------------------------------

1) changed all the files to be correctly formatted:
	--unix line ends ('\n')
	--tabs for indenting
	--in IntelliJ, executed Code --> Reformat Code to correct all sorts of style problems


2) the 2 other github issues are because of the wrong use of java.sql.Timestamp
	--the best solution is to replace every usage of Timestamp with java.time.Instant
	--as a consequence:
		--these 2 methods of java_rest_coin_api_test were deleted:
			precise_time_from_string
			precise_time_to_string
			
			--discussion:
				--could do this because coinapi intelligently chose to use timestamp strings in an ISO 8601 format that
					1) Java's Instant.parse method can directly parse with 100% accuracy
					2) Java's Instant.toString method directly returns
				--this timestamp format always uses GMT with no daylight savings time, which is also known as "Zulu time" (hence the 'Z' for the time zone)
					https://www.timeanddate.com/time/zone/timezone/zulu
					https://www.timeanddate.com/worldclock/timezone/zulu
		--eliminating the use of Timestamp also eliminated all but 1 of the compiler warnings
		--the code in java_rest_coin_api_test.java where the user specifes times to download for is now human readable

	
3) java_rest_coin_api.get_json:
	--eliminated the use of the custom exception inner class in favor of the Java builtin RuntimeException class
		-both in the throws clause and the method body
	--added code to first check if object has a value for "error" before call getString("error"); this eliminates an artificial JSONException from being thrown
	--improved the message that this RuntimeException is created with to report all details


4) java_rest_coin_api.exception:
	--deleted this inner class
	--removed every " throws exception" in java_rest_coin_api
	--removed every " throws java_rest_coin_api.exception" in java_rest_coin_api_test
	--removed the "catch (java_rest_coin_api.exception ex)" in java_rest_coin_api_test.main


5) java_rest_coin_api:
	--found all occurrences of this bad idiom:
		try {
			...
		} catch (IOException ioe) {
		}
		return null;
	and ripped out the try/catch and added a throws clause to the method declaration if neccessary, typically
		throws IOException


6) java_rest_coin_api_test:
	--the removal of java_rest_coin_api's try/catch in favor of throwing Exceptions meant that many methods in this class needed to be updated to
		a) no longer null check results
		b) have their own
			throws IOException
	--removed main's try/catch in favor of
		throws IOException


7) java_rest_coin_api.SYMBOL_TYPE:
	--deleted the INVALID element
		--should always throw an Exception instead of using a bogus value
		--also, I do not see it listed among the symbol_type values here: https://docs.coinapi.io/#list-all-symbols
	--deleted the symbol_type_from_string method and used the builtin Java enum valueOf method instead 


8) java_rest_coin_api.OPTION_EXERCISE_STYLE:
	--deleted the INVALID element
		--should always throw an Exception instead of using a bogus value
		--also, I do not see it listed among the option_exercise_style values here: https://docs.coinapi.io/#list-all-symbols
	--consequences:
		1) in symbol(String symbol_id, String exchange_id, SYMBOL_TYPE symbol_type, String asset_id_base, String asset_id_quote)
		had to change
			this.option_exercise_style = OPTION_EXERCISE_STYLE.INVALID;
		to
			this.option_exercise_style = null;
		2) in list_all_symbols had to change the "new symbol..." passing of OPTION_EXERCISE_STYLE.INVALID to null
	--deleted the option_exercise_style_from_string method and used the builtin Java enum valueOf method instead 


9) java_rest_coin_api.PERIOD_IDENTIFIER:
	--deleted the INVALID element
		--should always throw an Exception instead of using a bogus value
		--also, I do not see it listed among the Period identifiers values here: https://docs.coinapi.io/#list-all-periods
	--added a coinapiValue method that turns the enum's identifier into the exact period_id that coinapi uses
	--use that coinapiValue method in a new static parse method that replaces the old period_identifier_from_string method
	--use that coinapiValue method in a new instance toString method that replaces the old period_id_to_string method


10) java_rest_coin_api.TRADE_SIDE:
	--renamed TRADE_SIDE --> TAKER_SIDE
	--deleted the INVALID element
		--should always throw an Exception instead of using a bogus value
		--also, I do not see it listed among the taker_side values here: https://docs.coinapi.io/#json-structure
	--deleted the taker_size_from_string method and used the builtin Java enum valueOf method instead 


11) java_rest_coin_api.key
	--moved its declaration to the top of the file into a new dedicated instance fields section
	--moved its accessor likewise 


12) java_rest_coin_api_test:
	--rearranged the methods into top down logical order, and added section labels
	--scoured the file and made some small changes


13) java_rest_coin_api:
	--moved all the inner classes/enums to top level classes/enums


14) renamed
	java_rest_coin_api --> rest_methods
	java_rest_coin_api_test --> rest_methods_test


15) in rest_methods (the former java_rest_coin_api):
	--pulled the OkHttpClient client local var up into a field
	--added a close method
	--reason: top performance (see code comments)


16) in rest_methods_test (the former java_rest_coin_api_test):
	--main now creates rest_methods instance and passes it as an arg to all the test methods
	--those test methods now longer create their own rest_methods instance


17) renamed all the classes/enums to follow Java's naming convention
	--mainly I just made the first letter be upper case
	--I left in the underscores, since those are in the official coinapi names

