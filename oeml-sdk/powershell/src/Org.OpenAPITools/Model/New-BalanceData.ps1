function New-BalanceData {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${symbolUnderscoreexchange},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${symbolUnderscorecoinapi},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${balance},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${available},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${locked},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${updateUnderscoreorigin}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.BalanceData' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.BalanceData -ArgumentList @(
            ${id},
            ${symbolUnderscoreexchange},
            ${symbolUnderscorecoinapi},
            ${balance},
            ${available},
            ${locked},
            ${updateUnderscoreorigin}
        )
    }
}
