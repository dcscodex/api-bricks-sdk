# coding: utf-8

"""
    FinFeedAPI Stock REST API

    No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

    The version of the OpenAPI document: v1
    Contact: support@apibricks.io
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json

from datetime import datetime
from pydantic import BaseModel, ConfigDict, Field, StrictBool, StrictInt, StrictStr
from typing import Any, ClassVar, Dict, List, Optional
from typing import Optional, Set
from typing_extensions import Self

class AdminTradingStatusModel(BaseModel):
    """
    Represents the response DTO for trading status information
    """ # noqa: E501
    symbol: Optional[StrictStr] = Field(default=None, description="The stock symbol")
    timestamp_nanos: Optional[StrictInt] = Field(default=None, description="Original timestamp in nanoseconds since epoch")
    timestamp: Optional[datetime] = Field(default=None, description="Time when the trading status was recorded as DateTime")
    is_trading_live: Optional[StrictBool] = Field(default=None, description="Gets whether the security is currently trading on IEX")
    is_trading_halted: Optional[StrictBool] = Field(default=None, description="Gets whether the security is halted across all US equity markets")
    is_trading_in_order_acceptance_period: Optional[StrictBool] = Field(default=None, description="Gets whether the security is in Order Acceptance Period on IEX")
    is_trading_paused: Optional[StrictBool] = Field(default=None, description="Gets whether the security is paused and in Order Acceptance Period on IEX")
    is_reason_halt_news_pending: Optional[StrictBool] = Field(default=None, description="Gets whether the halt reason is News Pending")
    is_reason_ipo_not_yet_trading: Optional[StrictBool] = Field(default=None, description="Gets whether the halt reason is IPO Not Yet Trading")
    is_reason_ipo_deferred: Optional[StrictBool] = Field(default=None, description="Gets whether the halt reason is IPO Deferred")
    is_reason_halt_news_dissemination: Optional[StrictBool] = Field(default=None, description="Gets whether the order acceptance period reason is Halt News Dissemination")
    is_reason_ipo_order_acceptance_period: Optional[StrictBool] = Field(default=None, description="Gets whether the order acceptance period reason is IPO Order Acceptance Period")
    is_reason_ipo_pre_launch_period: Optional[StrictBool] = Field(default=None, description="Gets whether the order acceptance period reason is IPO Pre-Launch Period")
    is_reason_market_wide_circuit_breaker_level1: Optional[StrictBool] = Field(default=None, description="Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 1 – Breached")
    is_reason_market_wide_circuit_breaker_level2: Optional[StrictBool] = Field(default=None, description="Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 2 – Breached")
    is_reason_market_wide_circuit_breaker_level3: Optional[StrictBool] = Field(default=None, description="Gets whether the halt reason is Market-Wide Circuit Breaker Level 3 – Breached")
    is_reason_not_applicable: Optional[StrictBool] = Field(default=None, description="Gets whether the reason is Not Applicable")
    is_reason_not_available: Optional[StrictBool] = Field(default=None, description="Gets whether the halt reason is Not Available")
    __properties: ClassVar[List[str]] = ["symbol", "timestamp_nanos", "timestamp", "is_trading_live", "is_trading_halted", "is_trading_in_order_acceptance_period", "is_trading_paused", "is_reason_halt_news_pending", "is_reason_ipo_not_yet_trading", "is_reason_ipo_deferred", "is_reason_halt_news_dissemination", "is_reason_ipo_order_acceptance_period", "is_reason_ipo_pre_launch_period", "is_reason_market_wide_circuit_breaker_level1", "is_reason_market_wide_circuit_breaker_level2", "is_reason_market_wide_circuit_breaker_level3", "is_reason_not_applicable", "is_reason_not_available"]

    model_config = ConfigDict(
        populate_by_name=True,
        validate_assignment=True,
        protected_namespaces=(),
    )


    def to_str(self) -> str:
        """Returns the string representation of the model using alias"""
        return pprint.pformat(self.model_dump(by_alias=True))

    def to_json(self) -> str:
        """Returns the JSON representation of the model using alias"""
        # TODO: pydantic v2: use .model_dump_json(by_alias=True, exclude_unset=True) instead
        return json.dumps(self.to_dict())

    @classmethod
    def from_json(cls, json_str: str) -> Optional[Self]:
        """Create an instance of AdminTradingStatusModel from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self) -> Dict[str, Any]:
        """Return the dictionary representation of the model using alias.

        This has the following differences from calling pydantic's
        `self.model_dump(by_alias=True)`:

        * `None` is only added to the output dict for nullable fields that
          were set at model initialization. Other fields with value `None`
          are ignored.
        """
        excluded_fields: Set[str] = set([
        ])

        _dict = self.model_dump(
            by_alias=True,
            exclude=excluded_fields,
            exclude_none=True,
        )
        # set to None if symbol (nullable) is None
        # and model_fields_set contains the field
        if self.symbol is None and "symbol" in self.model_fields_set:
            _dict['symbol'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of AdminTradingStatusModel from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "symbol": obj.get("symbol"),
            "timestamp_nanos": obj.get("timestamp_nanos"),
            "timestamp": obj.get("timestamp"),
            "is_trading_live": obj.get("is_trading_live"),
            "is_trading_halted": obj.get("is_trading_halted"),
            "is_trading_in_order_acceptance_period": obj.get("is_trading_in_order_acceptance_period"),
            "is_trading_paused": obj.get("is_trading_paused"),
            "is_reason_halt_news_pending": obj.get("is_reason_halt_news_pending"),
            "is_reason_ipo_not_yet_trading": obj.get("is_reason_ipo_not_yet_trading"),
            "is_reason_ipo_deferred": obj.get("is_reason_ipo_deferred"),
            "is_reason_halt_news_dissemination": obj.get("is_reason_halt_news_dissemination"),
            "is_reason_ipo_order_acceptance_period": obj.get("is_reason_ipo_order_acceptance_period"),
            "is_reason_ipo_pre_launch_period": obj.get("is_reason_ipo_pre_launch_period"),
            "is_reason_market_wide_circuit_breaker_level1": obj.get("is_reason_market_wide_circuit_breaker_level1"),
            "is_reason_market_wide_circuit_breaker_level2": obj.get("is_reason_market_wide_circuit_breaker_level2"),
            "is_reason_market_wide_circuit_breaker_level3": obj.get("is_reason_market_wide_circuit_breaker_level3"),
            "is_reason_not_applicable": obj.get("is_reason_not_applicable"),
            "is_reason_not_available": obj.get("is_reason_not_available")
        })
        return _obj


