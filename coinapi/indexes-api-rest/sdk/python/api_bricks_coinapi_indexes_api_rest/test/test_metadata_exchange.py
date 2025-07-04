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

from api_bricks_coinapi_indexes_api_rest.models.metadata_exchange import MetadataExchange

class TestMetadataExchange(unittest.TestCase):
    """MetadataExchange unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> MetadataExchange:
        """Test MetadataExchange
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `MetadataExchange`
        """
        model = MetadataExchange()
        if include_optional:
            return MetadataExchange(
                exchange_id = '',
                website = '',
                name = ''
            )
        else:
            return MetadataExchange(
        )
        """

    def testMetadataExchange(self):
        """Test MetadataExchange"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
