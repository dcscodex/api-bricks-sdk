#
# FinFeedAPI SEC REST API
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
# Version: v1
# Contact: support@apibricks.io
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Download file from SEC EDGAR archive

.DESCRIPTION

No description available.

.PARAMETER AccessionNo
SEC filing accession number in format: 0000000000-00-000000

.PARAMETER FileName
Name of the file to download from the filing

.PARAMETER ReturnType

Select the return type (optional): application/octet-stream, text/html, application/xml, text/plain, application/pdf, application/json

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-V1DownloadGet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${AccessionNo},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${FileName},
        [String]
        [ValidateSet("application/octet-stream", "text/html", "application/xml", "text/plain", "application/pdf", "application/json")]
        $ReturnType,
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-V1DownloadGet' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/octet-stream', 'text/html', 'application/xml', 'text/plain', 'application/pdf', 'application/json')

        if ($ReturnType) {
            # use the return type (MIME) provided by the user
            $LocalVarAccepts = @($ReturnType)
        }

        $LocalVarUri = '/v1/download'

        if (!$AccessionNo) {
            throw "Error! The required parameter `AccessionNo` missing when calling v1DownloadGet."
        }
        $LocalVarQueryParameters['accession_no'] = $AccessionNo

        if (!$FileName) {
            throw "Error! The required parameter `FileName` missing when calling v1DownloadGet."
        }
        $LocalVarQueryParameters['file_name'] = $FileName

        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["Authorization"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["Authorization"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["Authorization"]) {
            $LocalVarHeaderParameters['Authorization'] = $apiKeyPrefix + $Configuration["ApiKey"]["Authorization"]
            Write-Verbose ("Using API key 'Authorization' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }

        if ($Configuration["AccessToken"]) {
            $LocalVarHeaderParameters['Authorization'] = "Bearer " + $Configuration["AccessToken"]
            Write-Verbose ("Using Bearer authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

