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

from api_bricks_stock_api_rest.models.level3_add_order_model import Level3AddOrderModel

class TestLevel3AddOrderModel(unittest.TestCase):
    """Level3AddOrderModel unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> Level3AddOrderModel:
        """Test Level3AddOrderModel
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `Level3AddOrderModel`
        """
        model = Level3AddOrderModel()
        if include_optional:
            return Level3AddOrderModel(
                symbol = '',
                timestamp_nanos = 56,
                timestamp = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'),
                is_side_buy = True,
                size = 56,
                price = 1.337,
                order_id = 56
            )
        else:
            return Level3AddOrderModel(
        )
        """

    def testLevel3AddOrderModel(self):
        """Test Level3AddOrderModel"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
