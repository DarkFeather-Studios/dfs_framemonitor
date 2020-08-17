fx_version 'bodacious'

game 'gta5'

description 'FPS Monitor'

version '1.0'

client_script 'framemonitor_cl.lua'

dependency 'mysql-async'

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'framemonitor_sv.lua' 
}