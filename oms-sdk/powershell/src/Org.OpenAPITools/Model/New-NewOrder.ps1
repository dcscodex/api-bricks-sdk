function New-NewOrder {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${exchangeUnderscoreid},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${clientUnderscoreorderUnderscoreid},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${symbolUnderscoreexchange},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${symbolUnderscorecoinapi},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${amountUnderscoreorder},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${price},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${side},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${orderUnderscoretype},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
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
        'Creating object: Org.OpenAPITools.Model.NewOrder' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.NewOrder -ArgumentList @(
            ${exchangeUnderscoreid},
            ${clientUnderscoreorderUnderscoreid},
            ${symbolUnderscoreexchange},
            ${symbolUnderscorecoinapi},
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
