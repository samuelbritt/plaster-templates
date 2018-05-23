@{
    RootModule = '<%= $PLASTER_PARAM_ModuleName %>.psm1'
    ModuleVersion = '0.0.1'
<% @"
    GUID = '$([System.Guid]::NewGuid())'
"@
%>
    RequiredModules = @()
    FunctionsToExport = @(
        'Invoke-<%= $PLASTER_PARAM_ModuleName %>'
    )
}
