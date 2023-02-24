for i, zone in ipairs(Config.zones) do
    exports['ox_target']:AddBoxZone({
        coords = zone.coords,
        size = vec3(2, 2, 2),
        rotation = 45,
        options = {
            {
                name = zone.name,
                onSelect = function (data)
                    TriggerServerEvent("mdx-ice_cubes:giveIceCubes", i)
                end,
                icon = 'fa-solid fa-cube',
                label = zone.label,
            }
        }
    })
end