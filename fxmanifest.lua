fx_version 'cerulean'

game 'gta5'
lua54 'yes'

name 'mdx-ice_cubes'
author 'Mindexas#0001'
version 'v0.1'
description 'A script that adds ice cubes to the game. Literally useless and made as a joke.'


-- Specify the resource scripts to load
client_scripts {
    'config.lua',
    'client.lua',
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    '@es_extended/locale.lua',
    'config.lua',
    'server.lua',
}

-- Specify the dependencies
dependencies {
    'qtarget', -- Replace with 'ox_target' if desired
}