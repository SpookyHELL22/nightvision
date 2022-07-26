ESX = nil
local PlayerData = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
        PlayerData = ESX.GetPlayerData()
	end
end)

RegisterNetEvent('vision:on')
AddEventHandler('vision:on', function ()
    SetNightvision(true)
    ESX.ShowNotification('~g~Bekapcsoltad az éjjellátót')
end)

RegisterNetEvent('vision:off')
AddEventHandler('vision:off', function ()
    SetNightvision(false)
    ESX.ShowNotification('~r~Kikapcsoltad az éjjellátót')
end)