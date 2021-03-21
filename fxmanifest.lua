--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
description 'The Ultimate RP Pack for RedM VORP'
author 'DevDokus Github'
version '1.1.0'

shared_script 'config.lua'

client_scripts { 'config.lua', '[Core]/[Client]/*.lua', '[Core]/[System]/[Client]/*.lua' }
server_scripts { 'config.lua', '[Core]/[Server]/*.lua', '[Core]/[System]/[Server]/*.lua' }
ui_page('[Core]/[HTML]/[Metabolism]/index.html')

files {
  "[Core]/[HTML]/[Metabolism]/script.js",
  "[Core]/[HTML]/[Metabolism]/styles.css",
  "[Core]/[HTML]/[Metabolism]/img/*.png",
  "[Core]/[HTML]/[Metabolism]/index.html",
}

fx_version "adamant"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
