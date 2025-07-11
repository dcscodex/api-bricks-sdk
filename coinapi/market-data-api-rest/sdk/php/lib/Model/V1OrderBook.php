<?php
/**
 * V1OrderBook
 *
 * PHP version 8.1
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */

/**
 * CoinAPI Market Data REST API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: v1
 * Contact: support@apibricks.io
 * Generated by: https://openapi-generator.tech
 * Generator version: 7.13.0
 */

/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

namespace OpenAPI\Client\Model;

use \ArrayAccess;
use \OpenAPI\Client\ObjectSerializer;

/**
 * V1OrderBook Class Doc Comment
 *
 * @category Class
 * @description Represents an order book with additional information and functionality.
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<string, mixed>
 */
class V1OrderBook implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'v1.OrderBook';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'symbol_id' => 'string',
        'time_exchange' => '\DateTime',
        'time_coinapi' => '\DateTime',
        'asks' => 'mixed',
        'bids' => 'mixed'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        'symbol_id' => null,
        'time_exchange' => 'date-time',
        'time_coinapi' => 'date-time',
        'asks' => null,
        'bids' => null
    ];

    /**
      * Array of nullable properties. Used for (de)serialization
      *
      * @var boolean[]
      */
    protected static array $openAPINullables = [
        'symbol_id' => true,
        'time_exchange' => false,
        'time_coinapi' => false,
        'asks' => true,
        'bids' => true
    ];

    /**
      * If a nullable field gets set to null, insert it here
      *
      * @var boolean[]
      */
    protected array $openAPINullablesSetToNull = [];

    /**
     * Array of property to type mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPITypes()
    {
        return self::$openAPITypes;
    }

    /**
     * Array of property to format mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPIFormats()
    {
        return self::$openAPIFormats;
    }

    /**
     * Array of nullable properties
     *
     * @return array
     */
    protected static function openAPINullables(): array
    {
        return self::$openAPINullables;
    }

    /**
     * Array of nullable field names deliberately set to null
     *
     * @return boolean[]
     */
    private function getOpenAPINullablesSetToNull(): array
    {
        return $this->openAPINullablesSetToNull;
    }

    /**
     * Setter - Array of nullable field names deliberately set to null
     *
     * @param boolean[] $openAPINullablesSetToNull
     */
    private function setOpenAPINullablesSetToNull(array $openAPINullablesSetToNull): void
    {
        $this->openAPINullablesSetToNull = $openAPINullablesSetToNull;
    }

    /**
     * Checks if a property is nullable
     *
     * @param string $property
     * @return bool
     */
    public static function isNullable(string $property): bool
    {
        return self::openAPINullables()[$property] ?? false;
    }

    /**
     * Checks if a nullable property is set to null.
     *
     * @param string $property
     * @return bool
     */
    public function isNullableSetToNull(string $property): bool
    {
        return in_array($property, $this->getOpenAPINullablesSetToNull(), true);
    }

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @var string[]
     */
    protected static $attributeMap = [
        'symbol_id' => 'symbol_id',
        'time_exchange' => 'time_exchange',
        'time_coinapi' => 'time_coinapi',
        'asks' => 'asks',
        'bids' => 'bids'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'symbol_id' => 'setSymbolId',
        'time_exchange' => 'setTimeExchange',
        'time_coinapi' => 'setTimeCoinapi',
        'asks' => 'setAsks',
        'bids' => 'setBids'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'symbol_id' => 'getSymbolId',
        'time_exchange' => 'getTimeExchange',
        'time_coinapi' => 'getTimeCoinapi',
        'asks' => 'getAsks',
        'bids' => 'getBids'
    ];

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @return array
     */
    public static function attributeMap()
    {
        return self::$attributeMap;
    }

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @return array
     */
    public static function setters()
    {
        return self::$setters;
    }

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @return array
     */
    public static function getters()
    {
        return self::$getters;
    }

    /**
     * The original name of the model.
     *
     * @return string
     */
    public function getModelName()
    {
        return self::$openAPIModelName;
    }


    /**
     * Associative array for storing property values
     *
     * @var mixed[]
     */
    protected $container = [];

    /**
     * Constructor
     *
     * @param mixed[]|null $data Associated array of property values
     *                      initializing the model
     */
    public function __construct(?array $data = null)
    {
        $this->setIfExists('symbol_id', $data ?? [], null);
        $this->setIfExists('time_exchange', $data ?? [], null);
        $this->setIfExists('time_coinapi', $data ?? [], null);
        $this->setIfExists('asks', $data ?? [], null);
        $this->setIfExists('bids', $data ?? [], null);
    }

    /**
    * Sets $this->container[$variableName] to the given data or to the given default Value; if $variableName
    * is nullable and its value is set to null in the $fields array, then mark it as "set to null" in the
    * $this->openAPINullablesSetToNull array
    *
    * @param string $variableName
    * @param array  $fields
    * @param mixed  $defaultValue
    */
    private function setIfExists(string $variableName, array $fields, $defaultValue): void
    {
        if (self::isNullable($variableName) && array_key_exists($variableName, $fields) && is_null($fields[$variableName])) {
            $this->openAPINullablesSetToNull[] = $variableName;
        }

        $this->container[$variableName] = $fields[$variableName] ?? $defaultValue;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        return $invalidProperties;
    }

    /**
     * Validate all the properties in the model
     * return true if all passed
     *
     * @return bool True if all properties are valid
     */
    public function valid()
    {
        return count($this->listInvalidProperties()) === 0;
    }


    /**
     * Gets symbol_id
     *
     * @return string|null
     */
    public function getSymbolId()
    {
        return $this->container['symbol_id'];
    }

    /**
     * Sets symbol_id
     *
     * @param string|null $symbol_id The symbol identifier.
     *
     * @return self
     */
    public function setSymbolId($symbol_id)
    {
        if (is_null($symbol_id)) {
            array_push($this->openAPINullablesSetToNull, 'symbol_id');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('symbol_id', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['symbol_id'] = $symbol_id;

        return $this;
    }

    /**
     * Gets time_exchange
     *
     * @return \DateTime|null
     */
    public function getTimeExchange()
    {
        return $this->container['time_exchange'];
    }

    /**
     * Sets time_exchange
     *
     * @param \DateTime|null $time_exchange The exchange time of the order book.
     *
     * @return self
     */
    public function setTimeExchange($time_exchange)
    {
        if (is_null($time_exchange)) {
            throw new \InvalidArgumentException('non-nullable time_exchange cannot be null');
        }
        $this->container['time_exchange'] = $time_exchange;

        return $this;
    }

    /**
     * Gets time_coinapi
     *
     * @return \DateTime|null
     */
    public function getTimeCoinapi()
    {
        return $this->container['time_coinapi'];
    }

    /**
     * Sets time_coinapi
     *
     * @param \DateTime|null $time_coinapi The CoinAPI time when the order book was received.
     *
     * @return self
     */
    public function setTimeCoinapi($time_coinapi)
    {
        if (is_null($time_coinapi)) {
            throw new \InvalidArgumentException('non-nullable time_coinapi cannot be null');
        }
        $this->container['time_coinapi'] = $time_coinapi;

        return $this;
    }

    /**
     * Gets asks
     *
     * @return mixed|null
     */
    public function getAsks()
    {
        return $this->container['asks'];
    }

    /**
     * Sets asks
     *
     * @param mixed|null $asks The asks made by market makers.
     *
     * @return self
     */
    public function setAsks($asks)
    {
        if (is_null($asks)) {
            array_push($this->openAPINullablesSetToNull, 'asks');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('asks', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['asks'] = $asks;

        return $this;
    }

    /**
     * Gets bids
     *
     * @return mixed|null
     */
    public function getBids()
    {
        return $this->container['bids'];
    }

    /**
     * Sets bids
     *
     * @param mixed|null $bids The bids made by market makers.
     *
     * @return self
     */
    public function setBids($bids)
    {
        if (is_null($bids)) {
            array_push($this->openAPINullablesSetToNull, 'bids');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('bids', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['bids'] = $bids;

        return $this;
    }
    /**
     * Returns true if offset exists. False otherwise.
     *
     * @param integer $offset Offset
     *
     * @return boolean
     */
    public function offsetExists($offset): bool
    {
        return isset($this->container[$offset]);
    }

    /**
     * Gets offset.
     *
     * @param integer $offset Offset
     *
     * @return mixed|null
     */
    #[\ReturnTypeWillChange]
    public function offsetGet($offset)
    {
        return $this->container[$offset] ?? null;
    }

    /**
     * Sets value based on offset.
     *
     * @param int|null $offset Offset
     * @param mixed    $value  Value to be set
     *
     * @return void
     */
    public function offsetSet($offset, $value): void
    {
        if (is_null($offset)) {
            $this->container[] = $value;
        } else {
            $this->container[$offset] = $value;
        }
    }

    /**
     * Unsets offset.
     *
     * @param integer $offset Offset
     *
     * @return void
     */
    public function offsetUnset($offset): void
    {
        unset($this->container[$offset]);
    }

    /**
     * Serializes the object to a value that can be serialized natively by json_encode().
     * @link https://www.php.net/manual/en/jsonserializable.jsonserialize.php
     *
     * @return mixed Returns data which can be serialized by json_encode(), which is a value
     * of any type other than a resource.
     */
    #[\ReturnTypeWillChange]
    public function jsonSerialize()
    {
       return ObjectSerializer::sanitizeForSerialization($this);
    }

    /**
     * Gets the string presentation of the object
     *
     * @return string
     */
    public function __toString()
    {
        return json_encode(
            ObjectSerializer::sanitizeForSerialization($this),
            JSON_PRETTY_PRINT
        );
    }

    /**
     * Gets a header-safe presentation of the object
     *
     * @return string
     */
    public function toHeaderValue()
    {
        return json_encode(ObjectSerializer::sanitizeForSerialization($this));
    }
}


