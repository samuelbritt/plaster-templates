@{
    RootModule = 'PlasterTemplates.psm1'
    ModuleVersion = '1.0'
    GUID = 'b209c205-cddb-4c65-b312-2a9ec039ed17'
    RequiredModules = @(
        'Plaster'
    )
    FunctionsToExport = @(
        'Invoke-PlasterTemplate'
        'New-PowershellModule'
        'New-OpenApi'
    )
    AliasesToExport = @()
}
