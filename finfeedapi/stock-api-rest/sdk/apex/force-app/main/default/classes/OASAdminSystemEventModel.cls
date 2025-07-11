/*
 * FinFeedAPI Stock REST API
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
 * Represents the response DTO for system event information
 */
public class OASAdminSystemEventModel implements OAS.MappedProperties {
    /**
     * Original timestamp in nanoseconds since epoch
     * @return timestampNanos
     */
    public Long timestampNanos { get; set; }

    /**
     * Time when the system event was recorded as DateTime
     * @return timestamp
     */
    public Datetime timestamp { get; set; }

    /**
     * System event as byte value
     * @return systemEvent
     */
    public Integer systemEvent { get; set; }

    /**
     * System event as string
     * @return systemEventCode
     */
    public String systemEventCode { get; set; }

    /**
     * Human-readable description of the system event
     * @return systemEventText
     */
    public String systemEventText { get; set; }

    /**
     * Indicates if the system event is \'Start of Messages\' (O).\nOutside of heartbeat messages on the lower level protocol, \nthe start of day message is the first message sent in any trading session.
     * @return isSystemEventStartOfMessages
     */
    public Boolean isSystemEventStartOfMessages { get; set; }

    /**
     * Indicates if the system event is \'Start of System Hours\' (S).\nThis message indicates that IEX is open and ready to start accepting orders.
     * @return isSystemEventStartOfSystemHours
     */
    public Boolean isSystemEventStartOfSystemHours { get; set; }

    /**
     * Indicates if the system event is \'Start of Regular Market Hours\' (R).\nThis message indicates that DAY and GTX orders, as well as market orders and pegged orders, \nare available for execution on IEX.
     * @return isSystemEventStartOfRegularMarketHours
     */
    public Boolean isSystemEventStartOfRegularMarketHours { get; set; }

    /**
     * Indicates if the system event is \'End of Regular Market Hours\' (M).\nThis message indicates that DAY orders, market orders, and pegged orders \nare no longer accepted by IEX.
     * @return isSystemEventEndOfRegularMarketHours
     */
    public Boolean isSystemEventEndOfRegularMarketHours { get; set; }

    /**
     * Indicates if the system event is \'End of System Hours\' (E).\nThis message indicates that IEX is now closed and will not accept \nany new orders during this trading session. It is still possible \nto receive messages after the end of day.
     * @return isSystemEventEndOfSystemHours
     */
    public Boolean isSystemEventEndOfSystemHours { get; set; }

    /**
     * Indicates if the system event is \'End of Messages\' (C).\nThis is always the last message sent in any trading session.
     * @return isSystemEventEndOfMessages
     */
    public Boolean isSystemEventEndOfMessages { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'timestamp_nanos' => 'timestampNanos',
        'system_event' => 'systemEvent',
        'system_event_code' => 'systemEventCode',
        'system_event_text' => 'systemEventText',
        'is_system_event_start_of_messages' => 'isSystemEventStartOfMessages',
        'is_system_event_start_of_system_hours' => 'isSystemEventStartOfSystemHours',
        'is_system_event_start_of_regular_market_hours' => 'isSystemEventStartOfRegularMarketHours',
        'is_system_event_end_of_regular_market_hours' => 'isSystemEventEndOfRegularMarketHours',
        'is_system_event_end_of_system_hours' => 'isSystemEventEndOfSystemHours',
        'is_system_event_end_of_messages' => 'isSystemEventEndOfMessages'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'timestamp_nanos' => 'timestampNanos',
        'system_event' => 'systemEvent',
        'system_event_code' => 'systemEventCode',
        'system_event_text' => 'systemEventText',
        'is_system_event_start_of_messages' => 'isSystemEventStartOfMessages',
        'is_system_event_start_of_system_hours' => 'isSystemEventStartOfSystemHours',
        'is_system_event_start_of_regular_market_hours' => 'isSystemEventStartOfRegularMarketHours',
        'is_system_event_end_of_regular_market_hours' => 'isSystemEventEndOfRegularMarketHours',
        'is_system_event_end_of_system_hours' => 'isSystemEventEndOfSystemHours',
        'is_system_event_end_of_messages' => 'isSystemEventEndOfMessages'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'timestamp_nanos' => 'timestampNanos',
        'system_event' => 'systemEvent',
        'system_event_code' => 'systemEventCode',
        'system_event_text' => 'systemEventText',
        'is_system_event_start_of_messages' => 'isSystemEventStartOfMessages',
        'is_system_event_start_of_system_hours' => 'isSystemEventStartOfSystemHours',
        'is_system_event_start_of_regular_market_hours' => 'isSystemEventStartOfRegularMarketHours',
        'is_system_event_end_of_regular_market_hours' => 'isSystemEventEndOfRegularMarketHours',
        'is_system_event_end_of_system_hours' => 'isSystemEventEndOfSystemHours',
        'is_system_event_end_of_messages' => 'isSystemEventEndOfMessages'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'timestamp_nanos' => 'timestampNanos',
        'system_event' => 'systemEvent',
        'system_event_code' => 'systemEventCode',
        'system_event_text' => 'systemEventText',
        'is_system_event_start_of_messages' => 'isSystemEventStartOfMessages',
        'is_system_event_start_of_system_hours' => 'isSystemEventStartOfSystemHours',
        'is_system_event_start_of_regular_market_hours' => 'isSystemEventStartOfRegularMarketHours',
        'is_system_event_end_of_regular_market_hours' => 'isSystemEventEndOfRegularMarketHours',
        'is_system_event_end_of_system_hours' => 'isSystemEventEndOfSystemHours',
        'is_system_event_end_of_messages' => 'isSystemEventEndOfMessages'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'timestamp_nanos' => 'timestampNanos',
        'system_event' => 'systemEvent',
        'system_event_code' => 'systemEventCode',
        'system_event_text' => 'systemEventText',
        'is_system_event_start_of_messages' => 'isSystemEventStartOfMessages',
        'is_system_event_start_of_system_hours' => 'isSystemEventStartOfSystemHours',
        'is_system_event_start_of_regular_market_hours' => 'isSystemEventStartOfRegularMarketHours',
        'is_system_event_end_of_regular_market_hours' => 'isSystemEventEndOfRegularMarketHours',
        'is_system_event_end_of_system_hours' => 'isSystemEventEndOfSystemHours',
        'is_system_event_end_of_messages' => 'isSystemEventEndOfMessages'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'timestamp_nanos' => 'timestampNanos',
        'system_event' => 'systemEvent',
        'system_event_code' => 'systemEventCode',
        'system_event_text' => 'systemEventText',
        'is_system_event_start_of_messages' => 'isSystemEventStartOfMessages',
        'is_system_event_start_of_system_hours' => 'isSystemEventStartOfSystemHours',
        'is_system_event_start_of_regular_market_hours' => 'isSystemEventStartOfRegularMarketHours',
        'is_system_event_end_of_regular_market_hours' => 'isSystemEventEndOfRegularMarketHours',
        'is_system_event_end_of_system_hours' => 'isSystemEventEndOfSystemHours',
        'is_system_event_end_of_messages' => 'isSystemEventEndOfMessages'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'timestamp_nanos' => 'timestampNanos',
        'system_event' => 'systemEvent',
        'system_event_code' => 'systemEventCode',
        'system_event_text' => 'systemEventText',
        'is_system_event_start_of_messages' => 'isSystemEventStartOfMessages',
        'is_system_event_start_of_system_hours' => 'isSystemEventStartOfSystemHours',
        'is_system_event_start_of_regular_market_hours' => 'isSystemEventStartOfRegularMarketHours',
        'is_system_event_end_of_regular_market_hours' => 'isSystemEventEndOfRegularMarketHours',
        'is_system_event_end_of_system_hours' => 'isSystemEventEndOfSystemHours',
        'is_system_event_end_of_messages' => 'isSystemEventEndOfMessages'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'timestamp_nanos' => 'timestampNanos',
        'system_event' => 'systemEvent',
        'system_event_code' => 'systemEventCode',
        'system_event_text' => 'systemEventText',
        'is_system_event_start_of_messages' => 'isSystemEventStartOfMessages',
        'is_system_event_start_of_system_hours' => 'isSystemEventStartOfSystemHours',
        'is_system_event_start_of_regular_market_hours' => 'isSystemEventStartOfRegularMarketHours',
        'is_system_event_end_of_regular_market_hours' => 'isSystemEventEndOfRegularMarketHours',
        'is_system_event_end_of_system_hours' => 'isSystemEventEndOfSystemHours',
        'is_system_event_end_of_messages' => 'isSystemEventEndOfMessages'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'timestamp_nanos' => 'timestampNanos',
        'system_event' => 'systemEvent',
        'system_event_code' => 'systemEventCode',
        'system_event_text' => 'systemEventText',
        'is_system_event_start_of_messages' => 'isSystemEventStartOfMessages',
        'is_system_event_start_of_system_hours' => 'isSystemEventStartOfSystemHours',
        'is_system_event_start_of_regular_market_hours' => 'isSystemEventStartOfRegularMarketHours',
        'is_system_event_end_of_regular_market_hours' => 'isSystemEventEndOfRegularMarketHours',
        'is_system_event_end_of_system_hours' => 'isSystemEventEndOfSystemHours',
        'is_system_event_end_of_messages' => 'isSystemEventEndOfMessages'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'timestamp_nanos' => 'timestampNanos',
        'system_event' => 'systemEvent',
        'system_event_code' => 'systemEventCode',
        'system_event_text' => 'systemEventText',
        'is_system_event_start_of_messages' => 'isSystemEventStartOfMessages',
        'is_system_event_start_of_system_hours' => 'isSystemEventStartOfSystemHours',
        'is_system_event_start_of_regular_market_hours' => 'isSystemEventStartOfRegularMarketHours',
        'is_system_event_end_of_regular_market_hours' => 'isSystemEventEndOfRegularMarketHours',
        'is_system_event_end_of_system_hours' => 'isSystemEventEndOfSystemHours',
        'is_system_event_end_of_messages' => 'isSystemEventEndOfMessages'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public static OASAdminSystemEventModel getExample() {
        OASAdminSystemEventModel adminSystemEventModel = new OASAdminSystemEventModel();
          adminSystemEventModel.timestampNanos = 123456789L;
          adminSystemEventModel.timestamp = Datetime.newInstanceGmt(2000, 1, 23, 4, 56, 7);
          adminSystemEventModel.systemEvent = 0;
          adminSystemEventModel.systemEventCode = '';
          adminSystemEventModel.systemEventText = '';
          adminSystemEventModel.isSystemEventStartOfMessages = true;
          adminSystemEventModel.isSystemEventStartOfSystemHours = true;
          adminSystemEventModel.isSystemEventStartOfRegularMarketHours = true;
          adminSystemEventModel.isSystemEventEndOfRegularMarketHours = true;
          adminSystemEventModel.isSystemEventEndOfSystemHours = true;
          adminSystemEventModel.isSystemEventEndOfMessages = true;
        return adminSystemEventModel;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASAdminSystemEventModel) {           
            OASAdminSystemEventModel adminSystemEventModel = (OASAdminSystemEventModel) obj;
            return this.timestampNanos == adminSystemEventModel.timestampNanos
                && this.timestamp == adminSystemEventModel.timestamp
                && this.systemEvent == adminSystemEventModel.systemEvent
                && this.systemEventCode == adminSystemEventModel.systemEventCode
                && this.systemEventText == adminSystemEventModel.systemEventText
                && this.isSystemEventStartOfMessages == adminSystemEventModel.isSystemEventStartOfMessages
                && this.isSystemEventStartOfSystemHours == adminSystemEventModel.isSystemEventStartOfSystemHours
                && this.isSystemEventStartOfRegularMarketHours == adminSystemEventModel.isSystemEventStartOfRegularMarketHours
                && this.isSystemEventEndOfRegularMarketHours == adminSystemEventModel.isSystemEventEndOfRegularMarketHours
                && this.isSystemEventEndOfSystemHours == adminSystemEventModel.isSystemEventEndOfSystemHours
                && this.isSystemEventEndOfMessages == adminSystemEventModel.isSystemEventEndOfMessages;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (timestampNanos == null ? 0 : System.hashCode(timestampNanos));
        hashCode = (17 * hashCode) + (timestamp == null ? 0 : System.hashCode(timestamp));
        hashCode = (17 * hashCode) + (systemEvent == null ? 0 : System.hashCode(systemEvent));
        hashCode = (17 * hashCode) + (systemEventCode == null ? 0 : System.hashCode(systemEventCode));
        hashCode = (17 * hashCode) + (systemEventText == null ? 0 : System.hashCode(systemEventText));
        hashCode = (17 * hashCode) + (isSystemEventStartOfMessages == null ? 0 : System.hashCode(isSystemEventStartOfMessages));
        hashCode = (17 * hashCode) + (isSystemEventStartOfSystemHours == null ? 0 : System.hashCode(isSystemEventStartOfSystemHours));
        hashCode = (17 * hashCode) + (isSystemEventStartOfRegularMarketHours == null ? 0 : System.hashCode(isSystemEventStartOfRegularMarketHours));
        hashCode = (17 * hashCode) + (isSystemEventEndOfRegularMarketHours == null ? 0 : System.hashCode(isSystemEventEndOfRegularMarketHours));
        hashCode = (17 * hashCode) + (isSystemEventEndOfSystemHours == null ? 0 : System.hashCode(isSystemEventEndOfSystemHours));
        hashCode = (17 * hashCode) + (isSystemEventEndOfMessages == null ? 0 : System.hashCode(isSystemEventEndOfMessages));
        return hashCode;
    }
}

