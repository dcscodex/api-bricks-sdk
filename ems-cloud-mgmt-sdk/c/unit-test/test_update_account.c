#ifndef update_account_TEST
#define update_account_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define update_account_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/update_account.h"
update_account_t* instantiate_update_account(int include_optional);



update_account_t* instantiate_update_account(int include_optional) {
  update_account_t* update_account = NULL;
  if (include_optional) {
    update_account = update_account_create(
      "0",
      list_createList()
    );
  } else {
    update_account = update_account_create(
      "0",
      list_createList()
    );
  }

  return update_account;
}


#ifdef update_account_MAIN

void test_update_account(int include_optional) {
    update_account_t* update_account_1 = instantiate_update_account(include_optional);

	cJSON* jsonupdate_account_1 = update_account_convertToJSON(update_account_1);
	printf("update_account :\n%s\n", cJSON_Print(jsonupdate_account_1));
	update_account_t* update_account_2 = update_account_parseFromJSON(jsonupdate_account_1);
	cJSON* jsonupdate_account_2 = update_account_convertToJSON(update_account_2);
	printf("repeating update_account:\n%s\n", cJSON_Print(jsonupdate_account_2));
}

int main() {
  test_update_account(1);
  test_update_account(0);

  printf("Hello world \n");
  return 0;
}

#endif // update_account_MAIN
#endif // update_account_TEST
