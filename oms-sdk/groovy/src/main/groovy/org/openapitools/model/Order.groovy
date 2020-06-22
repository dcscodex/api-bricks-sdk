package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.OrderData;

@Canonical
class Order {
    /* null */
    String type
    /* Exchange name */
    String exchangeName
    /* Orders array */
    List<OrderData> data = new ArrayList<OrderData>()
}
