#ifndef account_endpoint_TEST
#define account_endpoint_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define account_endpoint_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/account_endpoint.h"
account_endpoint_t* instantiate_account_endpoint(int include_optional);



account_endpoint_t* instantiate_account_endpoint(int include_optional) {
  account_endpoint_t* account_endpoint = NULL;
  if (include_optional) {
    account_endpoint = account_endpoint_create(
      "KRAKEN",
      "aws-us-east-2",
      "https",
      "1314.51253.51.ec2.eu-west-1.amazonaws.com",
      "https://1314.51253.51.ec2.eu-west-1.amazonaws.com/"
    );
  } else {
    account_endpoint = account_endpoint_create(
      "KRAKEN",
      "aws-us-east-2",
      "https",
      "1314.51253.51.ec2.eu-west-1.amazonaws.com",
      "https://1314.51253.51.ec2.eu-west-1.amazonaws.com/"
    );
  }

  return account_endpoint;
}


#ifdef account_endpoint_MAIN

void test_account_endpoint(int include_optional) {
    account_endpoint_t* account_endpoint_1 = instantiate_account_endpoint(include_optional);

	cJSON* jsonaccount_endpoint_1 = account_endpoint_convertToJSON(account_endpoint_1);
	printf("account_endpoint :\n%s\n", cJSON_Print(jsonaccount_endpoint_1));
	account_endpoint_t* account_endpoint_2 = account_endpoint_parseFromJSON(jsonaccount_endpoint_1);
	cJSON* jsonaccount_endpoint_2 = account_endpoint_convertToJSON(account_endpoint_2);
	printf("repeating account_endpoint:\n%s\n", cJSON_Print(jsonaccount_endpoint_2));
}

int main() {
  test_account_endpoint(1);
  test_account_endpoint(0);

  printf("Hello world \n");
  return 0;
}

#endif // account_endpoint_MAIN
#endif // account_endpoint_TEST
