#!/usr/bin/env bash

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !
# ! Note:
# !
# ! THIS SCRIPT HAS BEEN AUTOMATICALLY GENERATED USING
# ! openapi-generator (https://openapi-generator.tech)
# ! FROM OPENAPI SPECIFICATION IN JSON.
# !
# ! Generator version: 7.13.0
# !
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

#
# This is a Bash client for Indexes REST API.
#
# LICENSE:
# https://github.com/coinapi/coinapi-sdk/blob/master/LICENSE
#
# CONTACT:
# support@apibricks.io
#
# MORE INFORMATION:
# 
#

# For improved pattern matching in case statements
shopt -s extglob

###############################################################################
#
# Make sure Bash is at least in version 4.3
#
###############################################################################
if ! ( (("${BASH_VERSION:0:1}" == "4")) && (("${BASH_VERSION:2:1}" >= "3")) ) \
  && ! (("${BASH_VERSION:0:1}" >= "5")); then
    echo ""
    echo "Sorry - your Bash version is ${BASH_VERSION}"
    echo ""
    echo "You need at least Bash 4.3 to run this script."
    echo ""
    exit 1
fi

###############################################################################
#
# Global variables
#
###############################################################################

##
# The filename of this script for help messages
script_name=$(basename "$0")

##
# Map for headers passed after operation as KEY:VALUE
declare -A header_arguments


##
# Map for operation parameters passed after operation as PARAMETER=VALUE
# These will be mapped to appropriate path or query parameters
# The values in operation_parameters are arrays, so that multiple values
# can be provided for the same parameter if allowed by API specification
declare -A operation_parameters

##
# Declare colors with autodetection if output is terminal
if [ -t 1 ]; then
    RED="$(tput setaf 1)"
    GREEN="$(tput setaf 2)"
    YELLOW="$(tput setaf 3)"
    BLUE="$(tput setaf 4)"
    MAGENTA="$(tput setaf 5)"
    CYAN="$(tput setaf 6)"
    WHITE="$(tput setaf 7)"
    BOLD="$(tput bold)"
    OFF="$(tput sgr0)"
else
    RED=""
    GREEN=""
    YELLOW=""
    BLUE=""
    MAGENTA=""
    CYAN=""
    WHITE=""
    BOLD=""
    OFF=""
fi

declare -a result_color_table=( "$WHITE" "$WHITE" "$GREEN" "$YELLOW" "$WHITE" "$MAGENTA" "$WHITE" )

##
# This array stores the minimum number of required occurrences for parameter
# 0 - optional
# 1 - required
declare -A operation_parameters_minimum_occurrences
operation_parameters_minimum_occurrences["v1IndexdefInputDataIndexDefinitionIdAllGet:::index_definition_id"]=1
operation_parameters_minimum_occurrences["v1IndexdefInputDataIndexDefinitionIdGet:::index_definition_id"]=1
operation_parameters_minimum_occurrences["v1IndexdefInputDataIndexDefinitionIdGet:::time"]=0
operation_parameters_minimum_occurrences["v1IndexdefInputDataIndexDefinitionIdGet:::enabled_only"]=0
operation_parameters_minimum_occurrences["v1IndexdefInputDataIndexDefinitionIdGet:::pending_only"]=0
operation_parameters_minimum_occurrences["v1IndexdefInputDataIndexDefinitionIdGet:::filter_asset_id"]=0
operation_parameters_minimum_occurrences["v1IndexdefInputDataIndexDefinitionIdGet:::with_status_info"]=0
operation_parameters_minimum_occurrences["v1IndexdefMultiassetIndexIdGet:::index_id"]=1
operation_parameters_minimum_occurrences["v1IndexesIndexDefinitionIdCurrentSnapshotGet:::index_definition_id"]=1
operation_parameters_minimum_occurrences["v1IndexesIndexDefinitionIdHistorySnapshotGet:::index_definition_id"]=1
operation_parameters_minimum_occurrences["v1IndexesIndexDefinitionIdHistorySnapshotGet:::time"]=0
operation_parameters_minimum_occurrences["v1IndexesIndexIdCurrentGet:::index_id"]=1
operation_parameters_minimum_occurrences["v1IndexesIndexIdHistoryGet:::index_id"]=1
operation_parameters_minimum_occurrences["v1IndexesIndexIdHistoryGet:::time_start"]=0
operation_parameters_minimum_occurrences["v1IndexesIndexIdHistoryGet:::time_end"]=0
operation_parameters_minimum_occurrences["v1IndexesIndexIdHistoryGet:::limit"]=0
operation_parameters_minimum_occurrences["v1IndexesIndexIdTimeseriesGet:::index_id"]=1
operation_parameters_minimum_occurrences["v1IndexesIndexIdTimeseriesGet:::period_id"]=1
operation_parameters_minimum_occurrences["v1IndexesIndexIdTimeseriesGet:::time_start"]=1
operation_parameters_minimum_occurrences["v1IndexesIndexIdTimeseriesGet:::time_end"]=1
operation_parameters_minimum_occurrences["v1IndexesIndexIdTimeseriesGet:::limit"]=0
operation_parameters_minimum_occurrences["apiMetadataExchangesExchangeIdGet:::exchange_id"]=1
operation_parameters_minimum_occurrences["apiMetadataExchangesGet:::filter_exchange_id"]=0

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["v1IndexdefInputDataIndexDefinitionIdAllGet:::index_definition_id"]=0
operation_parameters_maximum_occurrences["v1IndexdefInputDataIndexDefinitionIdGet:::index_definition_id"]=0
operation_parameters_maximum_occurrences["v1IndexdefInputDataIndexDefinitionIdGet:::time"]=0
operation_parameters_maximum_occurrences["v1IndexdefInputDataIndexDefinitionIdGet:::enabled_only"]=0
operation_parameters_maximum_occurrences["v1IndexdefInputDataIndexDefinitionIdGet:::pending_only"]=0
operation_parameters_maximum_occurrences["v1IndexdefInputDataIndexDefinitionIdGet:::filter_asset_id"]=0
operation_parameters_maximum_occurrences["v1IndexdefInputDataIndexDefinitionIdGet:::with_status_info"]=0
operation_parameters_maximum_occurrences["v1IndexdefMultiassetIndexIdGet:::index_id"]=0
operation_parameters_maximum_occurrences["v1IndexesIndexDefinitionIdCurrentSnapshotGet:::index_definition_id"]=0
operation_parameters_maximum_occurrences["v1IndexesIndexDefinitionIdHistorySnapshotGet:::index_definition_id"]=0
operation_parameters_maximum_occurrences["v1IndexesIndexDefinitionIdHistorySnapshotGet:::time"]=0
operation_parameters_maximum_occurrences["v1IndexesIndexIdCurrentGet:::index_id"]=0
operation_parameters_maximum_occurrences["v1IndexesIndexIdHistoryGet:::index_id"]=0
operation_parameters_maximum_occurrences["v1IndexesIndexIdHistoryGet:::time_start"]=0
operation_parameters_maximum_occurrences["v1IndexesIndexIdHistoryGet:::time_end"]=0
operation_parameters_maximum_occurrences["v1IndexesIndexIdHistoryGet:::limit"]=0
operation_parameters_maximum_occurrences["v1IndexesIndexIdTimeseriesGet:::index_id"]=0
operation_parameters_maximum_occurrences["v1IndexesIndexIdTimeseriesGet:::period_id"]=0
operation_parameters_maximum_occurrences["v1IndexesIndexIdTimeseriesGet:::time_start"]=0
operation_parameters_maximum_occurrences["v1IndexesIndexIdTimeseriesGet:::time_end"]=0
operation_parameters_maximum_occurrences["v1IndexesIndexIdTimeseriesGet:::limit"]=0
operation_parameters_maximum_occurrences["apiMetadataExchangesExchangeIdGet:::exchange_id"]=0
operation_parameters_maximum_occurrences["apiMetadataExchangesGet:::filter_exchange_id"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["v1IndexdefInputDataIndexDefinitionIdAllGet:::index_definition_id"]=""
operation_parameters_collection_type["v1IndexdefInputDataIndexDefinitionIdGet:::index_definition_id"]=""
operation_parameters_collection_type["v1IndexdefInputDataIndexDefinitionIdGet:::time"]=""
operation_parameters_collection_type["v1IndexdefInputDataIndexDefinitionIdGet:::enabled_only"]=""
operation_parameters_collection_type["v1IndexdefInputDataIndexDefinitionIdGet:::pending_only"]=""
operation_parameters_collection_type["v1IndexdefInputDataIndexDefinitionIdGet:::filter_asset_id"]=""
operation_parameters_collection_type["v1IndexdefInputDataIndexDefinitionIdGet:::with_status_info"]=""
operation_parameters_collection_type["v1IndexdefMultiassetIndexIdGet:::index_id"]=""
operation_parameters_collection_type["v1IndexesIndexDefinitionIdCurrentSnapshotGet:::index_definition_id"]=""
operation_parameters_collection_type["v1IndexesIndexDefinitionIdHistorySnapshotGet:::index_definition_id"]=""
operation_parameters_collection_type["v1IndexesIndexDefinitionIdHistorySnapshotGet:::time"]=""
operation_parameters_collection_type["v1IndexesIndexIdCurrentGet:::index_id"]=""
operation_parameters_collection_type["v1IndexesIndexIdHistoryGet:::index_id"]=""
operation_parameters_collection_type["v1IndexesIndexIdHistoryGet:::time_start"]=""
operation_parameters_collection_type["v1IndexesIndexIdHistoryGet:::time_end"]=""
operation_parameters_collection_type["v1IndexesIndexIdHistoryGet:::limit"]=""
operation_parameters_collection_type["v1IndexesIndexIdTimeseriesGet:::index_id"]=""
operation_parameters_collection_type["v1IndexesIndexIdTimeseriesGet:::period_id"]=""
operation_parameters_collection_type["v1IndexesIndexIdTimeseriesGet:::time_start"]=""
operation_parameters_collection_type["v1IndexesIndexIdTimeseriesGet:::time_end"]=""
operation_parameters_collection_type["v1IndexesIndexIdTimeseriesGet:::limit"]=""
operation_parameters_collection_type["apiMetadataExchangesExchangeIdGet:::exchange_id"]=""
operation_parameters_collection_type["apiMetadataExchangesGet:::filter_exchange_id"]=""


##
# Map for body parameters passed after operation as
# PARAMETER==STRING_VALUE or PARAMETER:=NUMERIC_VALUE
# These will be mapped to top level json keys ( { "PARAMETER": "VALUE" })
declare -A body_parameters

##
# These arguments will be directly passed to cURL
curl_arguments=""

##
# The host for making the request
host=""

##
# The user credentials for basic authentication
basic_auth_credential=""

##
# The user API key
apikey_auth_credential=""

##
# If true, the script will only output the actual cURL command that would be
# used
print_curl=false

##
# The operation ID passed on the command line
operation=""

##
# The provided Accept header value
header_accept=""

##
# The provided Content-type header value
header_content_type=""

##
# If there is any body content on the stdin pass it to the body of the request
body_content_temp_file=""

##
# If this variable is set to true, the request will be performed even
# if parameters for required query, header or body values are not provided
# (path parameters are still required).
force=false

##
# Declare some mime types abbreviations for easier content-type and accepts
# headers specification
declare -A mime_type_abbreviations
# text/*
mime_type_abbreviations["text"]="text/plain"
mime_type_abbreviations["html"]="text/html"
mime_type_abbreviations["md"]="text/x-markdown"
mime_type_abbreviations["csv"]="text/csv"
mime_type_abbreviations["css"]="text/css"
mime_type_abbreviations["rtf"]="text/rtf"
# application/*
mime_type_abbreviations["json"]="application/json"
mime_type_abbreviations["xml"]="application/xml"
mime_type_abbreviations["yaml"]="application/yaml"
mime_type_abbreviations["js"]="application/javascript"
mime_type_abbreviations["bin"]="application/octet-stream"
mime_type_abbreviations["rdf"]="application/rdf+xml"
# image/*
mime_type_abbreviations["jpg"]="image/jpeg"
mime_type_abbreviations["png"]="image/png"
mime_type_abbreviations["gif"]="image/gif"
mime_type_abbreviations["bmp"]="image/bmp"
mime_type_abbreviations["tiff"]="image/tiff"


##############################################################################
#
# Escape special URL characters
# Based on table at http://www.w3schools.com/tags/ref_urlencode.asp
#
##############################################################################
url_escape() {
    local raw_url="$1"

    value=$(sed -e 's/ /%20/g' \
       -e 's/!/%21/g' \
       -e 's/"/%22/g' \
       -e 's/#/%23/g' \
       -e 's/\&/%26/g' \
       -e 's/'\''/%28/g' \
       -e 's/(/%28/g' \
       -e 's/)/%29/g' \
       -e 's/:/%3A/g' \
       -e 's/\\t/%09/g' \
       -e 's/?/%3F/g' <<<"$raw_url");

    echo "$value"
}

##############################################################################
#
# Lookup the mime type abbreviation in the mime_type_abbreviations array.
# If not present assume the user provided a valid mime type
#
##############################################################################
lookup_mime_type() {
    local mime_type="$1"

    if [[ ${mime_type_abbreviations[$mime_type]} ]]; then
        echo "${mime_type_abbreviations[$mime_type]}"
    else
        echo "$mime_type"
    fi
}

##############################################################################
#
# Converts an associative array into a list of cURL header
# arguments (-H "KEY: VALUE")
#
##############################################################################
header_arguments_to_curl() {
    local headers_curl=""
    local api_key_header=""
    local api_key_header_in_cli=""
    api_key_header="X-CoinAPI-Key"

    for key in "${!header_arguments[@]}"; do
        headers_curl+="-H \"${key}: ${header_arguments[${key}]}\" "
        if [[ "${key}XX" == "${api_key_header}XX" ]]; then
            api_key_header_in_cli="YES"
        fi
    done
    #
    # If the api_key was not provided in the header, try one from the
    # environment variable
    #
    if [[ -z $api_key_header_in_cli && -n $apikey_auth_credential ]]; then
        headers_curl+="-H \"${api_key_header}: ${apikey_auth_credential}\""
    fi
    headers_curl+=" "

    echo "${headers_curl}"
}

##############################################################################
#
# Converts an associative array into a simple JSON with keys as top
# level object attributes
#
# \todo Add conversion of more complex attributes using paths
#
##############################################################################
body_parameters_to_json() {
    if [[ $RAW_BODY == "1" ]]; then
        echo "-d '${body_parameters["RAW_BODY"]}'"
    else
        local body_json="-d '{"
        local count=0
        for key in "${!body_parameters[@]}"; do
            if [[ $((count++)) -gt 0 ]]; then
                body_json+=", "
            fi
            body_json+="\"${key}\": ${body_parameters[${key}]}"
        done
        body_json+="}'"

        if [[ "${#body_parameters[@]}" -eq 0 ]]; then
            echo ""
        else
            echo "${body_json}"
        fi
    fi
}

##############################################################################
#
# Converts an associative array into form urlencoded string
#
##############################################################################
body_parameters_to_form_urlencoded() {
    local body_form_urlencoded="-d '"
    local count=0
    for key in "${!body_parameters[@]}"; do
        if [[ $((count++)) -gt 0 ]]; then
            body_form_urlencoded+="&"
        fi
        body_form_urlencoded+="${key}=${body_parameters[${key}]}"
    done
    body_form_urlencoded+="'"

    if [[ "${#body_parameters[@]}" -eq 0 ]]; then
        echo ""
    else
        echo "${body_form_urlencoded}"
    fi
}

##############################################################################
#
# Helper method for showing error because for example echo in
# build_request_path() is evaluated as part of command line not printed on
# output. Anyway better idea for resource clean up ;-).
#
##############################################################################
ERROR_MSG=""
function finish {
    if [[ -n "$ERROR_MSG" ]]; then
        echo >&2 "${OFF}${RED}$ERROR_MSG"
        echo >&2 "${OFF}Check usage: '${script_name} --help'"
    fi
}
trap finish EXIT


##############################################################################
#
# Validate and build request path including query parameters
#
##############################################################################
build_request_path() {
    local path_template=$1
    local -n path_params=$2
    local -n query_params=$3


    #
    # Check input parameters count against minimum and maximum required
    #
    if [[ "$force" = false ]]; then
        local was_error=""
        for qparam in "${query_params[@]}" "${path_params[@]}"; do
            local parameter_values
            mapfile -t parameter_values < <(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}")

            #
            # Check if the number of provided values is not less than minimum required
            #
            if [[ ${#parameter_values[@]} -lt ${operation_parameters_minimum_occurrences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too few values provided for '${qparam}' parameter."
                was_error=true
            fi

            #
            # Check if the number of provided values is not more than maximum
            #
            if [[ ${operation_parameters_maximum_occurrences["${operation}:::${qparam}"]} -gt 0 \
                  && ${#parameter_values[@]} -gt ${operation_parameters_maximum_occurrences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too many values provided for '${qparam}' parameter"
                was_error=true
            fi
        done
        if [[ -n "$was_error" ]]; then
            exit 1
        fi
    fi

    # First replace all path parameters in the path
    for pparam in "${path_params[@]}"; do
        local path_regex="(.*)(\\{$pparam\\})(.*)"
        if [[ $path_template =~ $path_regex ]]; then
            path_template=${BASH_REMATCH[1]}${operation_parameters[$pparam]}${BASH_REMATCH[3]}
        fi
    done

    local query_request_part=""

    for qparam in "${query_params[@]}"; do
        if [[ "${operation_parameters[$qparam]}" == "" ]]; then
            continue
        fi

        # Get the array of parameter values
        local parameter_value=""
        local parameter_values
        mapfile -t parameter_values < <(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}")



        #
        # Append parameters without specific cardinality
        #
        local collection_type="${operation_parameters_collection_type["${operation}:::${qparam}"]}"
        if [[ "${collection_type}" == "" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'multi' collections i.e. param=value1&param=value2&...
        #
        elif [[ "${collection_type}" == "multi" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'csv' collections i.e. param=value1,value2,...
        #
        elif [[ "${collection_type}" == "csv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=","
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'ssv' collections i.e. param="value1 value2 ..."
        #
        elif [[ "${collection_type}" == "ssv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=" "
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'tsv' collections i.e. param="value1\tvalue2\t..."
        #
        elif [[ "${collection_type}" == "tsv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="\\t"
                fi
                parameter_value+="${qvalue}"
            done
        else
            echo "Unsupported collection format \"${collection_type}\""
            exit 1
        fi

        if [[ -n "${parameter_value}" ]]; then
            if [[ -n "${query_request_part}" ]]; then
                query_request_part+="&"
            fi
            query_request_part+="${parameter_value}"
        fi

    done


    # Now append query parameters - if any
    if [[ -n "${query_request_part}" ]]; then
        path_template+="?${query_request_part}"
    fi

    echo "$path_template"
}



###############################################################################
#
# Print main help message
#
###############################################################################
print_help() {
cat <<EOF

${BOLD}${WHITE}Indexes REST API command line client (API version v1)${OFF}

${BOLD}${WHITE}Usage${OFF}

  ${GREEN}${script_name}${OFF} [-h|--help] [-V|--version] [--about] [${RED}<curl-options>${OFF}]
           [-ac|--accept ${GREEN}<mime-type>${OFF}] [-ct,--content-type ${GREEN}<mime-type>${OFF}]
           [--host ${CYAN}<url>${OFF}] [--dry-run] [-nc|--no-colors] ${YELLOW}<operation>${OFF} [-h|--help]
           [${BLUE}<headers>${OFF}] [${MAGENTA}<parameters>${OFF}] [${MAGENTA}<body-parameters>${OFF}]

  - ${CYAN}<url>${OFF} - endpoint of the REST service without basepath

  - ${RED}<curl-options>${OFF} - any valid cURL options can be passed before ${YELLOW}<operation>${OFF}
  - ${GREEN}<mime-type>${OFF} - either full mime-type or one of supported abbreviations:
                   (text, html, md, csv, css, rtf, json, xml, yaml, js, bin,
                    rdf, jpg, png, gif, bmp, tiff)
  - ${BLUE}<headers>${OFF} - HTTP headers can be passed in the form ${YELLOW}HEADER${OFF}:${BLUE}VALUE${OFF}
  - ${MAGENTA}<parameters>${OFF} - REST operation parameters can be passed in the following
                   forms:
                   * ${YELLOW}KEY${OFF}=${BLUE}VALUE${OFF} - path or query parameters
  - ${MAGENTA}<body-parameters>${OFF} - simple JSON body content (first level only) can be build
                        using the following arguments:
                        * ${YELLOW}KEY${OFF}==${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": "${BLUE}VALUE${OFF}", ... }'
                        * ${YELLOW}KEY${OFF}:=${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": ${BLUE}VALUE${OFF}, ... }'

EOF
    echo -e "${BOLD}${WHITE}Authentication methods${OFF}"
    echo -e ""
    echo -e "  - ${BLUE}Api-key${OFF} - add '${RED}X-CoinAPI-Key:<api-key>${OFF}' after ${YELLOW}<operation>${OFF}"
    
    echo ""
    echo -e "${BOLD}${WHITE}Operations (grouped by tags)${OFF}"
    echo ""
    echo -e "${BOLD}${WHITE}[indexes]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1IndexdefInputDataIndexDefinitionIdAllGet${OFF};Returns all data inputs for a specific index definition (AUTH)
  ${CYAN}v1IndexdefInputDataIndexDefinitionIdGet${OFF};Returns data inputs for certain index definition and time (AUTH)
  ${CYAN}v1IndexdefMultiassetGet${OFF};Get all multi-asset weights (AUTH)
  ${CYAN}v1IndexdefMultiassetIndexIdGet${OFF};Get multi-asset weights for specific index (AUTH)
  ${CYAN}v1IndexesGet${OFF};List indexes (AUTH)
  ${CYAN}v1IndexesIndexDefinitionIdCurrentSnapshotGet${OFF};Current Index Values for index definition (AUTH)
  ${CYAN}v1IndexesIndexDefinitionIdHistorySnapshotGet${OFF};Historical Index Values for index definition (AUTH)
  ${CYAN}v1IndexesIndexIdCurrentGet${OFF};Current Index Value (AUTH)
  ${CYAN}v1IndexesIndexIdHistoryGet${OFF};Historical Index Value w/Composition (AUTH)
  ${CYAN}v1IndexesIndexIdTimeseriesGet${OFF};Timeseries Index Value (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[metadata]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiMetadataExchangesExchangeIdGet${OFF};List all exchanges by exchange_id (AUTH)
  ${CYAN}apiMetadataExchangesGet${OFF};List all exchanges (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[periods]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1MetadataPeriodsGet${OFF};List all periods (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}Options${OFF}"
    echo -e "  -h,--help\\t\\t\\t\\tPrint this help"
    echo -e "  -V,--version\\t\\t\\t\\tPrint API version"
    echo -e "  --about\\t\\t\\t\\tPrint the information about service"
    echo -e "  --host ${CYAN}<url>${OFF}\\t\\t\\t\\tSpecify the host URL "
echo -e "              \\t\\t\\t\\t(e.g. 'https://rest-api.indexes.coinapi.io')"

    echo -e "  --force\\t\\t\\t\\tForce command invocation in spite of missing"
    echo -e "         \\t\\t\\t\\trequired parameters or wrong content type"
    echo -e "  --dry-run\\t\\t\\t\\tPrint out the cURL command without"
    echo -e "           \\t\\t\\t\\texecuting it"
    echo -e "  -nc,--no-colors\\t\\t\\tEnforce print without colors, otherwise autodetected"
    echo -e "  -ac,--accept ${YELLOW}<mime-type>${OFF}\\t\\tSet the 'Accept' header in the request"
    echo -e "  -ct,--content-type ${YELLOW}<mime-type>${OFF}\\tSet the 'Content-type' header in "
    echo -e "                                \\tthe request"
    echo ""
}


##############################################################################
#
# Print REST service description
#
##############################################################################
print_about() {
    echo ""
    echo -e "${BOLD}${WHITE}Indexes REST API command line client (API version v1)${OFF}"
    echo ""
    echo -e "License: MIT License"
    echo -e "Contact: support@apibricks.io"
    echo ""
read -r -d '' appdescription <<EOF

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
EOF
echo "$appdescription" | paste -sd' ' | fold -sw 80
}


##############################################################################
#
# Print REST api version
#
##############################################################################
print_version() {
    echo ""
    echo -e "${BOLD}Indexes REST API command line client (API version v1)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for v1IndexdefInputDataIndexDefinitionIdAllGet operation
#
##############################################################################
print_v1IndexdefInputDataIndexDefinitionIdAllGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1IndexdefInputDataIndexDefinitionIdAllGet - Returns all data inputs for a specific index definition${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}index_definition_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: index_definition_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1IndexdefInputDataIndexDefinitionIdGet operation
#
##############################################################################
print_v1IndexdefInputDataIndexDefinitionIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1IndexdefInputDataIndexDefinitionIdGet - Returns data inputs for certain index definition and time${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}index_definition_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: index_definition_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: time=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}enabled_only${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: false)${OFF} - ${YELLOW} Specify as: enabled_only=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pending_only${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: false)${OFF} - ${YELLOW} Specify as: pending_only=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter_asset_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: filter_asset_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}with_status_info${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: false)${OFF} - ${YELLOW} Specify as: with_status_info=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1IndexdefMultiassetGet operation
#
##############################################################################
print_v1IndexdefMultiassetGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1IndexdefMultiassetGet - Get all multi-asset weights${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1IndexdefMultiassetIndexIdGet operation
#
##############################################################################
print_v1IndexdefMultiassetIndexIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1IndexdefMultiassetIndexIdGet - Get multi-asset weights for specific index${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}index_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: index_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1IndexesGet operation
#
##############################################################################
print_v1IndexesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1IndexesGet - List indexes${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1IndexesIndexDefinitionIdCurrentSnapshotGet operation
#
##############################################################################
print_v1IndexesIndexDefinitionIdCurrentSnapshotGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1IndexesIndexDefinitionIdCurrentSnapshotGet - Current Index Values for index definition${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}index_definition_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: index_definition_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1IndexesIndexDefinitionIdHistorySnapshotGet operation
#
##############################################################################
print_v1IndexesIndexDefinitionIdHistorySnapshotGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1IndexesIndexDefinitionIdHistorySnapshotGet - Historical Index Values for index definition${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}index_definition_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: index_definition_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: time=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1IndexesIndexIdCurrentGet operation
#
##############################################################################
print_v1IndexesIndexIdCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1IndexesIndexIdCurrentGet - Current Index Value${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}index_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: index_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1IndexesIndexIdHistoryGet operation
#
##############################################################################
print_v1IndexesIndexIdHistoryGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1IndexesIndexIdHistoryGet - Historical Index Value w/Composition${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}index_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: index_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_start${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: time_start=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_end${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: time_end=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - ${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1IndexesIndexIdTimeseriesGet operation
#
##############################################################################
print_v1IndexesIndexIdTimeseriesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1IndexesIndexIdTimeseriesGet - Timeseries Index Value${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}index_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: index_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}period_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Identifier of requested timeseries period (e.g. '5SEC' or '1DAY')${YELLOW} Specify as: period_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_start${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Timeseries starting time in ISO 8601${YELLOW} Specify as: time_start=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}time_end${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Timeseries ending time in ISO 8601${YELLOW} Specify as: time_end=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}limit${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)${YELLOW} Specify as: limit=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiMetadataExchangesExchangeIdGet operation
#
##############################################################################
print_apiMetadataExchangesExchangeIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiMetadataExchangesExchangeIdGet - List all exchanges by exchange_id${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}exchange_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The ID of the exchange. ${YELLOW}Specify as: exchange_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiMetadataExchangesGet operation
#
##############################################################################
print_apiMetadataExchangesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiMetadataExchangesGet - List all exchanges${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get a detailed list of exchanges provided by the system.
            
:::info
Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.
:::" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_exchange_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. 'BITSTAMP;GEMINI')${YELLOW} Specify as: filter_exchange_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1MetadataPeriodsGet operation
#
##############################################################################
print_v1MetadataPeriodsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1MetadataPeriodsGet - List all periods${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get full list of supported time periods
            
### Available periods
            
Time unit | Period identifiers
--------- | -----------
Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC
Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN
Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS
Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY
Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH
Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS
            
:::tip
You can assume that we will not remove any periods from this response, however, we may add new ones.
:::" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}


##############################################################################
#
# Call v1IndexdefInputDataIndexDefinitionIdAllGet operation
#
##############################################################################
call_v1IndexdefInputDataIndexDefinitionIdAllGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(index_definition_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/indexdef/input-data/{index_definition_id}/all" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1IndexdefInputDataIndexDefinitionIdGet operation
#
##############################################################################
call_v1IndexdefInputDataIndexDefinitionIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(index_definition_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(time enabled_only pending_only filter_asset_id with_status_info  )
    local path

    if ! path=$(build_request_path "/v1/indexdef/input-data/{index_definition_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1IndexdefMultiassetGet operation
#
##############################################################################
call_v1IndexdefMultiassetGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/indexdef/multiasset" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1IndexdefMultiassetIndexIdGet operation
#
##############################################################################
call_v1IndexdefMultiassetIndexIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(index_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/indexdef/multiasset/{index_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1IndexesGet operation
#
##############################################################################
call_v1IndexesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/indexes" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1IndexesIndexDefinitionIdCurrentSnapshotGet operation
#
##############################################################################
call_v1IndexesIndexDefinitionIdCurrentSnapshotGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(index_definition_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/indexes/{index_definition_id}/currentSnapshot" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1IndexesIndexDefinitionIdHistorySnapshotGet operation
#
##############################################################################
call_v1IndexesIndexDefinitionIdHistorySnapshotGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(index_definition_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(time  )
    local path

    if ! path=$(build_request_path "/v1/indexes/{index_definition_id}/historySnapshot" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1IndexesIndexIdCurrentGet operation
#
##############################################################################
call_v1IndexesIndexIdCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(index_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/indexes/{index_id}/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1IndexesIndexIdHistoryGet operation
#
##############################################################################
call_v1IndexesIndexIdHistoryGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(index_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(time_start time_end limit  )
    local path

    if ! path=$(build_request_path "/v1/indexes/{index_id}/history" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1IndexesIndexIdTimeseriesGet operation
#
##############################################################################
call_v1IndexesIndexIdTimeseriesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(index_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(period_id time_start time_end limit  )
    local path

    if ! path=$(build_request_path "/v1/indexes/{index_id}/timeseries" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiMetadataExchangesExchangeIdGet operation
#
##############################################################################
call_apiMetadataExchangesExchangeIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(exchange_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/metadata/exchanges/{exchange_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiMetadataExchangesGet operation
#
##############################################################################
call_apiMetadataExchangesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_exchange_id  )
    local path

    if ! path=$(build_request_path "/api/metadata/exchanges" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call v1MetadataPeriodsGet operation
#
##############################################################################
call_v1MetadataPeriodsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/v1/metadata/periods" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}



##############################################################################
#
# Main
#
##############################################################################


# Check dependencies
type curl >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'cURL' installed."; exit 1; }
type sed >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'sed' installed."; exit 1; }
type column >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'bsdmainutils' installed."; exit 1; }

#
# Process command line
#
# Pass all arguments before 'operation' to cURL except the ones we override
#
take_user=false
take_host=false
take_accept_header=false
take_contenttype_header=false

for key in "$@"; do
# Take the value of -u|--user argument
if [[ "$take_user" = true ]]; then
    basic_auth_credential="$key"
    take_user=false
    continue
fi
# Take the value of --host argument
if [[ "$take_host" = true ]]; then
    host="$key"
    take_host=false
    continue
fi
# Take the value of --accept argument
if [[ "$take_accept_header" = true ]]; then
    header_accept=$(lookup_mime_type "$key")
    take_accept_header=false
    continue
fi
# Take the value of --content-type argument
if [[ "$take_contenttype_header" = true ]]; then
    header_content_type=$(lookup_mime_type "$key")
    take_contenttype_header=false
    continue
fi
case $key in
    -h|--help)
    if [[ "x$operation" == "x" ]]; then
        print_help
        exit 0
    else
        eval "print_${operation}_help"
        exit 0
    fi
    ;;
    -V|--version)
    print_version
    exit 0
    ;;
    --about)
    print_about
    exit 0
    ;;
    -u|--user)
    take_user=true
    ;;
    --host)
    take_host=true
    ;;
    --force)
    force=true
    ;;
    -ac|--accept)
    take_accept_header=true
    ;;
    -ct|--content-type)
    take_contenttype_header=true
    ;;
    --dry-run)
    print_curl=true
    ;;
    -nc|--no-colors)
        RED=""
        GREEN=""
        YELLOW=""
        BLUE=""
        MAGENTA=""
        CYAN=""
        WHITE=""
        BOLD=""
        OFF=""
        result_color_table=( "" "" "" "" "" "" "" )
    ;;
    v1IndexdefInputDataIndexDefinitionIdAllGet)
    operation="v1IndexdefInputDataIndexDefinitionIdAllGet"
    ;;
    v1IndexdefInputDataIndexDefinitionIdGet)
    operation="v1IndexdefInputDataIndexDefinitionIdGet"
    ;;
    v1IndexdefMultiassetGet)
    operation="v1IndexdefMultiassetGet"
    ;;
    v1IndexdefMultiassetIndexIdGet)
    operation="v1IndexdefMultiassetIndexIdGet"
    ;;
    v1IndexesGet)
    operation="v1IndexesGet"
    ;;
    v1IndexesIndexDefinitionIdCurrentSnapshotGet)
    operation="v1IndexesIndexDefinitionIdCurrentSnapshotGet"
    ;;
    v1IndexesIndexDefinitionIdHistorySnapshotGet)
    operation="v1IndexesIndexDefinitionIdHistorySnapshotGet"
    ;;
    v1IndexesIndexIdCurrentGet)
    operation="v1IndexesIndexIdCurrentGet"
    ;;
    v1IndexesIndexIdHistoryGet)
    operation="v1IndexesIndexIdHistoryGet"
    ;;
    v1IndexesIndexIdTimeseriesGet)
    operation="v1IndexesIndexIdTimeseriesGet"
    ;;
    apiMetadataExchangesExchangeIdGet)
    operation="apiMetadataExchangesExchangeIdGet"
    ;;
    apiMetadataExchangesGet)
    operation="apiMetadataExchangesGet"
    ;;
    v1MetadataPeriodsGet)
    operation="v1MetadataPeriodsGet"
    ;;
    *==*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content as strings
    if [[ "$operation" ]]; then
        IFS='==' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]="\"${body_value}\""
    fi
    ;;
    --body=*)
    # Parse value of body as argument and convert it into only
    # the raw body content
    if [[ "$operation" ]]; then
        IFS='--body=' read -r body_value <<< "$key"
        body_value=${body_value##--body=}
        body_parameters["RAW_BODY"]="${body_value}"
        RAW_BODY=1
    fi
    ;;
    *:=*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content without quotes
    if [[ "$operation" ]]; then
        # ignore error about 'sep' being unused
        # shellcheck disable=SC2034
        IFS=':=' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]=${body_value}
    fi
    ;;
    +([^=]):*)
    # Parse header arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS=':' read -r header_name header_value <<< "$key"
        #
        # If the header key is the same as the api_key expected by API in the
        # header, override the ${apikey_auth_credential} variable
        #
        if [[ $header_name == "X-CoinAPI-Key" ]]; then
            apikey_auth_credential=$header_value
        fi
        header_arguments[$header_name]=$header_value
    else
        curl_arguments+=" $key"
    fi
    ;;
    -)
    body_content_temp_file=$(mktemp)
    cat - > "$body_content_temp_file"
    ;;
    *=*)
    # Parse operation arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS='=' read -r parameter_name parameter_value <<< "$key"
        if [[ -z "${operation_parameters[$parameter_name]+foo}" ]]; then
            operation_parameters[$parameter_name]=$(url_escape "${parameter_value}")
        else
            operation_parameters[$parameter_name]+=":::"$(url_escape "${parameter_value}")
        fi
    else
        curl_arguments+=" $key"
    fi
    ;;
    *)
    # If we are before the operation, treat the arguments as cURL arguments
    if [[ "x$operation" == "x" ]]; then
        # Maintain quotes around cURL arguments if necessary
        space_regexp="[[:space:]]"
        if [[ $key =~ $space_regexp ]]; then
            curl_arguments+=" \"$key\""
        else
            curl_arguments+=" $key"
        fi
    fi
    ;;
esac
done


# Check if user provided host name
if [[ -z "$host" ]]; then
    ERROR_MSG="ERROR: No hostname provided!!! You have to  provide on command line option '--host ...'"
    exit 1
fi

# Check if user specified operation ID
if [[ -z "$operation" ]]; then
    ERROR_MSG="ERROR: No operation specified!!!"
    exit 1
fi


# Run cURL command based on the operation ID
case $operation in
    v1IndexdefInputDataIndexDefinitionIdAllGet)
    call_v1IndexdefInputDataIndexDefinitionIdAllGet
    ;;
    v1IndexdefInputDataIndexDefinitionIdGet)
    call_v1IndexdefInputDataIndexDefinitionIdGet
    ;;
    v1IndexdefMultiassetGet)
    call_v1IndexdefMultiassetGet
    ;;
    v1IndexdefMultiassetIndexIdGet)
    call_v1IndexdefMultiassetIndexIdGet
    ;;
    v1IndexesGet)
    call_v1IndexesGet
    ;;
    v1IndexesIndexDefinitionIdCurrentSnapshotGet)
    call_v1IndexesIndexDefinitionIdCurrentSnapshotGet
    ;;
    v1IndexesIndexDefinitionIdHistorySnapshotGet)
    call_v1IndexesIndexDefinitionIdHistorySnapshotGet
    ;;
    v1IndexesIndexIdCurrentGet)
    call_v1IndexesIndexIdCurrentGet
    ;;
    v1IndexesIndexIdHistoryGet)
    call_v1IndexesIndexIdHistoryGet
    ;;
    v1IndexesIndexIdTimeseriesGet)
    call_v1IndexesIndexIdTimeseriesGet
    ;;
    apiMetadataExchangesExchangeIdGet)
    call_apiMetadataExchangesExchangeIdGet
    ;;
    apiMetadataExchangesGet)
    call_apiMetadataExchangesGet
    ;;
    v1MetadataPeriodsGet)
    call_v1MetadataPeriodsGet
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
