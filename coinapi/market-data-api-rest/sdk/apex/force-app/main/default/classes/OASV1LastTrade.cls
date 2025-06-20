/*
 * CoinAPI Market Data REST API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: v1
 * Contact: support@apibricks.io
 *
 * NOTE: This class is auto generated by the OAS code generator program.
 * https://github.com/OpenAPITools/openapi-generator
 * Do not edit the class manually.
 */

/**
 * Represents the last executed transaction.
 */
public class OASV1LastTrade implements OAS.MappedProperties {
    /**
     * The exchange time of the last trade.
     * @return timeExchange
     */
    public Datetime timeExchange { get; set; }

    /**
     * The CoinAPI time when the last trade was received.
     * @return timeCoinapi
     */
    public Datetime timeCoinapi { get; set; }

    /**
     * The UUID of the last trade.
     * @return uuid
     */
    public String uuid { get; set; }

    /**
     * The price of the last trade.
     * @return price
     */
    public Double price { get; set; }

    /**
     * The size of the last trade.
     * @return size
     */
    public Double size { get; set; }

    /**
     * The taker side of the last trade.
     * @return takerSide
     */
    public String takerSide { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'time_exchange' => 'timeExchange',
        'time_coinapi' => 'timeCoinapi',
        'taker_side' => 'takerSide'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'time_exchange' => 'timeExchange',
        'time_coinapi' => 'timeCoinapi',
        'taker_side' => 'takerSide'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'time_exchange' => 'timeExchange',
        'time_coinapi' => 'timeCoinapi',
        'taker_side' => 'takerSide'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public static OASV1LastTrade getExample() {
        OASV1LastTrade v1LastTrade = new OASV1LastTrade();
          v1LastTrade.timeExchange = Datetime.newInstanceGmt(2000, 1, 23, 4, 56, 7);
          v1LastTrade.timeCoinapi = Datetime.newInstanceGmt(2000, 1, 23, 4, 56, 7);
          v1LastTrade.uuid = '';
          v1LastTrade.price = 1.3579;
          v1LastTrade.size = 1.3579;
          v1LastTrade.takerSide = '';
        return v1LastTrade;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASV1LastTrade) {           
            OASV1LastTrade v1LastTrade = (OASV1LastTrade) obj;
            return this.timeExchange == v1LastTrade.timeExchange
                && this.timeCoinapi == v1LastTrade.timeCoinapi
                && this.uuid == v1LastTrade.uuid
                && this.price == v1LastTrade.price
                && this.size == v1LastTrade.size
                && this.takerSide == v1LastTrade.takerSide;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (timeExchange == null ? 0 : System.hashCode(timeExchange));
        hashCode = (17 * hashCode) + (timeCoinapi == null ? 0 : System.hashCode(timeCoinapi));
        hashCode = (17 * hashCode) + (uuid == null ? 0 : System.hashCode(uuid));
        hashCode = (17 * hashCode) + (price == null ? 0 : System.hashCode(price));
        hashCode = (17 * hashCode) + (size == null ? 0 : System.hashCode(size));
        hashCode = (17 * hashCode) + (takerSide == null ? 0 : System.hashCode(takerSide));
        return hashCode;
    }
}

