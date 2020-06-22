#ifndef messages_info_TEST
#define messages_info_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define messages_info_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/messages_info.h"
messages_info_t* instantiate_messages_info(int include_optional);



messages_info_t* instantiate_messages_info(int include_optional) {
  messages_info_t* messages_info = NULL;
  if (include_optional) {
    messages_info = messages_info_create(
      "error",
      "KRAKEN",
      "Exchange not registered"
    );
  } else {
    messages_info = messages_info_create(
      "error",
      "KRAKEN",
      "Exchange not registered"
    );
  }

  return messages_info;
}


#ifdef messages_info_MAIN

void test_messages_info(int include_optional) {
    messages_info_t* messages_info_1 = instantiate_messages_info(include_optional);

	cJSON* jsonmessages_info_1 = messages_info_convertToJSON(messages_info_1);
	printf("messages_info :\n%s\n", cJSON_Print(jsonmessages_info_1));
	messages_info_t* messages_info_2 = messages_info_parseFromJSON(jsonmessages_info_1);
	cJSON* jsonmessages_info_2 = messages_info_convertToJSON(messages_info_2);
	printf("repeating messages_info:\n%s\n", cJSON_Print(jsonmessages_info_2));
}

int main() {
  test_messages_info(1);
  test_messages_info(0);

  printf("Hello world \n");
  return 0;
}

#endif // messages_info_MAIN
#endif // messages_info_TEST
