# coding: utf-8

"""
    CoinAPI Indexes REST API

    No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

    The version of the OpenAPI document: v1
    Contact: support@apibricks.io
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from api_bricks_coinapi_indexes_api_rest.models.indexes_index_multi_asset_weight import IndexesIndexMultiAssetWeight

class TestIndexesIndexMultiAssetWeight(unittest.TestCase):
    """IndexesIndexMultiAssetWeight unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> IndexesIndexMultiAssetWeight:
        """Test IndexesIndexMultiAssetWeight
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `IndexesIndexMultiAssetWeight`
        """
        model = IndexesIndexMultiAssetWeight()
        if include_optional:
            return IndexesIndexMultiAssetWeight(
                index_id = '',
                asset_id = '',
                weight = 1.337
            )
        else:
            return IndexesIndexMultiAssetWeight(
        )
        """

    def testIndexesIndexMultiAssetWeight(self):
        """Test IndexesIndexMultiAssetWeight"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
