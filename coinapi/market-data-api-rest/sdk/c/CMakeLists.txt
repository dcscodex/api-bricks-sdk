cmake_minimum_required (VERSION 2.6...3.10.2)
project (CGenerator C)

cmake_policy(SET CMP0063 NEW)

set(CMAKE_C_VISIBILITY_PRESET default)
set(CMAKE_VISIBILITY_INLINES_HIDDEN OFF)
set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS ON)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror=implicit-function-declaration")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror=missing-declarations")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror=int-conversion")

option(BUILD_SHARED_LIBS "Build using shared libraries" ON)

find_package(OpenSSL)

if (OPENSSL_FOUND)
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DOPENSSL")
    if(CMAKE_VERSION VERSION_LESS 3.4)
        include_directories(${OPENSSL_INCLUDE_DIR})
        include_directories(${OPENSSL_INCLUDE_DIRS})
        link_directories(${OPENSSL_LIBRARIES})
    endif()
endif()

set(pkgName "coinapi_market_data_rest_api")

# this default version can be overridden in PreTarget.cmake
set(PROJECT_VERSION_MAJOR 0)
set(PROJECT_VERSION_MINOR 0)
set(PROJECT_VERSION_PATCH 1)

if( (DEFINED CURL_INCLUDE_DIR) AND (DEFINED CURL_LIBRARIES))
    include_directories(${CURL_INCLUDE_DIR})
    set(PLATFORM_LIBRARIES ${PLATFORM_LIBRARIES} ${CURL_LIBRARIES} )
else()
    find_package(CURL 7.58.0 REQUIRED)
    if(CURL_FOUND)
        include_directories(${CURL_INCLUDE_DIR})
        set(PLATFORM_LIBRARIES ${PLATFORM_LIBRARIES} ${CURL_LIBRARIES} )
    endif()
endif()

set(SRCS
    src/list.c
    src/apiKey.c
    src/apiClient.c
    src/binary.c
    external/cJSON.c
    model/object.c
    model/models_exchange_timeseries_item.c
    model/options_option_exchange_group.c
    model/options_strike.c
    model/v1_asset.c
    model/v1_chain.c
    model/v1_chain_network_address.c
    model/v1_exchange.c
    model/v1_exchange_rate.c
    model/v1_exchange_rates.c
    model/v1_exchange_rates_rate.c
    model/v1_exchange_rates_timeseries_item.c
    model/v1_general_data.c
    model/v1_icon.c
    model/v1_last_trade.c
    model/v1_listing_item.c
    model/v1_metric.c
    model/v1_metric_data.c
    model/v1_metric_info.c
    model/v1_order_book.c
    model/v1_order_book_base.c
    model/v1_order_book_depth.c
    model/v1_quote.c
    model/v1_quote_trade.c
    model/v1_symbol.c
    model/v1_symbol_mapping.c
    model/v1_timeseries_item.c
    model/v1_timeseries_period.c
    model/v1_trade.c
    api/ExchangeRatesAPI.c
    api/MetadataAPI.c
    api/MetricsV1API.c
    api/MetricsV2API.c
    api/OhlcvAPI.c
    api/OptionsAPI.c
    api/OrderBookAPI.c
    api/OrderBookL3API.c
    api/QuotesAPI.c
    api/TradesAPI.c

)

set(HDRS
    include/apiClient.h
    include/list.h
    include/binary.h
    include/keyValuePair.h
    external/cJSON.h
    model/object.h
    model/any_type.h
    model/models_exchange_timeseries_item.h
    model/options_option_exchange_group.h
    model/options_strike.h
    model/v1_asset.h
    model/v1_chain.h
    model/v1_chain_network_address.h
    model/v1_exchange.h
    model/v1_exchange_rate.h
    model/v1_exchange_rates.h
    model/v1_exchange_rates_rate.h
    model/v1_exchange_rates_timeseries_item.h
    model/v1_general_data.h
    model/v1_icon.h
    model/v1_last_trade.h
    model/v1_listing_item.h
    model/v1_metric.h
    model/v1_metric_data.h
    model/v1_metric_info.h
    model/v1_order_book.h
    model/v1_order_book_base.h
    model/v1_order_book_depth.h
    model/v1_quote.h
    model/v1_quote_trade.h
    model/v1_symbol.h
    model/v1_symbol_mapping.h
    model/v1_timeseries_item.h
    model/v1_timeseries_period.h
    model/v1_trade.h
    api/ExchangeRatesAPI.h
    api/MetadataAPI.h
    api/MetricsV1API.h
    api/MetricsV2API.h
    api/OhlcvAPI.h
    api/OptionsAPI.h
    api/OrderBookAPI.h
    api/OrderBookL3API.h
    api/QuotesAPI.h
    api/TradesAPI.h

)

include(PreTarget.cmake OPTIONAL)

set(PROJECT_VERSION_STRING "${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${PROJECT_VERSION_PATCH}")

# Add library with project file with project name as library name
add_library(${pkgName} ${SRCS} ${HDRS})
# Link dependent libraries
if(NOT CMAKE_VERSION VERSION_LESS 3.4)
    target_link_libraries(${pkgName} PRIVATE OpenSSL::SSL OpenSSL::Crypto)
endif()
target_link_libraries(${pkgName} PUBLIC ${CURL_LIBRARIES} )
target_include_directories(
    ${pkgName} PUBLIC $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}>
    $<INSTALL_INTERFACE:include>
)

include(PostTarget.cmake OPTIONAL)

# installation of libraries, headers, and config files
if (NOT EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in)
    install(TARGETS ${pkgName} DESTINATION lib)
else()
    include(GNUInstallDirs)
    install(TARGETS ${pkgName} DESTINATION lib EXPORT ${pkgName}Targets)

    foreach(HDR_FILE ${HDRS})
        get_filename_component(HDR_DIRECTORY ${HDR_FILE} DIRECTORY)
        get_filename_component(ABSOLUTE_HDR_DIRECTORY ${HDR_DIRECTORY} ABSOLUTE)
        file(RELATIVE_PATH RELATIVE_HDR_PATH ${CMAKE_CURRENT_SOURCE_DIR} ${ABSOLUTE_HDR_DIRECTORY})
        install(FILES ${HDR_FILE} DESTINATION include/${pkgName}/${RELATIVE_HDR_PATH})
    endforeach()

    include(CMakePackageConfigHelpers)
    write_basic_package_version_file(
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}ConfigVersion.cmake"
            VERSION "${PROJECT_VERSION_STRING}"
            COMPATIBILITY AnyNewerVersion
    )

    export(EXPORT ${pkgName}Targets
            FILE "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}Targets.cmake"
            NAMESPACE ${pkgName}::
            )

    configure_file(${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}Config.cmake"
            @ONLY
            )

    set(ConfigPackageLocation lib/cmake/${pkgName})
    install(EXPORT ${pkgName}Targets
            FILE
            ${pkgName}Targets.cmake
            NAMESPACE
            ${pkgName}::
            DESTINATION
            ${ConfigPackageLocation}
            )
    install(
            FILES
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}Config.cmake"
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}ConfigVersion.cmake"
            DESTINATION
            ${ConfigPackageLocation}
    )
endif()

# make installation packages
include(Packing.cmake OPTIONAL)

# Setting file variables to null
set(SRCS "")
set(HDRS "")


## This section shows how to use the above compiled library to compile the source files
## set source files
#set(SRCS
#    unit-tests/manual-ExchangeRatesAPI.c
#    unit-tests/manual-MetadataAPI.c
#    unit-tests/manual-MetricsV1API.c
#    unit-tests/manual-MetricsV2API.c
#    unit-tests/manual-OhlcvAPI.c
#    unit-tests/manual-OptionsAPI.c
#    unit-tests/manual-OrderBookAPI.c
#    unit-tests/manual-OrderBookL3API.c
#    unit-tests/manual-QuotesAPI.c
#    unit-tests/manual-TradesAPI.c
#)

##set header files
#set(HDRS
#)

## loop over all files in SRCS variable
#foreach(SOURCE_FILE ${SRCS})
#    # Get only the file name from the file as add_executable does not support executable with slash("/")
#    get_filename_component(FILE_NAME_ONLY ${SOURCE_FILE} NAME_WE)
#    # Remove .c from the file name and set it as executable name
#    string( REPLACE ".c" "" EXECUTABLE_FILE ${FILE_NAME_ONLY})
#    # Add executable for every source file in  SRCS
#    add_executable(unit-${EXECUTABLE_FILE} ${SOURCE_FILE})
#    # Link above created library to executable and dependent library curl
#    target_link_libraries(unit-${EXECUTABLE_FILE} ${CURL_LIBRARIES} ${pkgName} )
#endforeach(SOURCE_FILE ${SRCS})
