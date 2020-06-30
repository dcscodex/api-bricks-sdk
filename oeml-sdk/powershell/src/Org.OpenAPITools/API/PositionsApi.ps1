function Invoke-PositionsApiV1PositionsGet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${exchangeId}
    )

    Process {
        'Calling method: PositionsApi-V1PositionsGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:PositionsApi.V1PositionsGet(
            ${exchangeId}
        )
    }
}

