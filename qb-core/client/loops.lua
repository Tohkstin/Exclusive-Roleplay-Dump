CreateThread(function()
    while true do
        Wait(0)
        if NetworkIsPlayerActive(PlayerId()) then
            TriggerEvent("QBCore:Client:ClientGameReady")
            TriggerServerEvent("QBCore:Server:ClientGameReady")
            break
        end
    end
end)

CreateThread(function()
    local sleep = (1000 * 60) * QBCore.Config.UpdateInterval
    while true do
        if LocalPlayer.state.isLoggedIn then
            TriggerServerEvent('QBCore:UpdatePlayer')
        end
        Wait(sleep)
    end
end)

CreateThread(function()
    while true do
        if LocalPlayer.state.isLoggedIn then
            if (QBCore.Config.Player.EnableStatusWarning) then
                if (QBCore.PlayerData.metadata["hunger"] <= 20 or QBCore.PlayerData.metadata["thirst"] <= 20) then
                    SendNUIMessage({ action = "ENABLE_RED_FLASH" })
                else
                    SendNUIMessage({ action = "DISABLE_RED_FLASH" })
                end
            end
            if (QBCore.PlayerData.metadata['hunger'] <= 0 or QBCore.PlayerData.metadata['thirst'] <= 0) and not (QBCore.PlayerData.metadata['isdead'] or QBCore.PlayerData.metadata['inlaststand']) then
                local ped = PlayerPedId()
                local currentHealth = GetEntityHealth(ped)
                local decreaseThreshold = math.random(5, 10)
                SetEntityHealth(ped, currentHealth - decreaseThreshold)
            end
        end
        Wait(QBCore.Config.StatusInterval)
    end
end)

DelMode = 0
DelGunStartTime = 0

CreateThread(function()
    local sleep = 1000
    local highligted
    while true do
        if DelMode == 4 then
            local playerId = PlayerId()
            if IsPlayerFreeAiming(playerId) then
                sleep = 5
                local hit, ent = GetEntityPlayerIsFreeAimingAt(playerId)
                if hit then
                    if IsControlPressed(0, 24) then
                        DelGunStartTime = GetGameTimer()
                        sleep = 800
                        TriggerEvent("QBCore:Client:ExecuteDelete", ent)
                    end
                end
            end
            if GetGameTimer() - DelGunStartTime > QBConfig.DelGunTimeout then
                TriggerEvent('QBCore:Command:InitDelGun')
            end
        end
        Wait(sleep)
    end
end)

CreateThread(function()
    while true do
        DisablePlayerVehicleRewards(PlayerId())
        SetPlayerTargetingMode(3) -- Aim Assist Mode
        Wait(5)
    end
end)


-- -- Stress Gain

-- local function IsStressfulClass(vehicle)
-- 	local class = GetVehicleClass(vehicle)
-- 	return class ~= 8 and class < 13 and class > 16 and class < 21
-- end

-- CreateThread(function()
-- 	-- Speeding
-- 	while true do
-- 		if LocalPlayer.state.isLoggedIn then
-- 			local ped = PlayerPedId()
-- 			local veh = GetVehiclePedIsIn(ped, false)
-- 			if veh then
-- 				local speed = GetEntitySpeed(veh)
-- 				local stressSpeed = (LocalPlayer.state.seatbelt or not IsStressfulClass(veh)) and QBConfig.Player.MinimumStressSpeedBuckled or QBConfig.Player.MinimumStressSpeed
-- 				if speed >= stressSpeed then
-- 					TriggerServerEvent('QBCore:Server:GainStress', (speed + math.random(50, 250)) * 0.005)
-- 				end
-- 			end
-- 		end
-- 		Wait(10000)
-- 	end
-- end)

-- CreateThread(function()
-- 	local ShootingBlockedWeapons = {
-- 		`WEAPON_UNARMED`,
-- 		`WEAPON_PETROLCAN`,
-- 		`WEAPON_FIREEXTINGUISHER`,
-- 	}

-- 	-- Shooting
-- 	while true do
-- 		if LocalPlayer.state.isLoggedIn then
-- 			local ped = PlayerPedId()
-- 			local weapon = GetSelectedPedWeapon(ped)
-- 			local isBlockedWeapon = false

-- 			for k,v in pairs(ShootingBlockedWeapons) do
-- 				if (v == weapon) then
-- 					isBlockedWeapon = true
-- 				end
-- 			end

-- 			if isBlockedWeapon then
-- 				Wait(1000)
-- 			else
-- 				if IsPedShooting(ped) then
-- 					if math.random(0, 100) < QBConfig.Player.ShootingStressChallenge then
-- 						TriggerServerEvent('QBCore:Server:GainStress', math.random(1, 60) * 0.005)
-- 					end
-- 				end
-- 			end
-- 		end
-- 		Wait(8)
-- 	end
-- end)

-- -- Stress Screen Effects

-- local StressIntensity = {
-- 	["blur"] = {
-- 		[1] = {
-- 			min = 50,
-- 			max = 60,
-- 			intensity = 1500,
-- 		},
-- 		[2] = {
-- 			min = 60,
-- 			max = 70,
-- 			intensity = 2000,
-- 		},
-- 		[3] = {
-- 			min = 70,
-- 			max = 80,
-- 			intensity = 2500,
-- 		},
-- 		[4] = {
-- 			min = 80,
-- 			max = 90,
-- 			intensity = 2700,
-- 		},
-- 		[5] = {
-- 			min = 90,
-- 			max = 100,
-- 			intensity = 3000,
-- 		},
-- 	}
-- }

-- local StressEffectInterval = {
-- 	[1] = {
-- 		min = 50,
-- 		max = 60,
-- 		timeout = math.random(50000, 60000)
-- 	},
-- 	[2] = {
-- 		min = 60,
-- 		max = 70,
-- 		timeout = math.random(40000, 50000)
-- 	},
-- 	[3] = {
-- 		min = 70,
-- 		max = 80,
-- 		timeout = math.random(30000, 40000)
-- 	},
-- 	[4] = {
-- 		min = 80,
-- 		max = 90,
-- 		timeout = math.random(20000, 30000)
-- 	},
-- 	[5] = {
-- 		min = 90,
-- 		max = 100,
-- 		timeout = math.random(15000, 20000)
-- 	}
-- }

-- local function GetBlurIntensity(stresslevel)
-- 	for _, v in pairs(StressIntensity['blur']) do
-- 		if stresslevel >= v.min and stresslevel <= v.max then
-- 			return v.intensity
-- 		end
-- 	end
-- 	return 1500
-- end

-- local function GetEffectInterval(stresslevel)
-- 	for _, v in pairs(StressEffectInterval) do
-- 		if stresslevel >= v.min and stresslevel <= v.max then
-- 			return v.timeout
-- 		end
-- 	end
-- 	return 60000
-- end

-- CreateThread(function()
-- 	while true do
-- 		if LocalPlayer.state.isLoggedIn then
-- 			local ped = PlayerPedId()
-- 			local stress = QBCore.PlayerData.metadata.stress
-- 			local effectInterval = GetEffectInterval(stress)
-- 			if stress >= 95 then
-- 				local BlurIntensity = GetBlurIntensity(stress)
-- 				local FallRepeat = math.random(2, 4)
-- 				local RagdollTimeout = FallRepeat * 1750
-- 				TriggerScreenblurFadeIn(1000.0)
-- 				Wait(BlurIntensity)
-- 				TriggerScreenblurFadeOut(1000.0)

-- 				if IsPedOnFoot(ped) and not IsPedInAnyVehicle(ped) and not IsPedRagdoll(ped) and not IsPedSwimming(ped) then
-- 					SetPedToRagdollWithFall(ped, RagdollTimeout, RagdollTimeout, 1, GetEntityForwardVector(ped), 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
-- 				end

-- 				Wait(1000)
-- 				for _ = 1, FallRepeat, 1 do
-- 					Wait(750)
-- 					DoScreenFadeOut(200)
-- 					Wait(1000)
-- 					DoScreenFadeIn(200)
-- 					TriggerScreenblurFadeIn(1000.0)
-- 					Wait(BlurIntensity)
-- 					TriggerScreenblurFadeOut(1000.0)
-- 				end
-- 			elseif stress >= QBConfig.Player.MinimumEffectStress then
-- 				local BlurIntensity = GetBlurIntensity(stress)
-- 				TriggerScreenblurFadeIn(1000.0)
-- 				Wait(BlurIntensity)
-- 				TriggerScreenblurFadeOut(1000.0)
-- 			end
-- 			Wait(effectInterval)
-- 		else
-- 			Wait(1000)
-- 		end
-- 	end
-- end)
