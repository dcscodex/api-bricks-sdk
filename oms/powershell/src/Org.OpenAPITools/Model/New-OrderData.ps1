function New-OrderData {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${exchangeUnderscoreid},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${id},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${clientUnderscoreorderUnderscoreidUnderscoreformatUnderscoreexchange},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${exchangeUnderscoreorderUnderscoreid},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${amountUnderscoreopen},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${amountUnderscorefilled},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.OrderStatus]
        ${status},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String[][]]
        ${timeUnderscoreorder},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${errorUnderscoremessage},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${clientUnderscoreorderUnderscoreid},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${symbolUnderscoreexchange},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${symbolUnderscorecoinapi},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${amountUnderscoreorder},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${price},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${side},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${orderUnderscoretype},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.TimeInForce]
        ${timeUnderscoreinUnderscoreforce},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${expireUnderscoretime},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${execUnderscoreinst}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.OrderData' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.OrderData -ArgumentList @(
            ${exchangeUnderscoreid},
            ${id},
            ${clientUnderscoreorderUnderscoreidUnderscoreformatUnderscoreexchange},
            ${exchangeUnderscoreorderUnderscoreid},
            ${amountUnderscoreopen},
            ${amountUnderscorefilled},
            ${status},
            ${timeUnderscoreorder},
            ${errorUnderscoremessage},
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
