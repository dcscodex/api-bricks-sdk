#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "level3_order_book_model.h"



static level3_order_book_model_t *level3_order_book_model_create_internal(
    level3_add_order_model_t *add_order,
    level3_delete_order_model_t *delete_order,
    level3_modify_order_model_t *modify_order,
    level3_executed_order_model_t *executed_order,
    level3_clear_book_model_t *clear_book
    ) {
    level3_order_book_model_t *level3_order_book_model_local_var = malloc(sizeof(level3_order_book_model_t));
    if (!level3_order_book_model_local_var) {
        return NULL;
    }
    level3_order_book_model_local_var->add_order = add_order;
    level3_order_book_model_local_var->delete_order = delete_order;
    level3_order_book_model_local_var->modify_order = modify_order;
    level3_order_book_model_local_var->executed_order = executed_order;
    level3_order_book_model_local_var->clear_book = clear_book;

    level3_order_book_model_local_var->_library_owned = 1;
    return level3_order_book_model_local_var;
}

__attribute__((deprecated)) level3_order_book_model_t *level3_order_book_model_create(
    level3_add_order_model_t *add_order,
    level3_delete_order_model_t *delete_order,
    level3_modify_order_model_t *modify_order,
    level3_executed_order_model_t *executed_order,
    level3_clear_book_model_t *clear_book
    ) {
    return level3_order_book_model_create_internal (
        add_order,
        delete_order,
        modify_order,
        executed_order,
        clear_book
        );
}

void level3_order_book_model_free(level3_order_book_model_t *level3_order_book_model) {
    if(NULL == level3_order_book_model){
        return ;
    }
    if(level3_order_book_model->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "level3_order_book_model_free");
        return ;
    }
    listEntry_t *listEntry;
    if (level3_order_book_model->add_order) {
        level3_add_order_model_free(level3_order_book_model->add_order);
        level3_order_book_model->add_order = NULL;
    }
    if (level3_order_book_model->delete_order) {
        level3_delete_order_model_free(level3_order_book_model->delete_order);
        level3_order_book_model->delete_order = NULL;
    }
    if (level3_order_book_model->modify_order) {
        level3_modify_order_model_free(level3_order_book_model->modify_order);
        level3_order_book_model->modify_order = NULL;
    }
    if (level3_order_book_model->executed_order) {
        level3_executed_order_model_free(level3_order_book_model->executed_order);
        level3_order_book_model->executed_order = NULL;
    }
    if (level3_order_book_model->clear_book) {
        level3_clear_book_model_free(level3_order_book_model->clear_book);
        level3_order_book_model->clear_book = NULL;
    }
    free(level3_order_book_model);
}

cJSON *level3_order_book_model_convertToJSON(level3_order_book_model_t *level3_order_book_model) {
    cJSON *item = cJSON_CreateObject();

    // level3_order_book_model->add_order
    if(level3_order_book_model->add_order) {
    cJSON *add_order_local_JSON = level3_add_order_model_convertToJSON(level3_order_book_model->add_order);
    if(add_order_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "add_order", add_order_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // level3_order_book_model->delete_order
    if(level3_order_book_model->delete_order) {
    cJSON *delete_order_local_JSON = level3_delete_order_model_convertToJSON(level3_order_book_model->delete_order);
    if(delete_order_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "delete_order", delete_order_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // level3_order_book_model->modify_order
    if(level3_order_book_model->modify_order) {
    cJSON *modify_order_local_JSON = level3_modify_order_model_convertToJSON(level3_order_book_model->modify_order);
    if(modify_order_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "modify_order", modify_order_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // level3_order_book_model->executed_order
    if(level3_order_book_model->executed_order) {
    cJSON *executed_order_local_JSON = level3_executed_order_model_convertToJSON(level3_order_book_model->executed_order);
    if(executed_order_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "executed_order", executed_order_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // level3_order_book_model->clear_book
    if(level3_order_book_model->clear_book) {
    cJSON *clear_book_local_JSON = level3_clear_book_model_convertToJSON(level3_order_book_model->clear_book);
    if(clear_book_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "clear_book", clear_book_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

level3_order_book_model_t *level3_order_book_model_parseFromJSON(cJSON *level3_order_book_modelJSON){

    level3_order_book_model_t *level3_order_book_model_local_var = NULL;

    // define the local variable for level3_order_book_model->add_order
    level3_add_order_model_t *add_order_local_nonprim = NULL;

    // define the local variable for level3_order_book_model->delete_order
    level3_delete_order_model_t *delete_order_local_nonprim = NULL;

    // define the local variable for level3_order_book_model->modify_order
    level3_modify_order_model_t *modify_order_local_nonprim = NULL;

    // define the local variable for level3_order_book_model->executed_order
    level3_executed_order_model_t *executed_order_local_nonprim = NULL;

    // define the local variable for level3_order_book_model->clear_book
    level3_clear_book_model_t *clear_book_local_nonprim = NULL;

    // level3_order_book_model->add_order
    cJSON *add_order = cJSON_GetObjectItemCaseSensitive(level3_order_book_modelJSON, "add_order");
    if (cJSON_IsNull(add_order)) {
        add_order = NULL;
    }
    if (add_order) { 
    add_order_local_nonprim = level3_add_order_model_parseFromJSON(add_order); //nonprimitive
    }

    // level3_order_book_model->delete_order
    cJSON *delete_order = cJSON_GetObjectItemCaseSensitive(level3_order_book_modelJSON, "delete_order");
    if (cJSON_IsNull(delete_order)) {
        delete_order = NULL;
    }
    if (delete_order) { 
    delete_order_local_nonprim = level3_delete_order_model_parseFromJSON(delete_order); //nonprimitive
    }

    // level3_order_book_model->modify_order
    cJSON *modify_order = cJSON_GetObjectItemCaseSensitive(level3_order_book_modelJSON, "modify_order");
    if (cJSON_IsNull(modify_order)) {
        modify_order = NULL;
    }
    if (modify_order) { 
    modify_order_local_nonprim = level3_modify_order_model_parseFromJSON(modify_order); //nonprimitive
    }

    // level3_order_book_model->executed_order
    cJSON *executed_order = cJSON_GetObjectItemCaseSensitive(level3_order_book_modelJSON, "executed_order");
    if (cJSON_IsNull(executed_order)) {
        executed_order = NULL;
    }
    if (executed_order) { 
    executed_order_local_nonprim = level3_executed_order_model_parseFromJSON(executed_order); //nonprimitive
    }

    // level3_order_book_model->clear_book
    cJSON *clear_book = cJSON_GetObjectItemCaseSensitive(level3_order_book_modelJSON, "clear_book");
    if (cJSON_IsNull(clear_book)) {
        clear_book = NULL;
    }
    if (clear_book) { 
    clear_book_local_nonprim = level3_clear_book_model_parseFromJSON(clear_book); //nonprimitive
    }


    level3_order_book_model_local_var = level3_order_book_model_create_internal (
        add_order ? add_order_local_nonprim : NULL,
        delete_order ? delete_order_local_nonprim : NULL,
        modify_order ? modify_order_local_nonprim : NULL,
        executed_order ? executed_order_local_nonprim : NULL,
        clear_book ? clear_book_local_nonprim : NULL
        );

    return level3_order_book_model_local_var;
end:
    if (add_order_local_nonprim) {
        level3_add_order_model_free(add_order_local_nonprim);
        add_order_local_nonprim = NULL;
    }
    if (delete_order_local_nonprim) {
        level3_delete_order_model_free(delete_order_local_nonprim);
        delete_order_local_nonprim = NULL;
    }
    if (modify_order_local_nonprim) {
        level3_modify_order_model_free(modify_order_local_nonprim);
        modify_order_local_nonprim = NULL;
    }
    if (executed_order_local_nonprim) {
        level3_executed_order_model_free(executed_order_local_nonprim);
        executed_order_local_nonprim = NULL;
    }
    if (clear_book_local_nonprim) {
        level3_clear_book_model_free(clear_book_local_nonprim);
        clear_book_local_nonprim = NULL;
    }
    return NULL;

}
