package org.openapitools.client.model {


    [XmlRootNode(name="PositionData")]
    public class PositionData {
        /* Unique position ID */
        [XmlElement(name="id")]
        public var id: String = null;
        /* The contract for this position. */
        [XmlElement(name="symbol_exchange")]
        public var symbolExchange: String = null;
        /* The coinapi contract for this position. */
        [XmlElement(name="symbol_coinapi")]
        public var symbolCoinapi: String = null;
                [XmlElement(name="avg_entry_price")]
        public var avgEntryPrice: Number = 0.0;
        /* The current position amount in contracts. */
        [XmlElement(name="quantity")]
        public var quantity: Number = 0.0;
                [XmlElement(name="is_buy")]
        public var isBuy: Boolean = false;
        /* Unrealised PNL is all the unrealised profit or loss coming from your portfolio&#39;s open positions. */
        [XmlElement(name="unrealised_pn_l")]
        public var unrealisedPnL: Number = 0.0;
        /* 1 / initMarginReq. */
        [XmlElement(name="leverage")]
        public var leverage: Number = 0.0;
        /* True/false depending on whether you set cross margin on this position. */
        [XmlElement(name="cross_margin")]
        public var crossMargin: Boolean = false;
        /* Once markPrice reaches this price, this position will be liquidated. */
        [XmlElement(name="liquidation_price")]
        public var liquidationPrice: Number = 0.0;
                [XmlElement(name="raw_data")]
        public var rawData: String = null;

    public function toString(): String {
        var str: String = "PositionData: ";
        str += " (id: " + id + ")";
        str += " (symbolExchange: " + symbolExchange + ")";
        str += " (symbolCoinapi: " + symbolCoinapi + ")";
        str += " (avgEntryPrice: " + avgEntryPrice + ")";
        str += " (quantity: " + quantity + ")";
        str += " (isBuy: " + isBuy + ")";
        str += " (unrealisedPnL: " + unrealisedPnL + ")";
        str += " (leverage: " + leverage + ")";
        str += " (crossMargin: " + crossMargin + ")";
        str += " (liquidationPrice: " + liquidationPrice + ")";
        str += " (rawData: " + rawData + ")";
        return str;
    }

}

}
