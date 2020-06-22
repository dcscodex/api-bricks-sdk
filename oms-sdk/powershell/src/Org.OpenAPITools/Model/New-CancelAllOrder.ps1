function New-CancelAllOrder {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${exchangeUnderscoreid}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.CancelAllOrder' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.CancelAllOrder -ArgumentList @(
            ${exchangeUnderscoreid}
        )
    }
}
