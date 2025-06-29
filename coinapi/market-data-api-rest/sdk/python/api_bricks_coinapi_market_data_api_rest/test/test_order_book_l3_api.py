# coding: utf-8

"""
    CoinAPI Market Data REST API

    No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

    The version of the OpenAPI document: v1
    Contact: support@apibricks.io
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from api_bricks_coinapi_market_data_api_rest.api.order_book_l3_api import OrderBookL3Api


class TestOrderBookL3Api(unittest.TestCase):
    """OrderBookL3Api unit test stubs"""

    def setUp(self) -> None:
        self.api = OrderBookL3Api()

    def tearDown(self) -> None:
        pass

    def test_v1_orderbooks3_current_get(self) -> None:
        """Test case for v1_orderbooks3_current_get

        Current order books
        """
        pass

    def test_v1_orderbooks3_symbol_id_current_get(self) -> None:
        """Test case for v1_orderbooks3_symbol_id_current_get

        Current order book by symbol_id
        """
        pass


if __name__ == '__main__':
    unittest.main()
