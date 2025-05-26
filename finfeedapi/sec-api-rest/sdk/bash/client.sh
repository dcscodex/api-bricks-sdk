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
# This is a Bash client for REST API.
#
# LICENSE:
# 
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
operation_parameters_minimum_occurrences["v1ExtractorGet:::accession_number"]=1
operation_parameters_minimum_occurrences["v1ExtractorGet:::type"]=0
operation_parameters_minimum_occurrences["v1ExtractorItemGet:::accession_number"]=1
operation_parameters_minimum_occurrences["v1ExtractorItemGet:::item_number"]=1
operation_parameters_minimum_occurrences["v1ExtractorItemGet:::type"]=0
operation_parameters_minimum_occurrences["v1FilingsGet:::cik"]=0
operation_parameters_minimum_occurrences["v1FilingsGet:::form_type"]=0
operation_parameters_minimum_occurrences["v1FilingsGet:::filling_date_start"]=0
operation_parameters_minimum_occurrences["v1FilingsGet:::filling_date_end"]=0
operation_parameters_minimum_occurrences["v1FilingsGet:::report_date_start"]=0
operation_parameters_minimum_occurrences["v1FilingsGet:::report_date_end"]=0
operation_parameters_minimum_occurrences["v1FilingsGet:::items_contain"]=0
operation_parameters_minimum_occurrences["v1FilingsGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1FilingsGet:::page_number"]=0
operation_parameters_minimum_occurrences["v1FilingsGet:::sort_by"]=0
operation_parameters_minimum_occurrences["v1FilingsGet:::sort_order"]=0
operation_parameters_minimum_occurrences["v1FullTextGet:::form_type"]=0
operation_parameters_minimum_occurrences["v1FullTextGet:::filling_date_start"]=0
operation_parameters_minimum_occurrences["v1FullTextGet:::filling_date_end"]=0
operation_parameters_minimum_occurrences["v1FullTextGet:::text_contains"]=0
operation_parameters_minimum_occurrences["v1FullTextGet:::text_not_contain"]=0
operation_parameters_minimum_occurrences["v1FullTextGet:::page_size"]=0
operation_parameters_minimum_occurrences["v1FullTextGet:::page_number"]=0
operation_parameters_minimum_occurrences["v1FullTextGet:::sort_by"]=0
operation_parameters_minimum_occurrences["v1FullTextGet:::sort_order"]=0
operation_parameters_minimum_occurrences["v1XbrlConverterGet:::htm-url"]=0
operation_parameters_minimum_occurrences["v1XbrlConverterGet:::xbrl-url"]=0
operation_parameters_minimum_occurrences["v1XbrlConverterGet:::accession-no"]=0

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["v1ExtractorGet:::accession_number"]=0
operation_parameters_maximum_occurrences["v1ExtractorGet:::type"]=0
operation_parameters_maximum_occurrences["v1ExtractorItemGet:::accession_number"]=0
operation_parameters_maximum_occurrences["v1ExtractorItemGet:::item_number"]=0
operation_parameters_maximum_occurrences["v1ExtractorItemGet:::type"]=0
operation_parameters_maximum_occurrences["v1FilingsGet:::cik"]=0
operation_parameters_maximum_occurrences["v1FilingsGet:::form_type"]=0
operation_parameters_maximum_occurrences["v1FilingsGet:::filling_date_start"]=0
operation_parameters_maximum_occurrences["v1FilingsGet:::filling_date_end"]=0
operation_parameters_maximum_occurrences["v1FilingsGet:::report_date_start"]=0
operation_parameters_maximum_occurrences["v1FilingsGet:::report_date_end"]=0
operation_parameters_maximum_occurrences["v1FilingsGet:::items_contain"]=0
operation_parameters_maximum_occurrences["v1FilingsGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1FilingsGet:::page_number"]=0
operation_parameters_maximum_occurrences["v1FilingsGet:::sort_by"]=0
operation_parameters_maximum_occurrences["v1FilingsGet:::sort_order"]=0
operation_parameters_maximum_occurrences["v1FullTextGet:::form_type"]=0
operation_parameters_maximum_occurrences["v1FullTextGet:::filling_date_start"]=0
operation_parameters_maximum_occurrences["v1FullTextGet:::filling_date_end"]=0
operation_parameters_maximum_occurrences["v1FullTextGet:::text_contains"]=0
operation_parameters_maximum_occurrences["v1FullTextGet:::text_not_contain"]=0
operation_parameters_maximum_occurrences["v1FullTextGet:::page_size"]=0
operation_parameters_maximum_occurrences["v1FullTextGet:::page_number"]=0
operation_parameters_maximum_occurrences["v1FullTextGet:::sort_by"]=0
operation_parameters_maximum_occurrences["v1FullTextGet:::sort_order"]=0
operation_parameters_maximum_occurrences["v1XbrlConverterGet:::htm-url"]=0
operation_parameters_maximum_occurrences["v1XbrlConverterGet:::xbrl-url"]=0
operation_parameters_maximum_occurrences["v1XbrlConverterGet:::accession-no"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["v1ExtractorGet:::accession_number"]=""
operation_parameters_collection_type["v1ExtractorGet:::type"]=""
operation_parameters_collection_type["v1ExtractorItemGet:::accession_number"]=""
operation_parameters_collection_type["v1ExtractorItemGet:::item_number"]=""
operation_parameters_collection_type["v1ExtractorItemGet:::type"]=""
operation_parameters_collection_type["v1FilingsGet:::cik"]=""
operation_parameters_collection_type["v1FilingsGet:::form_type"]=""
operation_parameters_collection_type["v1FilingsGet:::filling_date_start"]=""
operation_parameters_collection_type["v1FilingsGet:::filling_date_end"]=""
operation_parameters_collection_type["v1FilingsGet:::report_date_start"]=""
operation_parameters_collection_type["v1FilingsGet:::report_date_end"]=""
operation_parameters_collection_type["v1FilingsGet:::items_contain"]=""
operation_parameters_collection_type["v1FilingsGet:::page_size"]=""
operation_parameters_collection_type["v1FilingsGet:::page_number"]=""
operation_parameters_collection_type["v1FilingsGet:::sort_by"]=""
operation_parameters_collection_type["v1FilingsGet:::sort_order"]=""
operation_parameters_collection_type["v1FullTextGet:::form_type"]=""
operation_parameters_collection_type["v1FullTextGet:::filling_date_start"]=""
operation_parameters_collection_type["v1FullTextGet:::filling_date_end"]=""
operation_parameters_collection_type["v1FullTextGet:::text_contains"]=""
operation_parameters_collection_type["v1FullTextGet:::text_not_contain"]=""
operation_parameters_collection_type["v1FullTextGet:::page_size"]=""
operation_parameters_collection_type["v1FullTextGet:::page_number"]=""
operation_parameters_collection_type["v1FullTextGet:::sort_by"]=""
operation_parameters_collection_type["v1FullTextGet:::sort_order"]=""
operation_parameters_collection_type["v1XbrlConverterGet:::htm-url"]=""
operation_parameters_collection_type["v1XbrlConverterGet:::xbrl-url"]=""
operation_parameters_collection_type["v1XbrlConverterGet:::accession-no"]=""


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
    api_key_header="Authorization"

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

${BOLD}${WHITE}REST API command line client (API version v1)${OFF}

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
    echo -e "  - ${BLUE}Api-key${OFF} - add '${RED}Authorization:<api-key>${OFF}' after ${YELLOW}<operation>${OFF}"
    
    echo ""
    echo -e "${BOLD}${WHITE}Operations (grouped by tags)${OFF}"
    echo ""
    echo -e "${BOLD}${WHITE}[contentExtraction]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1ExtractorGet${OFF};Extract and classify SEC filing content
  ${CYAN}v1ExtractorItemGet${OFF};Extract specific item content from SEC filing
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[filingMetadata]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1FilingsGet${OFF};Query SEC filing metadata
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[fullTextSearch]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1FullTextGet${OFF};Full-text search of SEC filing documents
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[xBRLConversion]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}v1XbrlConverterGet${OFF};Convert XBRL data to JSON format
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}Options${OFF}"
    echo -e "  -h,--help\\t\\t\\t\\tPrint this help"
    echo -e "  -V,--version\\t\\t\\t\\tPrint API version"
    echo -e "  --about\\t\\t\\t\\tPrint the information about service"
    echo -e "  --host ${CYAN}<url>${OFF}\\t\\t\\t\\tSpecify the host URL "
echo -e "              \\t\\t\\t\\t(e.g. 'https://api-historical.sec.finfeedapi.com')"

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
    echo -e "${BOLD}${WHITE}REST API command line client (API version v1)${OFF}"
    echo ""
    echo -e "License: "
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
    echo -e "${BOLD}REST API command line client (API version v1)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for v1ExtractorGet operation
#
##############################################################################
print_v1ExtractorGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1ExtractorGet - Extract and classify SEC filing content${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves filing content from the EDGAR database and intelligently classifies it according to form type and item categories.

### Supported Form Types

Form Type | Description
----------|------------
8-K      | Current report filing
10-K     | Annual report filing
10-Q     | Quarterly report filing

### Content Classification
- 8-K forms: Content classified by item numbers (e.g., 1.01, 2.01)
- 10-K/10-Q forms: Items categorized by their respective part and item structure

:::note
Both HTML and plain text documents are supported for content extraction.
:::" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accession_number${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The SEC filing accession number used to retrieve the filing from EDGAR database.${YELLOW} Specify as: accession_number=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}type${OFF} ${BLUE}[DTOExtractorType]${OFF} ${CYAN}(default: null)${OFF} - Result type (text or html, default: text)${YELLOW} Specify as: type=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful extraction${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Invalid request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Filing not found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Server error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1ExtractorItemGet operation
#
##############################################################################
print_v1ExtractorItemGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1ExtractorItemGet - Extract specific item content from SEC filing${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves filing content from the EDGAR database and returns only the text content of the specified item number.

### Item Number Format

Form Type | Item Format Examples
-----------|-------------------
8-K       | 1.01, 2.01, 7.01
10-K      | 1, 2, 3
10-K/10-Q | PartI 1, PartII 2

:::tip
For best results, ensure the item number matches exactly with the filing's structure.
:::" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}accession_number${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The SEC filing accession number used to retrieve the filing from EDGAR database.${YELLOW} Specify as: accession_number=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}item_number${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The specific item number to extract (e.g., \"1.01\", \"2.01\", \"7.01\").${YELLOW} Specify as: item_number=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}type${OFF} ${BLUE}[DTOExtractorType]${OFF} ${CYAN}(default: null)${OFF} - Result type (text or html, default: text)${YELLOW} Specify as: type=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful extraction${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Invalid request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Filing or item not found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Server error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1FilingsGet operation
#
##############################################################################
print_v1FilingsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1FilingsGet - Query SEC filing metadata${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.

### Available Sort Fields

Field Name | Description
-----------|-------------
AccessionNumber | SEC filing accession number
FilingDate | Date when filing was submitted
AcceptanceDateTime | Date and time of filing acceptance
ReportDate | Date of the report
Size | Size of the filing document

### Date Format
All dates must be provided in YYYY-MM-DD format

### Form Types
Form types can be provided as comma-separated values, e.g.: \"10-K,8-K,10-Q\"

:::tip
For optimal performance, use date ranges and form types to narrow down your search
:::" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}cik${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Filter by Central Index Key (CIK)${YELLOW} Specify as: cik=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}form_type${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter by form type(s) (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated${YELLOW} Specify as: form_type=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filling_date_start${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter by filling date start (inclusive), format YYYY-MM-DD${YELLOW} Specify as: filling_date_start=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filling_date_end${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter by filling date end (inclusive), format YYYY-MM-DD${YELLOW} Specify as: filling_date_end=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}report_date_start${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter by report date start (inclusive), format YYYY-MM-DD${YELLOW} Specify as: report_date_start=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}report_date_end${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter by report date end (inclusive), format YYYY-MM-DD${YELLOW} Specify as: report_date_end=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}items_contain${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter filings where the 'Items' field contains the specified text${YELLOW} Specify as: items_contain=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Number of results per page (default: 50, max: 200)${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_number${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Page number to retrieve (default: 1)${YELLOW} Specify as: page_number=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}sort_by${OFF} ${BLUE}[DTOFilingSortBy]${OFF} ${CYAN}(default: null)${OFF} - Field to sort results by (default: AccessionNumber)${YELLOW} Specify as: sort_by=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}sort_order${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: desc)${OFF} - Sort order (asc or desc, default: desc)${YELLOW} Specify as: sort_order=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Invalid request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Server error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1FullTextGet operation
#
##############################################################################
print_v1FullTextGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1FullTextGet - Full-text search of SEC filing documents${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Search across SEC filing documents with advanced filtering and sorting capabilities.

### Available Sort Fields

Field Name | Description
-----------|-------------
AccessionNumber | SEC filing accession number
FormType | Type of the filing document
FilingDate | Date when filing was submitted
CompanyName | Name of the company
CIK | Central Index Key
DocumentFilename | Name of the filing document
DocumentDescription | Description of the document

### Search Options

Option | Description
--------|-------------
text_contains | Keywords that must appear in the document
text_not_contain | Keywords that must not appear in the document

### Date Format
All dates must be provided in YYYY-MM-DD format

:::tip
Use text_contains and text_not_contain with multiple keywords separated by commas for more precise searches
:::

:::note
The search is case-insensitive and supports partial word matches
:::" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}form_type${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter by form type (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated${YELLOW} Specify as: form_type=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filling_date_start${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter by filling date start (inclusive), format YYYY-MM-DD${YELLOW} Specify as: filling_date_start=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filling_date_end${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter by filling date end (inclusive), format YYYY-MM-DD${YELLOW} Specify as: filling_date_end=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}text_contains${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Keywords that the text must contain. Multiple values can be comma-separated${YELLOW} Specify as: text_contains=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}text_not_contain${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Keywords that the text must not contain. Multiple values can be comma-separated${YELLOW} Specify as: text_not_contain=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Number of results per page (default: 100)${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_number${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Page number to retrieve (default: 1)${YELLOW} Specify as: page_number=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}sort_by${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: AccessionNumber)${OFF} - Field to sort by (default: AccessionNumber)${YELLOW} Specify as: sort_by=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}sort_order${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: asc)${OFF} - Sort order (asc or desc). Defaults to asc${YELLOW} Specify as: sort_order=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Invalid request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Server error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for v1XbrlConverterGet operation
#
##############################################################################
print_v1XbrlConverterGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}v1XbrlConverterGet - Convert XBRL data to JSON format${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Converts XBRL data to JSON format using one of three possible input methods.

### Input Methods

1. HTML URL (htm-url)
   - URL of the filing ending with .htm or .html
   - Both filing URLs and index page URLs are accepted
   - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231.htm

2. XBRL URL (xbrl-url)
   - URL of the XBRL file ending with .xml
   - Can be found in the dataFiles array from Query API
   - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231_htm.xml

3. Accession Number (accession-no)
   - The SEC filing accession number
   - Example: 0001564590-21-004599

:::note
Only one of the three parameters should be provided. If multiple parameters are provided, the priority order is:
1. htm-url
2. xbrl-url
3. accession-no
:::

### Supported Filing Types

- Annual Reports (10-K)
- Quarterly Reports (10-Q)
- Current Reports (8-K)
- Registration Statements (S-1, S-3)
- Foreign Private Issuer Reports (20-F, 40-F)

### Response Format

The API returns a JSON object containing:
- Financial statements (Income Statement, Balance Sheet, Cash Flow Statement)
- Accounting policies and footnotes
- Company information
- Filing metadata

### Example Response
'''json
{
  \"StatementsOfIncome\": {
    \"RevenueFromContractWithCustomerExcludingAssessedTax\": [
      {
        \"decimals\": \"-6\",
        \"unitRef\": \"U_USD\",
        \"period\": {
          \"startDate\": \"2023-07-01\",
          \"endDate\": \"2024-06-30\"
        },
        \"value\": \"245122000000\"
      }
    ]
  }
}
'''" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}htm-url${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - URL of the filing ending with .htm or .html${YELLOW} Specify as: htm-url=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}xbrl-url${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - URL of the XBRL file ending with .xml${YELLOW} Specify as: xbrl-url=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}accession-no${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - SEC filing accession number${YELLOW} Specify as: accession-no=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Successful conversion${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Invalid request - check parameter format${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Filing or XBRL data not found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Server error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}


##############################################################################
#
# Call v1ExtractorGet operation
#
##############################################################################
call_v1ExtractorGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(accession_number type)
    local path

    if ! path=$(build_request_path "/v1/extractor" path_parameter_names query_parameter_names); then
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
# Call v1ExtractorItemGet operation
#
##############################################################################
call_v1ExtractorItemGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(accession_number item_number type)
    local path

    if ! path=$(build_request_path "/v1/extractor/item" path_parameter_names query_parameter_names); then
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
# Call v1FilingsGet operation
#
##############################################################################
call_v1FilingsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(cik form_type filling_date_start filling_date_end report_date_start report_date_end items_contain page_size page_number sort_by sort_order)
    local path

    if ! path=$(build_request_path "/v1/filings" path_parameter_names query_parameter_names); then
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
# Call v1FullTextGet operation
#
##############################################################################
call_v1FullTextGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(form_type filling_date_start filling_date_end text_contains text_not_contain page_size page_number sort_by sort_order)
    local path

    if ! path=$(build_request_path "/v1/full-text" path_parameter_names query_parameter_names); then
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
# Call v1XbrlConverterGet operation
#
##############################################################################
call_v1XbrlConverterGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(htm-url xbrl-url accession-no)
    local path

    if ! path=$(build_request_path "/v1/xbrl-converter" path_parameter_names query_parameter_names); then
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
    v1ExtractorGet)
    operation="v1ExtractorGet"
    ;;
    v1ExtractorItemGet)
    operation="v1ExtractorItemGet"
    ;;
    v1FilingsGet)
    operation="v1FilingsGet"
    ;;
    v1FullTextGet)
    operation="v1FullTextGet"
    ;;
    v1XbrlConverterGet)
    operation="v1XbrlConverterGet"
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
        if [[ $header_name == "Authorization" ]]; then
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
    v1ExtractorGet)
    call_v1ExtractorGet
    ;;
    v1ExtractorItemGet)
    call_v1ExtractorItemGet
    ;;
    v1FilingsGet)
    call_v1FilingsGet
    ;;
    v1FullTextGet)
    call_v1FullTextGet
    ;;
    v1XbrlConverterGet)
    call_v1XbrlConverterGet
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
