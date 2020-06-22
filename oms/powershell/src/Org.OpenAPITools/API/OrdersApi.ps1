function Invoke-OrdersApiV1OrdersCancelAllPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.CancelAllOrder]
        ${cancelAllOrder}
    )

    Process {
        'Calling method: OrdersApi-V1OrdersCancelAllPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:OrdersApi.V1OrdersCancelAllPost(
            ${cancelAllOrder}
        )
    }
}

function Invoke-OrdersApiV1OrdersCancelPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.CancelOrder]
        ${cancelOrder}
    )

    Process {
        'Calling method: OrdersApi-V1OrdersCancelPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:OrdersApi.V1OrdersCancelPost(
            ${cancelOrder}
        )
    }
}

function Invoke-OrdersApiV1OrdersGet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${exchangeId}
    )

    Process {
        'Calling method: OrdersApi-V1OrdersGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:OrdersApi.V1OrdersGet(
            ${exchangeId}
        )
    }
}

function Invoke-OrdersApiV1OrdersPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.NewOrder]
        ${newOrder}
    )

    Process {
        'Calling method: OrdersApi-V1OrdersPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:OrdersApi.V1OrdersPost(
            ${newOrder}
        )
    }
}

