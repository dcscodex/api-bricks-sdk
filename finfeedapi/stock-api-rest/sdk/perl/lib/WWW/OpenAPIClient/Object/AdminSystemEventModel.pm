=begin comment

FinFeedAPI Stock REST API

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
package WWW::OpenAPIClient::Object::AdminSystemEventModel;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;


use base ("Class::Accessor", "Class::Data::Inheritable");

#
#Represents the response DTO for system event information
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

FinFeedAPI Stock REST API

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
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('openapi_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {});
__PACKAGE__->mk_classdata('class_documentation' => {});

# new plain object
sub new {
    my ($class, %args) = @_;

    my $self = bless {}, $class;

    $self->init(%args);

    return $self;
}

# initialize the object
sub init
{
    my ($self, %args) = @_;

    foreach my $attribute (keys %{$self->attribute_map}) {
        my $args_key = $self->attribute_map->{$attribute};
        $self->$attribute( $args{ $args_key } );
    }
}

# return perl hash
sub to_hash {
    my $self = shift;
    my $_hash = decode_json(JSON->new->convert_blessed->encode($self));

    return $_hash;
}

# used by JSON for serialization
sub TO_JSON {
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            my $_json_attribute = $self->attribute_map->{$_key};
            my $_type = $self->openapi_types->{$_key};
            my $_value = $self->{$_key};
            if ($_type =~ /^array\[(.+)\]$/i) { # array
                my $_subclass = $1;
                $_data->{$_json_attribute} =  [ map { $self->_to_json_primitives($_subclass, $_) } @$_value ];
            } elsif ($_type =~ /^hash\[string,(.+)\]$/i) { # hash
                my $_subclass = $1;
                my %_hash = ();
                while (my($_key, $_element) = each %{$_value}) {
                    $_hash{$_key} = $self->_to_json_primitives($_subclass, $_element);
                }
                $_data->{$_json_attribute} = \%_hash;
            } elsif ( grep( /^$_type$/, ('int', 'double', 'string', 'boolean', 'DATE', 'DATE_TIME'))) {
                $_data->{$_json_attribute} = $self->_to_json_primitives($_type, $_value);
            } else {
                $_data->{$_json_attribute} = $_value;
            }
        }
    }

    return $_data;
}

# to_json non-array data
sub _to_json_primitives {
    my ($self, $type, $data) = @_;
    if ( grep( /^$type$/, ('int', 'double'))) {
        # https://metacpan.org/pod/JSON#simple-scalars
        # numify it, ensuring it will be dumped as a number
        return undef unless defined $data;
        return $data + 0;
    } elsif ($type eq 'string') {
        # https://metacpan.org/pod/JSON#simple-scalars
        # stringified
        return undef unless defined $data;
        return $data . q();
    } elsif ($type eq 'boolean') {
        # https://metacpan.org/pod/JSON#JSON::true,-JSON::false,-JSON::null
        return $data ? \1 : \0;
    } elsif ($type eq 'DATE') {
        return undef unless defined $data;
        if (ref($data) eq 'DateTime') {
            # https://metacpan.org/pod/DateTime#$dt-%3Eymd($optional_separator),-$dt-%3Emdy(...),-$dt-%3Edmy(...)
            return $data->ymd;
        }
        return $data .q();
    } elsif ($type eq 'DATE_TIME') {
        return undef unless defined $data;
        # the date-time notation as defined by RFC 3339, section 5.6, for example, 2017-07-21T17:32:28Z
        if (ref($data) eq 'DateTime') {
            # https://metacpan.org/pod/DateTime#$dt-%3Erfc3339
            return $data->rfc3339;
        }
        return $data .q();
    } else { # hash (model),  In this case, the TO_JSON of the $data object is executed
        return $data;
    }
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use openapi_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->openapi_types} ) {
        my $_json_attribute = $self->attribute_map->{$_key};
        if ($_type =~ /^array\[(.+)\]$/i) { # array
            my $_subclass = $1;
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif ($_type =~ /^hash\[string,(.+)\]$/i) { # hash
            my $_subclass = $1;
            my %_hash = ();
            while (my($_key, $_element) = each %{$hash->{$_json_attribute}}) {
                $_hash{$_key} = $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \%_hash;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
            $log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }

    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);

    if (grep( /^$type$/ , ('DATE_TIME', 'DATE'))) {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double'))) {
        return undef unless defined $data;
        return $data + 0;
    } elsif ($type eq 'string') {
        return undef unless defined $data;
        return $data . q();
    } elsif ($type eq 'boolean') {
        return !!$data;
    } else { # hash(model)
        my $_instance = eval "WWW::OpenAPIClient::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}


__PACKAGE__->class_documentation({description => 'Represents the response DTO for system event information',
                                  class => 'AdminSystemEventModel',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'timestamp_nanos' => {
        datatype => 'int',
        base_name => 'timestamp_nanos',
        description => 'Original timestamp in nanoseconds since epoch',
        format => '',
        read_only => '',
            },
    'timestamp' => {
        datatype => 'DATE_TIME',
        base_name => 'timestamp',
        description => 'Time when the system event was recorded as DateTime',
        format => '',
        read_only => '',
            },
    'system_event' => {
        datatype => 'int',
        base_name => 'system_event',
        description => 'System event as byte value',
        format => '',
        read_only => '',
            },
    'system_event_code' => {
        datatype => 'string',
        base_name => 'system_event_code',
        description => 'System event as string',
        format => '',
        read_only => '',
            },
    'system_event_text' => {
        datatype => 'string',
        base_name => 'system_event_text',
        description => 'Human-readable description of the system event',
        format => '',
        read_only => '',
            },
    'is_system_event_start_of_messages' => {
        datatype => 'boolean',
        base_name => 'is_system_event_start_of_messages',
        description => 'Indicates if the system event is &#39;Start of Messages&#39; (O). Outside of heartbeat messages on the lower level protocol,  the start of day message is the first message sent in any trading session.',
        format => '',
        read_only => '',
            },
    'is_system_event_start_of_system_hours' => {
        datatype => 'boolean',
        base_name => 'is_system_event_start_of_system_hours',
        description => 'Indicates if the system event is &#39;Start of System Hours&#39; (S). This message indicates that IEX is open and ready to start accepting orders.',
        format => '',
        read_only => '',
            },
    'is_system_event_start_of_regular_market_hours' => {
        datatype => 'boolean',
        base_name => 'is_system_event_start_of_regular_market_hours',
        description => 'Indicates if the system event is &#39;Start of Regular Market Hours&#39; (R). This message indicates that DAY and GTX orders, as well as market orders and pegged orders,  are available for execution on IEX.',
        format => '',
        read_only => '',
            },
    'is_system_event_end_of_regular_market_hours' => {
        datatype => 'boolean',
        base_name => 'is_system_event_end_of_regular_market_hours',
        description => 'Indicates if the system event is &#39;End of Regular Market Hours&#39; (M). This message indicates that DAY orders, market orders, and pegged orders  are no longer accepted by IEX.',
        format => '',
        read_only => '',
            },
    'is_system_event_end_of_system_hours' => {
        datatype => 'boolean',
        base_name => 'is_system_event_end_of_system_hours',
        description => 'Indicates if the system event is &#39;End of System Hours&#39; (E). This message indicates that IEX is now closed and will not accept  any new orders during this trading session. It is still possible  to receive messages after the end of day.',
        format => '',
        read_only => '',
            },
    'is_system_event_end_of_messages' => {
        datatype => 'boolean',
        base_name => 'is_system_event_end_of_messages',
        description => 'Indicates if the system event is &#39;End of Messages&#39; (C). This is always the last message sent in any trading session.',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'timestamp_nanos' => 'int',
    'timestamp' => 'DATE_TIME',
    'system_event' => 'int',
    'system_event_code' => 'string',
    'system_event_text' => 'string',
    'is_system_event_start_of_messages' => 'boolean',
    'is_system_event_start_of_system_hours' => 'boolean',
    'is_system_event_start_of_regular_market_hours' => 'boolean',
    'is_system_event_end_of_regular_market_hours' => 'boolean',
    'is_system_event_end_of_system_hours' => 'boolean',
    'is_system_event_end_of_messages' => 'boolean'
} );

__PACKAGE__->attribute_map( {
    'timestamp_nanos' => 'timestamp_nanos',
    'timestamp' => 'timestamp',
    'system_event' => 'system_event',
    'system_event_code' => 'system_event_code',
    'system_event_text' => 'system_event_text',
    'is_system_event_start_of_messages' => 'is_system_event_start_of_messages',
    'is_system_event_start_of_system_hours' => 'is_system_event_start_of_system_hours',
    'is_system_event_start_of_regular_market_hours' => 'is_system_event_start_of_regular_market_hours',
    'is_system_event_end_of_regular_market_hours' => 'is_system_event_end_of_regular_market_hours',
    'is_system_event_end_of_system_hours' => 'is_system_event_end_of_system_hours',
    'is_system_event_end_of_messages' => 'is_system_event_end_of_messages'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
