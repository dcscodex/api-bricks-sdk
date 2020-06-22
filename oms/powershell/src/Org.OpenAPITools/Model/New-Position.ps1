function New-Position {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${exchangeUnderscorename},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.PositionData[]]
        ${data}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.Position' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.Position -ArgumentList @(
            ${type},
            ${exchangeUnderscorename},
            ${data}
        )
    }
}
