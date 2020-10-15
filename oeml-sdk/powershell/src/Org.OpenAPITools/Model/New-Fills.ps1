function New-Fills {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${time},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${price},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${amount}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.Fills' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.Fills -ArgumentList @(
            ${time},
            ${price},
            ${amount}
        )
    }
}
