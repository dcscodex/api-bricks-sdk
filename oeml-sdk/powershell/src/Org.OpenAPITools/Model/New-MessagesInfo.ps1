function New-MessagesInfo {
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
        ${errorUnderscoremessage}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.MessagesInfo' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.MessagesInfo -ArgumentList @(
            ${type},
            ${exchangeUnderscoreid},
            ${errorUnderscoremessage}
        )
    }
}
