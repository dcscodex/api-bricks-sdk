package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.BalanceData;

@Canonical
class Balance {
    /* Result type. */
    String type
    /* Exchange name. */
    String exchangeName
    
    List<BalanceData> data = new ArrayList<BalanceData>()
}
