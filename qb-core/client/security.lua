QBCore.Security = {}

local PlayerProfilePermissions = {}
local PlayerProfileRoles = {}

function QBCore.Security.ClearProfile()
    table.wipe(PlayerProfilePermissions)
    table.wipe(PlayerProfileRoles)
end

function QBCore.Security.ServerCheckPermissions(permissions)
    if (type(permissions) == "string") then
        permissions = { permissions }
    elseif (type(permissions) ~= "table") then
        error("core:security:invalid_type")
    end

    local filteredPermissions = mc9.table.filter(permissions, function(permission)
        return PlayerProfilePermissions[permission] == nil
    end)
    
    local response = mc9.callback.await("QBCore:Server:Security:CheckPermissions", filteredPermissions)
    if (response.status == false) then
        return error(response.message)
    end

    for permission, state in pairs(response.data) do
        PlayerProfilePermissions[permission] = state
    end
end

function QBCore.Security.HasPermission(permission)
    if (type(permission) ~= "string") then
        error("core:security:invalid_type")
    end

    QBCore.Security.ServerCheckPermissions({ permission })

    return PlayerProfilePermissions[permission]
end

function QBCore.Security.HasAllPermissions(permissions)
    if (type(permissions) ~= "table") then
        error("core:security:invalid_type")
    end

    QBCore.Security.ServerCheckPermissions(permissions)

    for _, permission in pairs(permissions) do
        if (not QBCore.Security.HasPermission(permission)) then
            return false
        end
    end

    return true, "core:security:permission_granted"
end

function QBCore.Security.HasAnyPermission(permissions)
    if (type(permissions) ~= "table") then
        error("core:security:invalid_type")
    end

    QBCore.Security.ServerCheckPermissions(permissions)

    for _, permission in pairs(permissions) do
        if (QBCore.Security.HasPermission(permission)) then
            return true
        end
    end

    return false
end

RegisterNetEvent("QBCore:Client:Security:ProfileChange", function()
    QBCore.Security.ClearProfile()
end)