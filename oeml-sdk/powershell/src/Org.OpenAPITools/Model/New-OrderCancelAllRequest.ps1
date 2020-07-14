function New-OrderCancelAllRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${exchangeUnderscoreid}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.OrderCancelAllRequest' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.OrderCancelAllRequest -ArgumentList @(
            ${exchangeUnderscoreid}
        )
    }
}
