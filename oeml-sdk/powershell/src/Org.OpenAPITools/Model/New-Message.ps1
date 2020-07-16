function New-Message {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.Severity]
        ${severity},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${exchangeUnderscoreid},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${message}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.Message' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.Message -ArgumentList @(
            ${type},
            ${severity},
            ${exchangeUnderscoreid},
            ${message}
        )
    }
}
