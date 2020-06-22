function New-Order {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${exchangeUnderscorename},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.OrderData[]]
        ${data}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.Order' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.Order -ArgumentList @(
            ${type},
            ${exchangeUnderscorename},
            ${data}
        )
    }
}
