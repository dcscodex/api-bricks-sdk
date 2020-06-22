#region Import functions

'API', 'Model', 'Private' | Get-ChildItem -Path {
    Join-Path $PSScriptRoot $_
} -Filter '*.ps1' | ForEach-Object {
    Write-Verbose "Importing file: $($_.BaseName)"
    try {
        . $_.FullName
    } catch {
        Write-Verbose "Can't import function!"
    }
}

#endregion


#region Initialize APIs

'Creating object: Org.OpenAPITools.Api.BalancesApi' | Write-Verbose
$Script:BalancesApi= New-Object -TypeName Org.OpenAPITools.Api.BalancesApi -ArgumentList @($null)

'Creating object: Org.OpenAPITools.Api.OrdersApi' | Write-Verbose
$Script:OrdersApi= New-Object -TypeName Org.OpenAPITools.Api.OrdersApi -ArgumentList @($null)

'Creating object: Org.OpenAPITools.Api.PositionsApi' | Write-Verbose
$Script:PositionsApi= New-Object -TypeName Org.OpenAPITools.Api.PositionsApi -ArgumentList @($null)


#endregion
