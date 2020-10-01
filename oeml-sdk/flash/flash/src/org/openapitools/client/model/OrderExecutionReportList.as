package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.Fills;
import org.openapitools.client.model.OrdSide;
import org.openapitools.client.model.OrdStatus;
import org.openapitools.client.model.OrdType;
import org.openapitools.client.model.OrderExecutionReportAllOf;
import org.openapitools.client.model.OrderNewSingleRequest;
import org.openapitools.client.model.TimeInForce;

    public class OrderExecutionReportList implements ListWrapper {
        // This declaration below of _OrderExecutionReport_obj_class is to force flash compiler to include this class
        private var _orderExecutionReport_obj_class: org.openapitools.client.model.OrderExecutionReport = null;
        [XmlElements(name="orderExecutionReport", type="org.openapitools.client.model.OrderExecutionReport")]
        public var orderExecutionReport: Array = new Array();

        public function getList(): Array{
            return orderExecutionReport;
        }

}

}
