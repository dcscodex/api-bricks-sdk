function New-MessagesOk {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${exchangeUnderscoreid},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${message}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.MessagesOk' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.MessagesOk -ArgumentList @(
            ${type},
            ${exchangeUnderscoreid},
            ${message}
        )
    }
}
