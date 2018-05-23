$modulePath = Split-Path $PSScriptRoot
$moduleName = Split-Path $modulePath -Leaf
Import-Module "$(Join-Path $modulePath $moduleName).psd1" -Force

InModuleScope $moduleName {
    Describe 'Invoke-<%= $PLASTER_PARAM_ModuleName %>' {
        Set-StrictMode -Version Latest

        It "Should not throw" {
            { Invoke-<%= $PLASTER_PARAM_ModuleName %> } | Should Not Throw
        }
    }
}