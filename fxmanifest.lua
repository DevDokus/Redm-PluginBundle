--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
description 'The Ultimate RP Pack for RedM VORP'
author 'DevDokus Github'
version '1.4.1'

shared_script 'config.lua'

client_scripts { 'config.lua', '[Core]/[Vorp]/[Client]/*.lua', '[Core]/[System]/[Client]/*.lua' }
server_scripts { 'config.lua', '[Core]/[Vorp]/[Server]/*.lua', '[Core]/[System]/[Server]/*.lua' }
ui_page('[Core]/[Vorp]/[HTML]/index.html')

files {
  "[Core]/[Vorp]/[HTML]/script.js",
  "[Core]/[Vorp]/[HTML]/styles.css",
  "[Core]/[Vorp]/[HTML]/img/Hud/*.png",
  "[Core]/[Vorp]/[HTML]/index.html",
  "[Core]/[Vorp]/[HTML]/img/Cards/*.png",
}

fx_version "adamant"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
