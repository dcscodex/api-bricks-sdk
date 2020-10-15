function New-OrderExecutionReport {
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
        ${execUnderscoreinst},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${clientUnderscoreorderUnderscoreidUnderscoreformatUnderscoreexchange},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${exchangeUnderscoreorderUnderscoreid},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Decimal]
        ${amountUnderscoreopen},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Decimal]
        ${amountUnderscorefilled},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${avgUnderscorepx},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.OrdStatus]
        ${status},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [String[][]]
        ${statusUnderscorehistory},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${errorUnderscoremessage},
        [Parameter(Position = 19, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.Fills[]]
        ${fills}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.OrderExecutionReport' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.OrderExecutionReport -ArgumentList @(
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
            ${execUnderscoreinst},
            ${clientUnderscoreorderUnderscoreidUnderscoreformatUnderscoreexchange},
            ${exchangeUnderscoreorderUnderscoreid},
            ${amountUnderscoreopen},
            ${amountUnderscorefilled},
            ${avgUnderscorepx},
            ${status},
            ${statusUnderscorehistory},
            ${errorUnderscoremessage},
            ${fills}
        )
    }
}
