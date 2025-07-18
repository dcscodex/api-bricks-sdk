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
from pydantic import BaseModel, ConfigDict, Field, StrictFloat, StrictInt, StrictStr
from typing import Any, ClassVar, Dict, List, Optional, Union
from typing import Optional, Set
from typing_extensions import Self

class V1OrderBookDepth(BaseModel):
    """
    Represents the depth of an order book.
    """ # noqa: E501
    symbol_id: Optional[StrictStr] = Field(default=None, description="The symbol identifier.")
    time_exchange: Optional[datetime] = Field(default=None, description="The exchange time of the order book.")
    time_coinapi: Optional[datetime] = Field(default=None, description="The CoinAPI time when the order book was received.")
    ask_levels: Optional[StrictInt] = Field(default=None, description="The number of ask levels in the order book.")
    bid_levels: Optional[StrictInt] = Field(default=None, description="The number of bid levels in the order book.")
    ask_depth: Optional[Union[StrictFloat, StrictInt]] = Field(default=None, description="The depth of the ask side of the order book.")
    bid_depth: Optional[Union[StrictFloat, StrictInt]] = Field(default=None, description="The depth of the bid side of the order book.")
    __properties: ClassVar[List[str]] = ["symbol_id", "time_exchange", "time_coinapi", "ask_levels", "bid_levels", "ask_depth", "bid_depth"]

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
        """Create an instance of V1OrderBookDepth from a JSON string"""
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

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of V1OrderBookDepth from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "symbol_id": obj.get("symbol_id"),
            "time_exchange": obj.get("time_exchange"),
            "time_coinapi": obj.get("time_coinapi"),
            "ask_levels": obj.get("ask_levels"),
            "bid_levels": obj.get("bid_levels"),
            "ask_depth": obj.get("ask_depth"),
            "bid_depth": obj.get("bid_depth")
        })
        return _obj


