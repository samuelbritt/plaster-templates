function New-PowershellModule
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

        $templateName = "PowershellModule"
        $templateParameters = @{
            ModuleName = $Name
        }

        $params = @{
            Name = $templateName
            DestinationPath = $DestinationPath
            Parameters = $templateParameters
        }
        Invoke-PlasterTemplate @params
    }
}