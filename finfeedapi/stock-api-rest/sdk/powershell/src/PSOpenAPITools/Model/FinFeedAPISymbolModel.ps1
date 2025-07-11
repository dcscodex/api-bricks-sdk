#
# FinFeedAPI Stock REST API
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
# Version: v1
# Contact: support@apibricks.io
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER SymbolId
No description available.
.PARAMETER ExchangeId
No description available.
.PARAMETER SecurityCategory
No description available.
.PARAMETER Name
No description available.
.PARAMETER Date
No description available.
.PARAMETER AssetClass
No description available.
.PARAMETER CfiCode
No description available.
.PARAMETER CfiCategory
No description available.
.PARAMETER CfiGroup
No description available.
.PARAMETER CfiAttribute1
No description available.
.PARAMETER CfiAttribute2
No description available.
.PARAMETER CfiAttribute3
No description available.
.PARAMETER CfiAttribute4
No description available.
.PARAMETER CfiCategoryDesc
No description available.
.PARAMETER CfiGroupDesc
No description available.
.PARAMETER CfiAttribute1Desc
No description available.
.PARAMETER CfiAttribute2Desc
No description available.
.PARAMETER CfiAttribute3Desc
No description available.
.PARAMETER CfiAttribute4Desc
No description available.
.OUTPUTS

FinFeedAPISymbolModel<PSCustomObject>
#>

function Initialize-FinFeedAPISymbolModel {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SymbolId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ExchangeId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SecurityCategory},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Date},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AssetClass},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CfiCode},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CfiCategory},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CfiGroup},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CfiAttribute1},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CfiAttribute2},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CfiAttribute3},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CfiAttribute4},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CfiCategoryDesc},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CfiGroupDesc},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CfiAttribute1Desc},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CfiAttribute2Desc},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CfiAttribute3Desc},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CfiAttribute4Desc}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => FinFeedAPISymbolModel' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "symbol_id" = ${SymbolId}
            "exchange_id" = ${ExchangeId}
            "security_category" = ${SecurityCategory}
            "name" = ${Name}
            "date" = ${Date}
            "asset_class" = ${AssetClass}
            "cfi_code" = ${CfiCode}
            "cfi_category" = ${CfiCategory}
            "cfi_group" = ${CfiGroup}
            "cfi_attribute1" = ${CfiAttribute1}
            "cfi_attribute2" = ${CfiAttribute2}
            "cfi_attribute3" = ${CfiAttribute3}
            "cfi_attribute4" = ${CfiAttribute4}
            "cfi_category_desc" = ${CfiCategoryDesc}
            "cfi_group_desc" = ${CfiGroupDesc}
            "cfi_attribute1_desc" = ${CfiAttribute1Desc}
            "cfi_attribute2_desc" = ${CfiAttribute2Desc}
            "cfi_attribute3_desc" = ${CfiAttribute3Desc}
            "cfi_attribute4_desc" = ${CfiAttribute4Desc}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FinFeedAPISymbolModel<PSCustomObject>

.DESCRIPTION

Convert from JSON to FinFeedAPISymbolModel<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FinFeedAPISymbolModel<PSCustomObject>
#>
function ConvertFrom-JsonToFinFeedAPISymbolModel {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => FinFeedAPISymbolModel' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $FinFeedAPISymbolModelAdditionalProperties = @{}

        # check if Json contains properties not defined in FinFeedAPISymbolModel
        $AllProperties = ("symbol_id", "exchange_id", "security_category", "name", "date", "asset_class", "cfi_code", "cfi_category", "cfi_group", "cfi_attribute1", "cfi_attribute2", "cfi_attribute3", "cfi_attribute4", "cfi_category_desc", "cfi_group_desc", "cfi_attribute1_desc", "cfi_attribute2_desc", "cfi_attribute3_desc", "cfi_attribute4_desc")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $FinFeedAPISymbolModelAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "symbol_id"))) { #optional property not found
            $SymbolId = $null
        } else {
            $SymbolId = $JsonParameters.PSobject.Properties["symbol_id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "exchange_id"))) { #optional property not found
            $ExchangeId = $null
        } else {
            $ExchangeId = $JsonParameters.PSobject.Properties["exchange_id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "security_category"))) { #optional property not found
            $SecurityCategory = $null
        } else {
            $SecurityCategory = $JsonParameters.PSobject.Properties["security_category"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "date"))) { #optional property not found
            $Date = $null
        } else {
            $Date = $JsonParameters.PSobject.Properties["date"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "asset_class"))) { #optional property not found
            $AssetClass = $null
        } else {
            $AssetClass = $JsonParameters.PSobject.Properties["asset_class"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cfi_code"))) { #optional property not found
            $CfiCode = $null
        } else {
            $CfiCode = $JsonParameters.PSobject.Properties["cfi_code"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cfi_category"))) { #optional property not found
            $CfiCategory = $null
        } else {
            $CfiCategory = $JsonParameters.PSobject.Properties["cfi_category"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cfi_group"))) { #optional property not found
            $CfiGroup = $null
        } else {
            $CfiGroup = $JsonParameters.PSobject.Properties["cfi_group"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cfi_attribute1"))) { #optional property not found
            $CfiAttribute1 = $null
        } else {
            $CfiAttribute1 = $JsonParameters.PSobject.Properties["cfi_attribute1"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cfi_attribute2"))) { #optional property not found
            $CfiAttribute2 = $null
        } else {
            $CfiAttribute2 = $JsonParameters.PSobject.Properties["cfi_attribute2"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cfi_attribute3"))) { #optional property not found
            $CfiAttribute3 = $null
        } else {
            $CfiAttribute3 = $JsonParameters.PSobject.Properties["cfi_attribute3"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cfi_attribute4"))) { #optional property not found
            $CfiAttribute4 = $null
        } else {
            $CfiAttribute4 = $JsonParameters.PSobject.Properties["cfi_attribute4"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cfi_category_desc"))) { #optional property not found
            $CfiCategoryDesc = $null
        } else {
            $CfiCategoryDesc = $JsonParameters.PSobject.Properties["cfi_category_desc"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cfi_group_desc"))) { #optional property not found
            $CfiGroupDesc = $null
        } else {
            $CfiGroupDesc = $JsonParameters.PSobject.Properties["cfi_group_desc"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cfi_attribute1_desc"))) { #optional property not found
            $CfiAttribute1Desc = $null
        } else {
            $CfiAttribute1Desc = $JsonParameters.PSobject.Properties["cfi_attribute1_desc"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cfi_attribute2_desc"))) { #optional property not found
            $CfiAttribute2Desc = $null
        } else {
            $CfiAttribute2Desc = $JsonParameters.PSobject.Properties["cfi_attribute2_desc"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cfi_attribute3_desc"))) { #optional property not found
            $CfiAttribute3Desc = $null
        } else {
            $CfiAttribute3Desc = $JsonParameters.PSobject.Properties["cfi_attribute3_desc"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cfi_attribute4_desc"))) { #optional property not found
            $CfiAttribute4Desc = $null
        } else {
            $CfiAttribute4Desc = $JsonParameters.PSobject.Properties["cfi_attribute4_desc"].value
        }

        $PSO = [PSCustomObject]@{
            "symbol_id" = ${SymbolId}
            "exchange_id" = ${ExchangeId}
            "security_category" = ${SecurityCategory}
            "name" = ${Name}
            "date" = ${Date}
            "asset_class" = ${AssetClass}
            "cfi_code" = ${CfiCode}
            "cfi_category" = ${CfiCategory}
            "cfi_group" = ${CfiGroup}
            "cfi_attribute1" = ${CfiAttribute1}
            "cfi_attribute2" = ${CfiAttribute2}
            "cfi_attribute3" = ${CfiAttribute3}
            "cfi_attribute4" = ${CfiAttribute4}
            "cfi_category_desc" = ${CfiCategoryDesc}
            "cfi_group_desc" = ${CfiGroupDesc}
            "cfi_attribute1_desc" = ${CfiAttribute1Desc}
            "cfi_attribute2_desc" = ${CfiAttribute2Desc}
            "cfi_attribute3_desc" = ${CfiAttribute3Desc}
            "cfi_attribute4_desc" = ${CfiAttribute4Desc}
            "AdditionalProperties" = $FinFeedAPISymbolModelAdditionalProperties
        }

        return $PSO
    }

}

