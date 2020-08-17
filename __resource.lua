client_script 'framemonitor_cl.lua'

dependency 'mysql-async'

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'framemonitor_sv.lua' 
}