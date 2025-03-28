QBCore = {}
QBCore.PlayerData = {}
QBCore.Config = QBConfig
QBCore.Shared = QBShared
QBCore.ClientCallbacks = {}
QBCore.ServerCallbacks = {}
local GotUpdates
local Updating

exports('GetCoreObject', function()
	CreateThread(function()
		if not GotUpdates and not Updating then
			Updating = true
			QBCore.Functions.TriggerCallback('QBCore:Server:GetObjectUpdates', function(objectUpdates)
				for key, list in pairs(objectUpdates) do
					if list then
						for itemKey, item in pairs(list) do
							QBShared[key][itemKey] = item
							QBCore.Shared[key][itemKey] = item
						end
					end
				end
				GotUpdates = true
				Updating = false
				TriggerEvent('QBCore:Client:UpdateObject')
			end)
		end
	end)
	return QBCore
end)
