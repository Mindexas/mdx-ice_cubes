local nearbyPlayers = {}
local ESX = nil
TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)

Citizen.CreateThread(function()
    while true do
        for _, player in ipairs(GetPlayers()) do
            local ped = GetPlayerPed(player)
            local coords = GetEntityCoords(ped)
            nearbyPlayers[player] = false

            for _, zone in ipairs(Config.zones) do
                if #(coords - zone.coords) < zone.distance then
                    nearbyPlayers[player] = true
                    break
                end
            end
        end
        Citizen.Wait(1000)
    end
end)

RegisterServerEvent("mdx-ice_cubes:giveIceCubes")
AddEventHandler("mdx-ice_cubes:giveIceCubes", function(zoneIndex)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local zone = Config.zones[zoneIndex]

    if nearbyPlayers[_source] then
        for _, item in ipairs(zone.items) do
            local itemName, itemCount = string.match(item, "(.*):(.*)")
            itemCount = tonumber(itemCount)
            xPlayer.addInventoryItem(itemName, itemCount)
        end
    else
        DropPlayer(_source, "Don't you have another stuff to do instead of trying to cheat ice cubes? Maybe don't cheat at all...")
    end
end)