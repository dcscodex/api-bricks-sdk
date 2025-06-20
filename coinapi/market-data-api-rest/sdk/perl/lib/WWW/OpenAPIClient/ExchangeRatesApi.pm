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
package WWW::OpenAPIClient::ExchangeRatesApi;

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
# get_specific_rate
#
# Get specific rate
#
# @param string $asset_id_base Requested exchange rate base asset identifier (from the Metadata -&gt; Assets) (required)
# @param string $asset_id_quote Requested exchange rate quote asset identifier (from the Metadata -&gt; Assets) (required)
# @param string $time Time at which exchange rate is calculated (optional, if not supplied then current rate is returned) (optional)
{
    my $params = {
    'asset_id_base' => {
        data_type => 'string',
        description => 'Requested exchange rate base asset identifier (from the Metadata -&gt; Assets)',
        required => '1',
    },
    'asset_id_quote' => {
        data_type => 'string',
        description => 'Requested exchange rate quote asset identifier (from the Metadata -&gt; Assets)',
        required => '1',
    },
    'time' => {
        data_type => 'string',
        description => 'Time at which exchange rate is calculated (optional, if not supplied then current rate is returned)',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_specific_rate' } = {
        summary => 'Get specific rate',
        params => $params,
        returns => 'V1ExchangeRate',
        };
}
# @return V1ExchangeRate
#
sub get_specific_rate {
    my ($self, %args) = @_;

    # verify the required parameter 'asset_id_base' is set
    unless (exists $args{'asset_id_base'}) {
      croak("Missing the required parameter 'asset_id_base' when calling get_specific_rate");
    }

    # verify the required parameter 'asset_id_quote' is set
    unless (exists $args{'asset_id_quote'}) {
      croak("Missing the required parameter 'asset_id_quote' when calling get_specific_rate");
    }

    # parse inputs
    my $_resource_path = '/v1/exchangerate/{asset_id_base}/{asset_id_quote}';

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
    if ( exists $args{'time'}) {
        $query_params->{'time'} = $self->{api_client}->to_query_value($args{'time'});
    }

    # path params
    if ( exists $args{'asset_id_base'}) {
        my $_base_variable = "{" . "asset_id_base" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'asset_id_base'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'asset_id_quote'}) {
        my $_base_variable = "{" . "asset_id_quote" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'asset_id_quote'});
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
    my $_response_object = $self->{api_client}->deserialize('V1ExchangeRate', $response);
    return $_response_object;
}

#
# v1_exchangerate_asset_id_base_asset_id_quote_history_get
#
# Timeseries data
#
# @param string $asset_id_base Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) (required)
# @param string $asset_id_quote Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) (required)
# @param string $period_id Identifier of requested timeseries period (required, e.g. &#x60;5SEC&#x60; or &#x60;1HRS&#x60;) (optional)
# @param string $time_start Timeseries starting time in ISO 8601 (required) (optional)
# @param string $time_end Timeseries ending time in ISO 8601 (required) (optional)
# @param int $limit Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional, default to 100)
{
    my $params = {
    'asset_id_base' => {
        data_type => 'string',
        description => 'Requested exchange rates base asset identifier (from the Metadata -&gt; Assets)',
        required => '1',
    },
    'asset_id_quote' => {
        data_type => 'string',
        description => 'Requested exchange rates base asset identifier (from the Metadata -&gt; Assets)',
        required => '1',
    },
    'period_id' => {
        data_type => 'string',
        description => 'Identifier of requested timeseries period (required, e.g. &#x60;5SEC&#x60; or &#x60;1HRS&#x60;)',
        required => '0',
    },
    'time_start' => {
        data_type => 'string',
        description => 'Timeseries starting time in ISO 8601 (required)',
        required => '0',
    },
    'time_end' => {
        data_type => 'string',
        description => 'Timeseries ending time in ISO 8601 (required)',
        required => '0',
    },
    'limit' => {
        data_type => 'int',
        description => 'Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'v1_exchangerate_asset_id_base_asset_id_quote_history_get' } = {
        summary => 'Timeseries data',
        params => $params,
        returns => 'ARRAY[V1ExchangeRatesTimeseriesItem]',
        };
}
# @return ARRAY[V1ExchangeRatesTimeseriesItem]
#
sub v1_exchangerate_asset_id_base_asset_id_quote_history_get {
    my ($self, %args) = @_;

    # verify the required parameter 'asset_id_base' is set
    unless (exists $args{'asset_id_base'}) {
      croak("Missing the required parameter 'asset_id_base' when calling v1_exchangerate_asset_id_base_asset_id_quote_history_get");
    }

    # verify the required parameter 'asset_id_quote' is set
    unless (exists $args{'asset_id_quote'}) {
      croak("Missing the required parameter 'asset_id_quote' when calling v1_exchangerate_asset_id_base_asset_id_quote_history_get");
    }

    # parse inputs
    my $_resource_path = '/v1/exchangerate/{asset_id_base}/{asset_id_quote}/history';

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
    if ( exists $args{'period_id'}) {
        $query_params->{'period_id'} = $self->{api_client}->to_query_value($args{'period_id'});
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

    # path params
    if ( exists $args{'asset_id_base'}) {
        my $_base_variable = "{" . "asset_id_base" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'asset_id_base'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'asset_id_quote'}) {
        my $_base_variable = "{" . "asset_id_quote" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'asset_id_quote'});
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[V1ExchangeRatesTimeseriesItem]', $response);
    return $_response_object;
}

#
# v1_exchangerate_asset_id_base_get
#
# Get all current rates
#
# @param string $asset_id_base Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) (required)
# @param string $filter_asset_id Comma or semicolon delimited asset identifiers used to filter response (optional) (optional)
# @param boolean $invert True will invert all the rates (optional, if true then rates will be calculated as &#x60;rate &#x3D; 1 / actual_rate&#x60; eg. &#x60;USD/BTC&#x60; as &#x60;BTC/USD&#x60;) (optional, default to false)
# @param string $time Time for historical rates (optional) (optional)
{
    my $params = {
    'asset_id_base' => {
        data_type => 'string',
        description => 'Requested exchange rates base asset identifier (from the Metadata -&gt; Assets)',
        required => '1',
    },
    'filter_asset_id' => {
        data_type => 'string',
        description => 'Comma or semicolon delimited asset identifiers used to filter response (optional)',
        required => '0',
    },
    'invert' => {
        data_type => 'boolean',
        description => 'True will invert all the rates (optional, if true then rates will be calculated as &#x60;rate &#x3D; 1 / actual_rate&#x60; eg. &#x60;USD/BTC&#x60; as &#x60;BTC/USD&#x60;)',
        required => '0',
    },
    'time' => {
        data_type => 'string',
        description => 'Time for historical rates (optional)',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'v1_exchangerate_asset_id_base_get' } = {
        summary => 'Get all current rates',
        params => $params,
        returns => 'V1ExchangeRates',
        };
}
# @return V1ExchangeRates
#
sub v1_exchangerate_asset_id_base_get {
    my ($self, %args) = @_;

    # verify the required parameter 'asset_id_base' is set
    unless (exists $args{'asset_id_base'}) {
      croak("Missing the required parameter 'asset_id_base' when calling v1_exchangerate_asset_id_base_get");
    }

    # parse inputs
    my $_resource_path = '/v1/exchangerate/{asset_id_base}';

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
    if ( exists $args{'filter_asset_id'}) {
        $query_params->{'filter_asset_id'} = $self->{api_client}->to_query_value($args{'filter_asset_id'});
    }

    # query params
    if ( exists $args{'invert'}) {
        $query_params->{'invert'} = $self->{api_client}->to_query_value($args{'invert'});
    }

    # query params
    if ( exists $args{'time'}) {
        $query_params->{'time'} = $self->{api_client}->to_query_value($args{'time'});
    }

    # path params
    if ( exists $args{'asset_id_base'}) {
        my $_base_variable = "{" . "asset_id_base" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'asset_id_base'});
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
    my $_response_object = $self->{api_client}->deserialize('V1ExchangeRates', $response);
    return $_response_object;
}

#
# v1_exchangerate_history_periods_get
#
# Timeseries periods
#
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'v1_exchangerate_history_periods_get' } = {
        summary => 'Timeseries periods',
        params => $params,
        returns => 'ARRAY[V1TimeseriesPeriod]',
        };
}
# @return ARRAY[V1TimeseriesPeriod]
#
sub v1_exchangerate_history_periods_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/v1/exchangerate/history/periods';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[V1TimeseriesPeriod]', $response);
    return $_response_object;
}

1;
