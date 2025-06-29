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

Represents the response DTO for trading status information

.PARAMETER Symbol
The stock symbol
.PARAMETER TimestampNanos
Original timestamp in nanoseconds since epoch
.PARAMETER Timestamp
Time when the trading status was recorded as DateTime
.PARAMETER IsTradingLive
Gets whether the security is currently trading on IEX
.PARAMETER IsTradingHalted
Gets whether the security is halted across all US equity markets
.PARAMETER IsTradingInOrderAcceptancePeriod
Gets whether the security is in Order Acceptance Period on IEX
.PARAMETER IsTradingPaused
Gets whether the security is paused and in Order Acceptance Period on IEX
.PARAMETER IsReasonHaltNewsPending
Gets whether the halt reason is News Pending
.PARAMETER IsReasonIpoNotYetTrading
Gets whether the halt reason is IPO Not Yet Trading
.PARAMETER IsReasonIpoDeferred
Gets whether the halt reason is IPO Deferred
.PARAMETER IsReasonHaltNewsDissemination
Gets whether the order acceptance period reason is Halt News Dissemination
.PARAMETER IsReasonIpoOrderAcceptancePeriod
Gets whether the order acceptance period reason is IPO Order Acceptance Period
.PARAMETER IsReasonIpoPreLaunchPeriod
Gets whether the order acceptance period reason is IPO Pre-Launch Period
.PARAMETER IsReasonMarketWideCircuitBreakerLevel1
Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 1 – Breached
.PARAMETER IsReasonMarketWideCircuitBreakerLevel2
Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 2 – Breached
.PARAMETER IsReasonMarketWideCircuitBreakerLevel3
Gets whether the halt reason is Market-Wide Circuit Breaker Level 3 – Breached
.PARAMETER IsReasonNotApplicable
Gets whether the reason is Not Applicable
.PARAMETER IsReasonNotAvailable
Gets whether the halt reason is Not Available
.OUTPUTS

AdminTradingStatusModel<PSCustomObject>
#>

function Initialize-AdminTradingStatusModel {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Symbol},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${TimestampNanos},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Timestamp},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsTradingLive},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsTradingHalted},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsTradingInOrderAcceptancePeriod},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsTradingPaused},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsReasonHaltNewsPending},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsReasonIpoNotYetTrading},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsReasonIpoDeferred},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsReasonHaltNewsDissemination},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsReasonIpoOrderAcceptancePeriod},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsReasonIpoPreLaunchPeriod},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsReasonMarketWideCircuitBreakerLevel1},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsReasonMarketWideCircuitBreakerLevel2},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsReasonMarketWideCircuitBreakerLevel3},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsReasonNotApplicable},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsReasonNotAvailable}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => AdminTradingStatusModel' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "symbol" = ${Symbol}
            "timestamp_nanos" = ${TimestampNanos}
            "timestamp" = ${Timestamp}
            "is_trading_live" = ${IsTradingLive}
            "is_trading_halted" = ${IsTradingHalted}
            "is_trading_in_order_acceptance_period" = ${IsTradingInOrderAcceptancePeriod}
            "is_trading_paused" = ${IsTradingPaused}
            "is_reason_halt_news_pending" = ${IsReasonHaltNewsPending}
            "is_reason_ipo_not_yet_trading" = ${IsReasonIpoNotYetTrading}
            "is_reason_ipo_deferred" = ${IsReasonIpoDeferred}
            "is_reason_halt_news_dissemination" = ${IsReasonHaltNewsDissemination}
            "is_reason_ipo_order_acceptance_period" = ${IsReasonIpoOrderAcceptancePeriod}
            "is_reason_ipo_pre_launch_period" = ${IsReasonIpoPreLaunchPeriod}
            "is_reason_market_wide_circuit_breaker_level1" = ${IsReasonMarketWideCircuitBreakerLevel1}
            "is_reason_market_wide_circuit_breaker_level2" = ${IsReasonMarketWideCircuitBreakerLevel2}
            "is_reason_market_wide_circuit_breaker_level3" = ${IsReasonMarketWideCircuitBreakerLevel3}
            "is_reason_not_applicable" = ${IsReasonNotApplicable}
            "is_reason_not_available" = ${IsReasonNotAvailable}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AdminTradingStatusModel<PSCustomObject>

.DESCRIPTION

Convert from JSON to AdminTradingStatusModel<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AdminTradingStatusModel<PSCustomObject>
#>
function ConvertFrom-JsonToAdminTradingStatusModel {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => AdminTradingStatusModel' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in AdminTradingStatusModel
        $AllProperties = ("symbol", "timestamp_nanos", "timestamp", "is_trading_live", "is_trading_halted", "is_trading_in_order_acceptance_period", "is_trading_paused", "is_reason_halt_news_pending", "is_reason_ipo_not_yet_trading", "is_reason_ipo_deferred", "is_reason_halt_news_dissemination", "is_reason_ipo_order_acceptance_period", "is_reason_ipo_pre_launch_period", "is_reason_market_wide_circuit_breaker_level1", "is_reason_market_wide_circuit_breaker_level2", "is_reason_market_wide_circuit_breaker_level3", "is_reason_not_applicable", "is_reason_not_available")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "symbol"))) { #optional property not found
            $Symbol = $null
        } else {
            $Symbol = $JsonParameters.PSobject.Properties["symbol"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "timestamp_nanos"))) { #optional property not found
            $TimestampNanos = $null
        } else {
            $TimestampNanos = $JsonParameters.PSobject.Properties["timestamp_nanos"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "timestamp"))) { #optional property not found
            $Timestamp = $null
        } else {
            $Timestamp = $JsonParameters.PSobject.Properties["timestamp"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "is_trading_live"))) { #optional property not found
            $IsTradingLive = $null
        } else {
            $IsTradingLive = $JsonParameters.PSobject.Properties["is_trading_live"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "is_trading_halted"))) { #optional property not found
            $IsTradingHalted = $null
        } else {
            $IsTradingHalted = $JsonParameters.PSobject.Properties["is_trading_halted"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "is_trading_in_order_acceptance_period"))) { #optional property not found
            $IsTradingInOrderAcceptancePeriod = $null
        } else {
            $IsTradingInOrderAcceptancePeriod = $JsonParameters.PSobject.Properties["is_trading_in_order_acceptance_period"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "is_trading_paused"))) { #optional property not found
            $IsTradingPaused = $null
        } else {
            $IsTradingPaused = $JsonParameters.PSobject.Properties["is_trading_paused"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "is_reason_halt_news_pending"))) { #optional property not found
            $IsReasonHaltNewsPending = $null
        } else {
            $IsReasonHaltNewsPending = $JsonParameters.PSobject.Properties["is_reason_halt_news_pending"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "is_reason_ipo_not_yet_trading"))) { #optional property not found
            $IsReasonIpoNotYetTrading = $null
        } else {
            $IsReasonIpoNotYetTrading = $JsonParameters.PSobject.Properties["is_reason_ipo_not_yet_trading"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "is_reason_ipo_deferred"))) { #optional property not found
            $IsReasonIpoDeferred = $null
        } else {
            $IsReasonIpoDeferred = $JsonParameters.PSobject.Properties["is_reason_ipo_deferred"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "is_reason_halt_news_dissemination"))) { #optional property not found
            $IsReasonHaltNewsDissemination = $null
        } else {
            $IsReasonHaltNewsDissemination = $JsonParameters.PSobject.Properties["is_reason_halt_news_dissemination"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "is_reason_ipo_order_acceptance_period"))) { #optional property not found
            $IsReasonIpoOrderAcceptancePeriod = $null
        } else {
            $IsReasonIpoOrderAcceptancePeriod = $JsonParameters.PSobject.Properties["is_reason_ipo_order_acceptance_period"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "is_reason_ipo_pre_launch_period"))) { #optional property not found
            $IsReasonIpoPreLaunchPeriod = $null
        } else {
            $IsReasonIpoPreLaunchPeriod = $JsonParameters.PSobject.Properties["is_reason_ipo_pre_launch_period"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "is_reason_market_wide_circuit_breaker_level1"))) { #optional property not found
            $IsReasonMarketWideCircuitBreakerLevel1 = $null
        } else {
            $IsReasonMarketWideCircuitBreakerLevel1 = $JsonParameters.PSobject.Properties["is_reason_market_wide_circuit_breaker_level1"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "is_reason_market_wide_circuit_breaker_level2"))) { #optional property not found
            $IsReasonMarketWideCircuitBreakerLevel2 = $null
        } else {
            $IsReasonMarketWideCircuitBreakerLevel2 = $JsonParameters.PSobject.Properties["is_reason_market_wide_circuit_breaker_level2"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "is_reason_market_wide_circuit_breaker_level3"))) { #optional property not found
            $IsReasonMarketWideCircuitBreakerLevel3 = $null
        } else {
            $IsReasonMarketWideCircuitBreakerLevel3 = $JsonParameters.PSobject.Properties["is_reason_market_wide_circuit_breaker_level3"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "is_reason_not_applicable"))) { #optional property not found
            $IsReasonNotApplicable = $null
        } else {
            $IsReasonNotApplicable = $JsonParameters.PSobject.Properties["is_reason_not_applicable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "is_reason_not_available"))) { #optional property not found
            $IsReasonNotAvailable = $null
        } else {
            $IsReasonNotAvailable = $JsonParameters.PSobject.Properties["is_reason_not_available"].value
        }

        $PSO = [PSCustomObject]@{
            "symbol" = ${Symbol}
            "timestamp_nanos" = ${TimestampNanos}
            "timestamp" = ${Timestamp}
            "is_trading_live" = ${IsTradingLive}
            "is_trading_halted" = ${IsTradingHalted}
            "is_trading_in_order_acceptance_period" = ${IsTradingInOrderAcceptancePeriod}
            "is_trading_paused" = ${IsTradingPaused}
            "is_reason_halt_news_pending" = ${IsReasonHaltNewsPending}
            "is_reason_ipo_not_yet_trading" = ${IsReasonIpoNotYetTrading}
            "is_reason_ipo_deferred" = ${IsReasonIpoDeferred}
            "is_reason_halt_news_dissemination" = ${IsReasonHaltNewsDissemination}
            "is_reason_ipo_order_acceptance_period" = ${IsReasonIpoOrderAcceptancePeriod}
            "is_reason_ipo_pre_launch_period" = ${IsReasonIpoPreLaunchPeriod}
            "is_reason_market_wide_circuit_breaker_level1" = ${IsReasonMarketWideCircuitBreakerLevel1}
            "is_reason_market_wide_circuit_breaker_level2" = ${IsReasonMarketWideCircuitBreakerLevel2}
            "is_reason_market_wide_circuit_breaker_level3" = ${IsReasonMarketWideCircuitBreakerLevel3}
            "is_reason_not_applicable" = ${IsReasonNotApplicable}
            "is_reason_not_available" = ${IsReasonNotAvailable}
        }

        return $PSO
    }

}

