=begin comment

CoinAPI Market Data REST API

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1
Contact: support@apibricks.io
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package WWW::OpenAPIClient::TradesApi;

require 5.6.0;
use strict;
use warnings;
use utf8;
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::OpenAPIClient::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'WWW::OpenAPIClient::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = WWW::OpenAPIClient::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# v1_trades_latest_get
#
# Latest data
#
# @param string $filter_symbol_id Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) (optional)
# @param boolean $include_id Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. (optional, default to false)
# @param int $limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional, default to 100)
{
    my $params = {
    'filter_symbol_id' => {
        data_type => 'string',
        description => 'Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)',
        required => '0',
    },
    'include_id' => {
        data_type => 'boolean',
        description => 'Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers.',
        required => '0',
    },
    'limit' => {
        data_type => 'int',
        description => 'Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'v1_trades_latest_get' } = {
        summary => 'Latest data',
        params => $params,
        returns => 'ARRAY[V1Trade]',
        };
}
# @return ARRAY[V1Trade]
#
sub v1_trades_latest_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/v1/trades/latest';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('text/plain', 'application/json', 'text/json', 'application/x-msgpack');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'filter_symbol_id'}) {
        $query_params->{'filter_symbol_id'} = $self->{api_client}->to_query_value($args{'filter_symbol_id'});
    }

    # query params
    if ( exists $args{'include_id'}) {
        $query_params->{'include_id'} = $self->{api_client}->to_query_value($args{'include_id'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(APIKey JWT )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[V1Trade]', $response);
    return $_response_object;
}

#
# v1_trades_symbol_id_history_get
#
# Historical data
#
# @param string $symbol_id Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) (required)
# @param string $date Date in ISO 8601, returned data is for the whole given day (required if &#39;time_start&#39; is not provided) (optional)
# @param string $time_start Starting time in ISO 8601 (optional)
# @param string $time_end Timeseries ending time in ISO 8601 (optional)
# @param int $limit Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional, default to 100)
# @param boolean $include_id Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. (optional, default to false)
{
    my $params = {
    'symbol_id' => {
        data_type => 'string',
        description => 'Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols)',
        required => '1',
    },
    'date' => {
        data_type => 'string',
        description => 'Date in ISO 8601, returned data is for the whole given day (required if &#39;time_start&#39; is not provided)',
        required => '0',
    },
    'time_start' => {
        data_type => 'string',
        description => 'Starting time in ISO 8601',
        required => '0',
    },
    'time_end' => {
        data_type => 'string',
        description => 'Timeseries ending time in ISO 8601',
        required => '0',
    },
    'limit' => {
        data_type => 'int',
        description => 'Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)',
        required => '0',
    },
    'include_id' => {
        data_type => 'boolean',
        description => 'Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'v1_trades_symbol_id_history_get' } = {
        summary => 'Historical data',
        params => $params,
        returns => 'ARRAY[V1Trade]',
        };
}
# @return ARRAY[V1Trade]
#
sub v1_trades_symbol_id_history_get {
    my ($self, %args) = @_;

    # verify the required parameter 'symbol_id' is set
    unless (exists $args{'symbol_id'}) {
      croak("Missing the required parameter 'symbol_id' when calling v1_trades_symbol_id_history_get");
    }

    # parse inputs
    my $_resource_path = '/v1/trades/{symbol_id}/history';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('text/plain', 'application/json', 'text/json', 'application/x-msgpack');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'date'}) {
        $query_params->{'date'} = $self->{api_client}->to_query_value($args{'date'});
    }

    # query params
    if ( exists $args{'time_start'}) {
        $query_params->{'time_start'} = $self->{api_client}->to_query_value($args{'time_start'});
    }

    # query params
    if ( exists $args{'time_end'}) {
        $query_params->{'time_end'} = $self->{api_client}->to_query_value($args{'time_end'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'include_id'}) {
        $query_params->{'include_id'} = $self->{api_client}->to_query_value($args{'include_id'});
    }

    # path params
    if ( exists $args{'symbol_id'}) {
        my $_base_variable = "{" . "symbol_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'symbol_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(APIKey JWT )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[V1Trade]', $response);
    return $_response_object;
}

#
# v1_trades_symbol_id_latest_get
#
# Latest data by symbol_id
#
# @param string $symbol_id Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) (required)
# @param int $limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional, default to 100)
# @param boolean $include_id Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. (optional, default to false)
{
    my $params = {
    'symbol_id' => {
        data_type => 'string',
        description => 'Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols)',
        required => '1',
    },
    'limit' => {
        data_type => 'int',
        description => 'Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)',
        required => '0',
    },
    'include_id' => {
        data_type => 'boolean',
        description => 'Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'v1_trades_symbol_id_latest_get' } = {
        summary => 'Latest data by symbol_id',
        params => $params,
        returns => 'ARRAY[V1Trade]',
        };
}
# @return ARRAY[V1Trade]
#
sub v1_trades_symbol_id_latest_get {
    my ($self, %args) = @_;

    # verify the required parameter 'symbol_id' is set
    unless (exists $args{'symbol_id'}) {
      croak("Missing the required parameter 'symbol_id' when calling v1_trades_symbol_id_latest_get");
    }

    # parse inputs
    my $_resource_path = '/v1/trades/{symbol_id}/latest';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('text/plain', 'application/json', 'text/json', 'application/x-msgpack');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'include_id'}) {
        $query_params->{'include_id'} = $self->{api_client}->to_query_value($args{'include_id'});
    }

    # path params
    if ( exists $args{'symbol_id'}) {
        my $_base_variable = "{" . "symbol_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'symbol_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(APIKey JWT )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[V1Trade]', $response);
    return $_response_object;
}

1;
