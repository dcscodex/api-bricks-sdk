function New-OrderCancelSingleRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${exchangeUnderscoreid},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${exchangeUnderscoreorderUnderscoreid},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${clientUnderscoreorderUnderscoreid}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.OrderCancelSingleRequest' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.OrderCancelSingleRequest -ArgumentList @(
            ${exchangeUnderscoreid},
            ${exchangeUnderscoreorderUnderscoreid},
            ${clientUnderscoreorderUnderscoreid}
        )
    }
}
