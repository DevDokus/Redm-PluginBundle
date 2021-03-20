--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------


description 'The Ultimate RP Pack for RedM VORP'
author 'DevDokus Github'
version '1.1.0'

shared_script 'config.lua'

client_scripts {
  -- Core files
 'Core/_Core/client.lua',
 'config.lua',

 -- DevDokus RedM Metabolism
 'Core/FixHolesInMap/client.lua',
 'Core/Metabolism/Core/Client/meta.lua',
 'Core/Metabolism/Core/Client/hud.lua',
 'Core/Metabolism/config.lua',

 -- DevDokus RedM Stores
 'Core/Stores/warmenu.lua',
 'Core/Stores/functions.lua',
 'Core/Stores/client.lua',
 'Core/Stores/config.lua',

 -- DevDokus -- RedM Teleport Standalone
 'Core/Teleport/config.lua',
 'Core/Teleport/client.lua',

 -- DevDokus -- RedM Unable Items
 'Core/UsableItems/client.lua',
 'Core/UsableItems/config.lua',

 -- KiBook -- RedM iMaps
 'Core/iMaps/client.lua'
}


server_scripts {
  -- Core Files
 'Core/_Core/server.lua',
 'config.lua',

 -- DevDokus RedM Metabolism
 'Core/Metabolism/Core/Server/meta.lua',
 'Core/Metabolism/Core/Server/hud.lua',
 'Core/Metabolism/config.lua',

 -- DevDokus RedM Stores
 'Core/Stores/config.lua',
 'Core/Stores/functions.lua',
 'Core/Stores/server.lua',

 -- DevDokus -- RedM Teleport Standalone
 'Core/Teleport/config.lua',
 'Core/Teleport/server.lua',

 -- DevDokus -- RedM Unable Items
 'Core/UsableItems/config.lua',
 'Core/UsableItems/server.lua',
}

ui_page('Core/Metabolism/Html/index.html')

files {
  -- DevDokus -- RedM Metabolism
 "Core/Metabolism/Html/script.js",
 "Core/Metabolism/Html/jquery.min.js",
 "Core/Metabolism/Html/jquery-ui.min.js",
 "Core/Metabolism/Html/styles.css",
 "Core/Metabolism/Html/img/*.svg",
 "Core/Metabolism/Html/img/*.png",
 "Core/Metabolism/Html/index.html",
}


fx_version "adamant"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
