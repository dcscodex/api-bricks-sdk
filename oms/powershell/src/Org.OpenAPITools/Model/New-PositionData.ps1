function New-PositionData {
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
        [System.Nullable[Decimal]]
        ${avgUnderscoreentryUnderscoreprice},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${quantity},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${isUnderscorebuy},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${unrealisedUnderscorepnUnderscorel},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${leverage},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${crossUnderscoremargin},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${liquidationUnderscoreprice},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${rawUnderscoredata}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.PositionData' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.PositionData -ArgumentList @(
            ${id},
            ${symbolUnderscoreexchange},
            ${symbolUnderscorecoinapi},
            ${avgUnderscoreentryUnderscoreprice},
            ${quantity},
            ${isUnderscorebuy},
            ${unrealisedUnderscorepnUnderscorel},
            ${leverage},
            ${crossUnderscoremargin},
            ${liquidationUnderscoreprice},
            ${rawUnderscoredata}
        )
    }
}
