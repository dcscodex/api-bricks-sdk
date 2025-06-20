#
# CoinAPI Market Data REST API
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
# Version: v1
# Contact: support@apibricks.io
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Represents the last executed transaction.

.PARAMETER TimeExchange
The exchange time of the last trade.
.PARAMETER TimeCoinapi
The CoinAPI time when the last trade was received.
.PARAMETER Uuid
The UUID of the last trade.
.PARAMETER Price
The price of the last trade.
.PARAMETER Size
The size of the last trade.
.PARAMETER TakerSide
The taker side of the last trade.
.OUTPUTS

V1LastTrade<PSCustomObject>
#>

function Initialize-V1LastTrade {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${TimeExchange},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${TimeCoinapi},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Uuid},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${Price},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${Size},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TakerSide}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => V1LastTrade' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "time_exchange" = ${TimeExchange}
            "time_coinapi" = ${TimeCoinapi}
            "uuid" = ${Uuid}
            "price" = ${Price}
            "size" = ${Size}
            "taker_side" = ${TakerSide}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1LastTrade<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1LastTrade<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1LastTrade<PSCustomObject>
#>
function ConvertFrom-JsonToV1LastTrade {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => V1LastTrade' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1LastTrade
        $AllProperties = ("time_exchange", "time_coinapi", "uuid", "price", "size", "taker_side")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "time_exchange"))) { #optional property not found
            $TimeExchange = $null
        } else {
            $TimeExchange = $JsonParameters.PSobject.Properties["time_exchange"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "time_coinapi"))) { #optional property not found
            $TimeCoinapi = $null
        } else {
            $TimeCoinapi = $JsonParameters.PSobject.Properties["time_coinapi"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "uuid"))) { #optional property not found
            $Uuid = $null
        } else {
            $Uuid = $JsonParameters.PSobject.Properties["uuid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "price"))) { #optional property not found
            $Price = $null
        } else {
            $Price = $JsonParameters.PSobject.Properties["price"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "size"))) { #optional property not found
            $Size = $null
        } else {
            $Size = $JsonParameters.PSobject.Properties["size"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "taker_side"))) { #optional property not found
            $TakerSide = $null
        } else {
            $TakerSide = $JsonParameters.PSobject.Properties["taker_side"].value
        }

        $PSO = [PSCustomObject]@{
            "time_exchange" = ${TimeExchange}
            "time_coinapi" = ${TimeCoinapi}
            "uuid" = ${Uuid}
            "price" = ${Price}
            "size" = ${Size}
            "taker_side" = ${TakerSide}
        }

        return $PSO
    }

}

