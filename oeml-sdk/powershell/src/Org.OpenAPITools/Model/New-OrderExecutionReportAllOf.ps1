function New-OrderExecutionReportAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${clientUnderscoreorderUnderscoreidUnderscoreformatUnderscoreexchange},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${exchangeUnderscoreorderUnderscoreid},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Decimal]
        ${amountUnderscoreopen},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Decimal]
        ${amountUnderscorefilled},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${avgUnderscorepx},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.OrdStatus]
        ${status},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String[][]]
        ${statusUnderscorehistory},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${errorUnderscoremessage},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.Fills[]]
        ${fills}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.OrderExecutionReportAllOf' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.OrderExecutionReportAllOf -ArgumentList @(
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
