fx_version 'cerulean'
game 'gta5'

author 'MSHDEV'
description 'Adrenalin'

shared_scripts {
    '@ox_lib/init.lua',
     '@ox_core/lib/init.lua',
}

client_scripts {
 'client.lua'
}
server_script {
       'server.lua'
}

lua54 'yes'