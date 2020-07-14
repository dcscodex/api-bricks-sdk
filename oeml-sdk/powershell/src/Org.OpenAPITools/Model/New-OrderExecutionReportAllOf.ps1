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
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.OrdStatus]
        ${status},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String[][]]
        ${timeUnderscoreorder},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${errorUnderscoremessage}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.OrderExecutionReportAllOf' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.OrderExecutionReportAllOf -ArgumentList @(
            ${clientUnderscoreorderUnderscoreidUnderscoreformatUnderscoreexchange},
            ${exchangeUnderscoreorderUnderscoreid},
            ${amountUnderscoreopen},
            ${amountUnderscorefilled},
            ${status},
            ${timeUnderscoreorder},
            ${errorUnderscoremessage}
        )
    }
}
