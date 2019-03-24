function Invoke-PlasterTemplate
{
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [ValidateSet('PowershellModule', 'OpenApi')]
        [string] $Name,

        [Parameter()]
        [string] $DestinationPath = $PWD,

        [Parameter()]
        [hashtable] $Parameters = @{}
    )
    process
    {
        Set-StrictMode -Version Latest

        $templateDir = "$PSScriptRoot\..\assets\$Name"
        $templateManifest = Join-Path $templateDir 'plasterManifest.xml'
        if (!(Test-Path $templateManifest))
        {
            throw ($script:Errors.INVALID_TEMPLATE -f $Name)
        }

        if (!(Test-Path $DestinationPath))
        {
            throw ($script:Errors.INVALID_PATH -f $DestinationPath)
        }

        $plasterParams = @{
            TemplatePath = $templateDir
            DestinationPath = $DestinationPath
            NoLogo = $true
        }
        Invoke-Plaster @plasterParams @Parameters
    }
}