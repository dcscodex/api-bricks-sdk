#ifndef get_account_TEST
#define get_account_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define get_account_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/get_account.h"
get_account_t* instantiate_get_account(int include_optional);



get_account_t* instantiate_get_account(int include_optional) {
  get_account_t* get_account = NULL;
  if (include_optional) {
    get_account = get_account_create(
      "0",
      list_createList()
    );
  } else {
    get_account = get_account_create(
      "0",
      list_createList()
    );
  }

  return get_account;
}


#ifdef get_account_MAIN

void test_get_account(int include_optional) {
    get_account_t* get_account_1 = instantiate_get_account(include_optional);

	cJSON* jsonget_account_1 = get_account_convertToJSON(get_account_1);
	printf("get_account :\n%s\n", cJSON_Print(jsonget_account_1));
	get_account_t* get_account_2 = get_account_parseFromJSON(jsonget_account_1);
	cJSON* jsonget_account_2 = get_account_convertToJSON(get_account_2);
	printf("repeating get_account:\n%s\n", cJSON_Print(jsonget_account_2));
}

int main() {
  test_get_account(1);
  test_get_account(0);

  printf("Hello world \n");
  return 0;
}

#endif // get_account_MAIN
#endif // get_account_TEST
