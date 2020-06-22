function New-Balance {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${exchangeUnderscorename},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.BalanceData[]]
        ${data}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.Balance' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.Balance -ArgumentList @(
            ${type},
            ${exchangeUnderscorename},
            ${data}
        )
    }
}
