-- Player load and unload handling
-- New method for checking if logged in across all scripts (optional)
-- if LocalPlayer.state['isLoggedIn'] then
RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    ShutdownLoadingScreenNui()
    LocalPlayer.state:set('isLoggedIn', true, false)
    SetPlayerTargetingMode(3)
    DisablePlayerVehicleRewards(PlayerId())
    if not QBConfig.Server.PVP then return end
    SetCanAttackFriendly(PlayerPedId(), true, false)
    NetworkSetFriendlyFireOption(true)
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
	LocalPlayer.state:set('isLoggedIn', false, false)
end)

RegisterNetEvent('QBCore:Client:PvpHasToggled', function(pvp_state)
	SetCanAttackFriendly(PlayerPedId(), pvp_state, false)
	NetworkSetFriendlyFireOption(pvp_state)
end)
-- Teleport Commands

RegisterNetEvent('QBCore:Command:TeleportToPlayer', function(coords)
	local ped = PlayerPedId()
	SetPedCoordsKeepVehicle(ped, coords.x, coords.y, coords.z)
end)

RegisterNetEvent('QBCore:Command:TeleportToCoords', function(x, y, z, h)
    local ped = PlayerPedId()
    SetPedCoordsKeepVehicle(ped, x, y, z)
    SetEntityHeading(ped, h or GetEntityHeading(ped))
end)

RegisterNetEvent('QBCore:Command:GoToMarker', function()
	local PlayerPedId = PlayerPedId
	local GetEntityCoords = GetEntityCoords
	local GetGroundZFor_3dCoord = GetGroundZFor_3dCoord

	local blipMarker <const> = GetFirstBlipInfoId(8)
	if not DoesBlipExist(blipMarker) then
		QBCore.Functions.Notify('No Waypoint Set.', "error", 5000)
		return 'marker'
	end

	-- Fade screen to hide how clients get teleported.
	DoScreenFadeOut(650)
	while not IsScreenFadedOut() do
		Wait(0)
	end

	local ped, coords <const> = PlayerPedId(), GetBlipInfoIdCoord(blipMarker)
	local vehicle = GetVehiclePedIsIn(ped, false)
	local oldCoords <const> = GetEntityCoords(ped)

	-- Unpack coords instead of having to unpack them while iterating.
	-- 825.0 seems to be the max a player can reach while 0.0 being the lowest.
	local x, y, groundZ, Z_START = coords['x'], coords['y'], 850.0, 950.0
	local found = false
	if vehicle > 0 then
		FreezeEntityPosition(vehicle, true)
	else
		FreezeEntityPosition(ped, true)
	end

	for i = Z_START, 0, -25.0 do
		local z = i
		if (i % 2) ~= 0 then
			z = Z_START - i
		end

		NewLoadSceneStart(x, y, z, x, y, z, 50.0, 0)
		local curTime = GetGameTimer()
		while IsNetworkLoadingScene() do
			if GetGameTimer() - curTime > 1000 then
				break
			end
			Wait(0)
		end
		NewLoadSceneStop()
		SetPedCoordsKeepVehicle(ped, x, y, z)

		while not HasCollisionLoadedAroundEntity(ped) do
			RequestCollisionAtCoord(x, y, z)
			if GetGameTimer() - curTime > 1000 then
				break
			end
			Wait(0)
		end

		-- Get ground coord. As mentioned in the natives, this only works if the client is in render distance.
		found, groundZ = GetGroundZFor_3dCoord(x, y, z, false);
		if found then
			Wait(0)
			SetPedCoordsKeepVehicle(ped, x, y, groundZ)
			break
		end
		Wait(0)
	end

	-- Remove black screen once the loop has ended.
	DoScreenFadeIn(650)
	if vehicle > 0 then
		FreezeEntityPosition(vehicle, false)
	else
		FreezeEntityPosition(ped, false)
	end

	if not found then
		-- If we can't find the coords, set the coords to the old ones.
		-- We don't unpack them before since they aren't in a loop and only called once.
		SetPedCoordsKeepVehicle(ped, oldCoords['x'], oldCoords['y'], oldCoords['z'] - 1.0)
		QBCore.Functions.Notify('Error While Teleporting.', "error", 5000)
	end

	-- If Z coord was found, set coords in found coords.
	SetPedCoordsKeepVehicle(ped, x, y, groundZ)
	QBCore.Functions.Notify('Teleported To Waypoint.', "success", 5000)
end)

-- Vehicle Commands

RegisterNetEvent('QBCore:Command:SpawnVehicle', function(vehName)
    local ped = PlayerPedId()
    local hash = joaat(vehName)
    local veh = GetVehiclePedIsUsing(ped)
    if not IsModelInCdimage(hash) then return end
    RequestModel(hash)
    while not HasModelLoaded(hash) do
        Wait(0)
    end

    if IsPedInAnyVehicle(ped) then
        SetEntityAsMissionEntity(veh, true, true)
        DeleteVehicle(veh)
    end

    local vehicle = CreateVehicle(hash, GetEntityCoords(ped), GetEntityHeading(ped), true, false)
    TaskWarpPedIntoVehicle(ped, vehicle, -1)
    SetVehicleFuelLevel(vehicle, 100.0)
    SetVehicleDirtLevel(vehicle, 0.0)
    SetModelAsNoLongerNeeded(hash)
    TriggerEvent('vehiclekeys:client:SetOwner', QBCore.Functions.GetPlate(vehicle))
end)

RegisterNetEvent('QBCore:Command:DeleteVehicle', function()
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsUsing(ped)
    if veh ~= 0 then
        SetEntityAsMissionEntity(veh, true, true)
        DeleteVehicle(veh)
    else
        local pcoords = GetEntityCoords(ped)
        local vehicles = GetGamePool('CVehicle')
        for _, v in pairs(vehicles) do
            if #(pcoords - GetEntityCoords(v)) <= 5.0 then
                SetEntityAsMissionEntity(v, true, true)
                DeleteVehicle(v)
            end
        end
    end
end)

RegisterNetEvent('QBCore:Client:VehicleInfo', function(info)
    local plate = QBCore.Functions.GetPlate(info.vehicle)
    local hasKeys = true

    if GetResourceState('qb-vehiclekeys') == 'started' then
        hasKeys = exports['qb-vehiclekeys']:HasKeys()
    end

    local data = {
        vehicle = info.vehicle,
        seat = info.seat,
        name = info.modelName,
        plate = plate,
        driver = GetPedInVehicleSeat(info.vehicle, -1),
        inseat = GetPedInVehicleSeat(info.vehicle, info.seat),
        haskeys = hasKeys
    }

    TriggerEvent('QBCore:Client:' .. info.event .. 'Vehicle', data)
end)


RegisterNetEvent('QBCore:Command:ChangeVehicleSound', function(sound)
	local ped = PlayerPedId()
	local veh = GetVehiclePedIsUsing(ped)
	NetworkRegisterEntityAsNetworked(veh)
	local netId = NetworkGetNetworkIdFromEntity(veh)
	TriggerServerEvent("QBCore:Server:ChangeVehicleSound", netId, sound)
end)

RegisterNetEvent('QBCore:Command:UpdateVehicleSound', function(vehicle, sound)
	if vehicle ~= 0 then
		local rv = NetworkGetEntityFromNetworkId(vehicle)
		ForceVehicleEngineAudio(rv, sound)
	end
end)

RegisterNetEvent('QBCore:Command:InitDelGun', function()
	if DelMode ~= 4 then
		DelMode = 4
		DelGunStartTime = GetGameTimer()
		QBCore.Functions.ShowStatusNotification("Delete Gun Enabled", "Unholster a gun, aim down sights to the vehicle or local citizen you want to remove and shoot! (no ammo required)")
	else
		DelMode = 0
		QBCore.Functions.HideStatusNotification()
	end
end)

RegisterNetEvent('QBCore:Client:ExecuteDelete', function(ent)
	NetworkRegisterEntityAsNetworked(ent)
	local netId = NetworkGetNetworkIdFromEntity(ent)
	TriggerServerEvent("QBCore:Server:BroadcastDelete", netId)
end)

RegisterNetEvent('QBCore:Client:HandleEntityDelete', function(netId)
	local ent = NetworkGetEntityFromNetworkId(netId)
	DeleteEntity(ent)
end)

-- Other stuff

RegisterNetEvent('QBCore:Player:SetPlayerData', function(val)
	QBCore.PlayerData = val
end)

RegisterNetEvent('QBCore:Player:UpdatePlayerData', function()
	TriggerServerEvent('QBCore:UpdatePlayer')
end)

RegisterNetEvent('QBCore:Client:Notify', function(text, type, length)
	QBCore.Functions.Notify(text, type, length)
end)

local notificationTypes = {
	"info",
	"error",
	"success"
}

RegisterNetEvent('QBCore:Client:LongNotify', function(text, color, time)
	local type = color and color or 1
	QBCore.Functions.Notify(text, notificationTypes[type], time or 10000)
end)

RegisterNetEvent('QBCore:Client:ShortNotify', function(text, color, time)
	local type = color and color or 1
	QBCore.Functions.Notify(text, notificationTypes[type], time or 3000)
end)

RegisterNetEvent('QBCore:Announce', function(text, length)
	QBCore.Functions.Announce(text, length or 10000)
end)

-- Callback Events --

-- Client Callback
RegisterNetEvent('QBCore:Client:TriggerClientCallback', function(name, ...)
    QBCore.Functions.TriggerClientCallback(name, function(...)
        TriggerServerEvent('QBCore:Server:TriggerClientCallback', name, ...)
    end, ...)
end)

-- Server Callback
RegisterNetEvent('QBCore:Client:TriggerCallback', function(name, ...)
	if QBCore.ServerCallbacks[name] then
		QBCore.ServerCallbacks[name](...)
		QBCore.ServerCallbacks[name] = nil
	end
end)

-- TODO: Remove this event when migrating to qb-inventory
RegisterNetEvent('QBCore:Client:UseItem', function(item)
	TriggerServerEvent('QBCore:Server:UseItem', item)
end)

-- TODO: Uncomment this event when migrating to qb-inventory
-- -- This event is exploitable and should not be used. It has been deprecated, and will be removed soon.
-- RegisterNetEvent('QBCore:Client:UseItem', function(item)
--     QBCore.Debug(string.format('%s triggered QBCore:Client:UseItem by ID %s with the following data. This event is deprecated due to exploitation, and will be removed soon. Check qb-inventory for the right use on this event.', GetInvokingResource(), GetPlayerServerId(PlayerId())))
--     QBCore.Debug(item)
-- end)

-- Me command

local function Draw3DText(coords, str)
	local onScreen, worldX, worldY = World3dToScreen2d(coords.x, coords.y, coords.z)
	local camCoords = GetGameplayCamCoord()
	local scale = 200 / (GetGameplayCamFov() * #(camCoords - coords))
	if onScreen then
		SetTextScale(1.0, 0.5 * scale)
		SetTextFont(4)
		SetTextColour(255, 255, 255, 255)
		SetTextEdge(2, 0, 0, 0, 150)
		SetTextProportional(1)
		SetTextOutline()
		SetTextCentre(1)
		BeginTextCommandDisplayText("STRING")
		AddTextComponentSubstringPlayerName(str)
		EndTextCommandDisplayText(worldX, worldY)
	end
end

RegisterNetEvent('QBCore:Command:ShowMe3D', function(senderId, msg)
	local sender = GetPlayerFromServerId(senderId)
	CreateThread(function()
		local displayTime = 5000 + GetGameTimer()
		while displayTime > GetGameTimer() do
			local targetPed = GetPlayerPed(sender)
			local tCoords = GetEntityCoords(targetPed)
			Draw3DText(tCoords, msg)
			Wait(0)
		end
	end)
end)

-- Listen to Shared being updated
RegisterNetEvent('QBCore:Client:OnSharedUpdate', function(tableName, key, value)
	QBCore.Shared[tableName][key] = value
	TriggerEvent('QBCore:Client:UpdateObject')
end)

RegisterNetEvent('QBCore:Client:OnSharedUpdateMultiple', function(tableName, values)
	for key, value in pairs(values) do
		if value then
			QBCore.Shared[tableName][key] = value
		end
	end
	TriggerEvent('QBCore:Client:UpdateObject')
end)

RegisterNetEvent('QBCore:Client:SharedUpdate', function(table)
    QBCore.Shared = table
end)
