# coding: utf-8

"""
    CoinAPI Market Data REST API

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
from pydantic import BaseModel, ConfigDict, Field, StrictStr
from typing import Any, ClassVar, Dict, List, Optional
from typing import Optional, Set
from typing_extensions import Self

class V1OrderBookBase(BaseModel):
    """
    Represents the base model for order book data.
    """ # noqa: E501
    symbol_id: Optional[StrictStr] = Field(default=None, description="The symbol identifier.")
    time_exchange: Optional[datetime] = Field(default=None, description="The exchange time of the order book.")
    time_coinapi: Optional[datetime] = Field(default=None, description="The CoinAPI time when the order book was received.")
    asks: Optional[Any] = Field(default=None, description="The asks made by market makers.")
    bids: Optional[Any] = Field(default=None, description="The bids made by market makers.")
    __properties: ClassVar[List[str]] = ["symbol_id", "time_exchange", "time_coinapi", "asks", "bids"]

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
        """Create an instance of V1OrderBookBase from a JSON string"""
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
        # set to None if symbol_id (nullable) is None
        # and model_fields_set contains the field
        if self.symbol_id is None and "symbol_id" in self.model_fields_set:
            _dict['symbol_id'] = None

        # set to None if asks (nullable) is None
        # and model_fields_set contains the field
        if self.asks is None and "asks" in self.model_fields_set:
            _dict['asks'] = None

        # set to None if bids (nullable) is None
        # and model_fields_set contains the field
        if self.bids is None and "bids" in self.model_fields_set:
            _dict['bids'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of V1OrderBookBase from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "symbol_id": obj.get("symbol_id"),
            "time_exchange": obj.get("time_exchange"),
            "time_coinapi": obj.get("time_coinapi"),
            "asks": obj.get("asks"),
            "bids": obj.get("bids")
        })
        return _obj


