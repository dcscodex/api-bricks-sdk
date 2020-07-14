function New-PositionData {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${symbolUnderscoreidUnderscoreexchange},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${symbolUnderscoreidUnderscorecoinapi},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${avgUnderscoreentryUnderscoreprice},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${quantity},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.OrdSide]
        ${side},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${unrealizedUnderscorepnl},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${leverage},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${crossUnderscoremargin},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${liquidationUnderscoreprice},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${rawUnderscoredata}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.PositionData' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.PositionData -ArgumentList @(
            ${symbolUnderscoreidUnderscoreexchange},
            ${symbolUnderscoreidUnderscorecoinapi},
            ${avgUnderscoreentryUnderscoreprice},
            ${quantity},
            ${side},
            ${unrealizedUnderscorepnl},
            ${leverage},
            ${crossUnderscoremargin},
            ${liquidationUnderscoreprice},
            ${rawUnderscoredata}
        )
    }
}
