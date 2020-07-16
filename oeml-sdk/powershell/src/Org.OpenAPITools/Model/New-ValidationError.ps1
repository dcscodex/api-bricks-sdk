function New-ValidationError {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${title},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${status},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${traceId},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${errors}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ValidationError' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ValidationError -ArgumentList @(
            ${type},
            ${title},
            ${status},
            ${traceId},
            ${errors}
        )
    }
}
