function New-Balance {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${exchangeUnderscoreid},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.BalanceData[]]
        ${data}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.Balance' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.Balance -ArgumentList @(
            ${exchangeUnderscoreid},
            ${data}
        )
    }
}
