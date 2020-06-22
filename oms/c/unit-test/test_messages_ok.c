#ifndef messages_ok_TEST
#define messages_ok_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define messages_ok_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/messages_ok.h"
messages_ok_t* instantiate_messages_ok(int include_optional);



messages_ok_t* instantiate_messages_ok(int include_optional) {
  messages_ok_t* messages_ok = NULL;
  if (include_optional) {
    messages_ok = messages_ok_create(
      "message",
      "KRAKEN",
      "Ok"
    );
  } else {
    messages_ok = messages_ok_create(
      "message",
      "KRAKEN",
      "Ok"
    );
  }

  return messages_ok;
}


#ifdef messages_ok_MAIN

void test_messages_ok(int include_optional) {
    messages_ok_t* messages_ok_1 = instantiate_messages_ok(include_optional);

	cJSON* jsonmessages_ok_1 = messages_ok_convertToJSON(messages_ok_1);
	printf("messages_ok :\n%s\n", cJSON_Print(jsonmessages_ok_1));
	messages_ok_t* messages_ok_2 = messages_ok_parseFromJSON(jsonmessages_ok_1);
	cJSON* jsonmessages_ok_2 = messages_ok_convertToJSON(messages_ok_2);
	printf("repeating messages_ok:\n%s\n", cJSON_Print(jsonmessages_ok_2));
}

int main() {
  test_messages_ok(1);
  test_messages_ok(0);

  printf("Hello world \n");
  return 0;
}

#endif // messages_ok_MAIN
#endif // messages_ok_TEST
