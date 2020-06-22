function Invoke-BalancesApiV1BalancesGet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${exchangeId}
    )

    Process {
        'Calling method: BalancesApi-V1BalancesGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:BalancesApi.V1BalancesGet(
            ${exchangeId}
        )
    }
}

