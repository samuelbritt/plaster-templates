function New-OpenApi
{
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string] $Name,
        [Parameter()]
        [string] $DestinationPath = $PWD
    )
    process
    {
        Set-StrictMode -Version Latest

        $templateName = "OpenApi"
        $templateParameters = @{
            ApiName = $Name
        }

        $params = @{
            Name = $templateName
            DestinationPath = $DestinationPath
            Parameters = $templateParameters
        }
        Invoke-PlasterTemplate @params
    }
}