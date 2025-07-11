=begin comment

FinFeedAPI SEC REST API

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1
Contact: support@apibricks.io
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator
# Please update the test cases below to test the API endpoints.
# Ref: https://openapi-generator.tech
#
use Test::More;
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::OpenAPIClient::FullTextSearchApi');

my $api = WWW::OpenAPIClient::FullTextSearchApi->new();
isa_ok($api, 'WWW::OpenAPIClient::FullTextSearchApi');

#
# v1_full_text_get test
#
# uncomment below and update the test
#my $v1_full_text_get_form_type = undef; # replace NULL with a proper value
#my $v1_full_text_get_filling_date_start = undef; # replace NULL with a proper value
#my $v1_full_text_get_filling_date_end = undef; # replace NULL with a proper value
#my $v1_full_text_get_text_contains = undef; # replace NULL with a proper value
#my $v1_full_text_get_text_not_contain = undef; # replace NULL with a proper value
#my $v1_full_text_get_page_size = undef; # replace NULL with a proper value
#my $v1_full_text_get_page_number = undef; # replace NULL with a proper value
#my $v1_full_text_get_sort_by = undef; # replace NULL with a proper value
#my $v1_full_text_get_sort_order = undef; # replace NULL with a proper value
#my $v1_full_text_get_result = $api->v1_full_text_get(form_type => $v1_full_text_get_form_type, filling_date_start => $v1_full_text_get_filling_date_start, filling_date_end => $v1_full_text_get_filling_date_end, text_contains => $v1_full_text_get_text_contains, text_not_contain => $v1_full_text_get_text_not_contain, page_size => $v1_full_text_get_page_size, page_number => $v1_full_text_get_page_number, sort_by => $v1_full_text_get_sort_by, sort_order => $v1_full_text_get_sort_order);


done_testing();
