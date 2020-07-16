function New-OrderNewSingleRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${exchangeUnderscoreid},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${clientUnderscoreorderUnderscoreid},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${symbolUnderscoreidUnderscoreexchange},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${symbolUnderscoreidUnderscorecoinapi},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Decimal]
        ${amountUnderscoreorder},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Decimal]
        ${price},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.OrdSide]
        ${side},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.OrdType]
        ${orderUnderscoretype},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.TimeInForce]
        ${timeUnderscoreinUnderscoreforce},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${expireUnderscoretime},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${execUnderscoreinst}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.OrderNewSingleRequest' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.OrderNewSingleRequest -ArgumentList @(
            ${exchangeUnderscoreid},
            ${clientUnderscoreorderUnderscoreid},
            ${symbolUnderscoreidUnderscoreexchange},
            ${symbolUnderscoreidUnderscorecoinapi},
            ${amountUnderscoreorder},
            ${price},
            ${side},
            ${orderUnderscoretype},
            ${timeUnderscoreinUnderscoreforce},
            ${expireUnderscoretime},
            ${execUnderscoreinst}
        )
    }
}
