for i, zone in ipairs(Config.zones) do
    exports['ox_target']:AddBoxZone({
        coords = zone.coords,
        size = vec3(2, 2, 2),
        rotation = 45,
        options = {
            {
                name = zone.name,
                event = 'mdx-ice_cubes:CL(i)',
                icon = 'fa-solid fa-cube',
                label = zone.label,
            }
        }
    })
end

AddEventHandler("mdx-ice_cubes:CL", function(zoneIndex)
    TriggerServerEvent("mdx-ice_cubes:giveIceCubes", zoneIndex)
end)