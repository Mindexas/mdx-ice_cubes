
# mdx-ice_cubes

A very basic, 95% I'm sure broken and not working, script that utilizes ox_target to give a RP sense of getting ice cubes in a bar.

This script was created as a joke.


## Configuration

You may add your own ice cube dispensers by editing the config.lua file
```lua
zones = {
        {
            name = "StripClub-Ice", -- Name the location for your convenience
            label = "Get your ice cubes", -- This will show to whoever is trying to get the icecubes
            coords = vector3(127.8957, -1281.8503, 30.0076), -- Add the coordinates in vec3
            distance = 5, -- Distance (Primarily used as an "Anticheat" kind of thing)
            items = { "ice" }, -- YOU NEED TO CREATE THIS ON YOUR OWN -- Self-Explanitory: Should probably be ice
        },
    },
```


## Contributing

Contributions are always welcome!

Please submit an issue if you have any bugs/suggestions for the code.


## License

[MIT](https://choosealicense.com/licenses/mit/)

