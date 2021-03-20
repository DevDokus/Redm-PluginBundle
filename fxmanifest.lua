--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------


description 'The Ultimate RP Pack for RedM VORP'
author 'DevDokus Github'
version '0.1.0'

shared_script 'config.lua'

client_scripts {
 'Core/_Core/client.lua',
 'config.lua',
 'Core/DevDokus--FixHolesInMap/client.lua',
 'Core/DevDokus--Metabolism/Core/Client/meta.lua',
 'Core/DevDokus--Metabolism/Core/Client/hud.lua',
 'Core/DevDokus--Metabolism/config.lua',

 'Core/DevDokus--Stores/warmenu.lua',
 'Core/DevDokus--Stores/functions.lua',
 'Core/DevDokus--Stores/client.lua',
 'Core/DevDokus--Stores/config.lua',

 'Core/DevDokus--Teleport/config.lua',
 'Core/DevDokus--Teleport/client.lua',

 'Core/DevDokus--UsableItems/client.lua',
 'Core/DevDokus--UsableItems/config.lua',
}


server_scripts {
 'Core/_Core/server.lua',
 'config.lua',
 'Core/DevDokus--Metabolism/Core/Server/meta.lua',
 'Core/DevDokus--Metabolism/Core/Server/hud.lua',
 'Core/DevDokus--Metabolism/config.lua',

 'Core/DevDokus--Stores/config.lua',
 'Core/DevDokus--Stores/functions.lua',
 'Core/DevDokus--Stores/server.lua',

 'Core/DevDokus--Teleport/config.lua',
 'Core/DevDokus--Teleport/server.lua',

 'Core/DevDokus--UsableItems/config.lua',
 'Core/DevDokus--UsableItems/server.lua',
}

ui_page('Core/DevDokus--Metabolism/Html/index.html')

files {
 "Core/DevDokus--Metabolism/Html/script.js",
 "Core/DevDokus--Metabolism/Html/jquery.min.js",
 "Core/DevDokus--Metabolism/Html/jquery-ui.min.js",
 "Core/DevDokus--Metabolism/Html/styles.css",
 "Core/DevDokus--Metabolism/Html/img/*.svg",
 "Core/DevDokus--Metabolism/Html/img/*.png",
 "Core/DevDokus--Metabolism/Html/index.html",
}


fx_version "adamant"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
