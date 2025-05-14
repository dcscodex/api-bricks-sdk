package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.Level3AddOrderModel;
import org.openapitools.model.Level3ClearBookModel;
import org.openapitools.model.Level3DeleteOrderModel;
import org.openapitools.model.Level3ExecutedOrderModel;
import org.openapitools.model.Level3ModifyOrderModel;

@Canonical
class Level3OrderBookModel {
    
    Level3AddOrderModel addOrder
    
    Level3DeleteOrderModel deleteOrder
    
    Level3ModifyOrderModel modifyOrder
    
    Level3ExecutedOrderModel executedOrder
    
    Level3ClearBookModel clearBook
}
