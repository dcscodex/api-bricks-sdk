package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class BalanceDataList implements ListWrapper {
        // This declaration below of _balance_data_obj_class is to force flash compiler to include this class
        private var _balanceData_obj_class: org.openapitools.client.model.BalanceData = null;
        [XmlElements(name="balanceData", type="org.openapitools.client.model.BalanceData")]
        public var balanceData: Array = new Array();

        public function getList(): Array{
            return balanceData;
        }

}

}
