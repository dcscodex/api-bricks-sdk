#ifndef account_data_TEST
#define account_data_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define account_data_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/account_data.h"
account_data_t* instantiate_account_data(int include_optional);



account_data_t* instantiate_account_data(int include_optional) {
  account_data_t* account_data = NULL;
  if (include_optional) {
    account_data = account_data_create(
      "0",
      list_createList()
    );
  } else {
    account_data = account_data_create(
      "0",
      list_createList()
    );
  }

  return account_data;
}


#ifdef account_data_MAIN

void test_account_data(int include_optional) {
    account_data_t* account_data_1 = instantiate_account_data(include_optional);

	cJSON* jsonaccount_data_1 = account_data_convertToJSON(account_data_1);
	printf("account_data :\n%s\n", cJSON_Print(jsonaccount_data_1));
	account_data_t* account_data_2 = account_data_parseFromJSON(jsonaccount_data_1);
	cJSON* jsonaccount_data_2 = account_data_convertToJSON(account_data_2);
	printf("repeating account_data:\n%s\n", cJSON_Print(jsonaccount_data_2));
}

int main() {
  test_account_data(1);
  test_account_data(0);

  printf("Hello world \n");
  return 0;
}

#endif // account_data_MAIN
#endif // account_data_TEST
