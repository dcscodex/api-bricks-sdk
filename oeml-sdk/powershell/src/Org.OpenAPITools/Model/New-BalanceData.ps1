function New-BalanceData {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${assetUnderscoreidUnderscoreexchange},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${assetUnderscoreidUnderscorecoinapi},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${balance},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${available},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${locked},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${lastUnderscoreupdatedUnderscoreby},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${rateUnderscoreusd},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${traded}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.BalanceData' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.BalanceData -ArgumentList @(
            ${assetUnderscoreidUnderscoreexchange},
            ${assetUnderscoreidUnderscorecoinapi},
            ${balance},
            ${available},
            ${locked},
            ${lastUnderscoreupdatedUnderscoreby},
            ${rateUnderscoreusd},
            ${traded}
        )
    }
}
