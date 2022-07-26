ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
local active = false

ESX.RegisterUsableItem('nightvision', function(source)
    if active == false then
       TriggerClientEvent('vision:on', source) 
       active = true
    else
        TriggerClientEvent('vision:off', source) 
        active = false
    end
end)