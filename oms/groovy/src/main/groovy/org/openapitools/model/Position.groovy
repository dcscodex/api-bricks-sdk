package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.PositionData;

@Canonical
class Position {
    /* Result type. */
    String type
    /* Name of exchange. */
    String exchangeName
    
    List<PositionData> data = new ArrayList<PositionData>()
}
