function New-Position {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${exchangeUnderscoreid},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.PositionData[]]
        ${data}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.Position' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.Position -ArgumentList @(
            ${exchangeUnderscoreid},
            ${data}
        )
    }
}
