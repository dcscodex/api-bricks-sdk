package org.openapitools.client.model {

import org.openapitools.client.model.Object;
import org.openapitools.client.model.OrdSide;

    [XmlRootNode(name="PositionData")]
    public class PositionData {
        /* Exchange symbol. */
        [XmlElement(name="symbol_id_exchange")]
        public var symbolIdExchange: String = null;
        /* CoinAPI symbol. */
        [XmlElement(name="symbol_id_coinapi")]
        public var symbolIdCoinapi: String = null;
        /* Calculated average price of all fills on this position. */
        [XmlElement(name="avg_entry_price")]
        public var avgEntryPrice: Number = 0.0;
        /* The current position quantity. */
        [XmlElement(name="quantity")]
        public var quantity: Number = 0.0;
                [XmlElement(name="side")]
        public var side: OrdSide = NaN;
        /* Unrealised profit or loss (PNL) of this position. */
        [XmlElement(name="unrealized_pnl")]
        public var unrealizedPnl: Number = 0.0;
        /* Leverage for this position reported by the exchange. */
        [XmlElement(name="leverage")]
        public var leverage: Number = 0.0;
        /* Is cross margin mode enable for this position? */
        [XmlElement(name="cross_margin")]
        public var crossMargin: Boolean = false;
        /* Liquidation price. If mark price will reach this value, the position will be liquidated. */
        [XmlElement(name="liquidation_price")]
        public var liquidationPrice: Number = 0.0;
                [XmlElement(name="raw_data")]
        public var rawData: Object = NaN;

    public function toString(): String {
        var str: String = "PositionData: ";
        str += " (symbolIdExchange: " + symbolIdExchange + ")";
        str += " (symbolIdCoinapi: " + symbolIdCoinapi + ")";
        str += " (avgEntryPrice: " + avgEntryPrice + ")";
        str += " (quantity: " + quantity + ")";
        str += " (side: " + side + ")";
        str += " (unrealizedPnl: " + unrealizedPnl + ")";
        str += " (leverage: " + leverage + ")";
        str += " (crossMargin: " + crossMargin + ")";
        str += " (liquidationPrice: " + liquidationPrice + ")";
        str += " (rawData: " + rawData + ")";
        return str;
    }

}

}
