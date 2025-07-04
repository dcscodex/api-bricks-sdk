# coding: utf-8

"""
    FinFeedAPI Stock REST API

    No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

    The version of the OpenAPI document: v1
    Contact: support@apibricks.io
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from api_bricks_stock_api_rest.models.level3_order_book_model import Level3OrderBookModel

class TestLevel3OrderBookModel(unittest.TestCase):
    """Level3OrderBookModel unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> Level3OrderBookModel:
        """Test Level3OrderBookModel
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `Level3OrderBookModel`
        """
        model = Level3OrderBookModel()
        if include_optional:
            return Level3OrderBookModel(
                add_order = api_bricks_stock_api_rest.models.level3/add_order_model.Level3.AddOrderModel(
                    symbol = '', 
                    timestamp_nanos = 56, 
                    timestamp = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'), 
                    is_side_buy = True, 
                    size = 56, 
                    price = 1.337, 
                    order_id = 56, ),
                delete_order = api_bricks_stock_api_rest.models.level3/delete_order_model.Level3.DeleteOrderModel(
                    symbol = '', 
                    timestamp_nanos = 56, 
                    timestamp = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'), 
                    order_id_reference = 56, ),
                modify_order = api_bricks_stock_api_rest.models.level3/modify_order_model.Level3.ModifyOrderModel(
                    symbol = '', 
                    timestamp_nanos = 56, 
                    timestamp = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'), 
                    order_id_reference = 56, 
                    is_priority_reset = True, 
                    size = 56, 
                    price = 1.337, ),
                executed_order = api_bricks_stock_api_rest.models.level3/executed_order_model.Level3.ExecutedOrderModel(
                    symbol = '', 
                    timestamp_nanos = 56, 
                    timestamp = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'), 
                    order_id_reference = 56, 
                    sale_condition_flags = 56, 
                    is_intermarket_sweep = True, 
                    is_extended_hours_trade = True, 
                    is_odd_lot_trade = True, 
                    is_trade_through_exempt = True, 
                    is_single_price_cross_trade = True, 
                    size = 56, 
                    price = 1.337, 
                    trade_id = 56, ),
                clear_book = api_bricks_stock_api_rest.models.level3/clear_book_model.Level3.ClearBookModel(
                    symbol = '', 
                    timestamp_nanos = 56, 
                    timestamp = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'), )
            )
        else:
            return Level3OrderBookModel(
        )
        """

    def testLevel3OrderBookModel(self):
        """Test Level3OrderBookModel"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
