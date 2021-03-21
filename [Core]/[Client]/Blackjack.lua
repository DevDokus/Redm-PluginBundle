--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
function Wait(args) Citizen.Wait(args) end
function Invoke(args, bool) Citizen.InvokeNative(args, bool) end
--------------------------------------------------------------------------------
-- Variables
local MenuOpen = false
local ActiveMenu = nil
local ThisTable = nil
--------------------------------------------------------------------------------
-- Core
--------------------------------------------------------------------------------
Citizen.CreateThread(function()
  CreateMenus()
end)

Citizen.CreateThread(function()
  Wait(500)
  local ped = PlayerPedId()

  while true do Wait(1)
    local E = IsControlJustPressed(0, Keys['E'])
    local Backspace = IsControlJustPressed(0, Keys['Backspace'])
    local coords = GetEntityCoords(ped)
    for k, v in pairs(Blackjack.Tables) do
      local x, y, z = v.x, v.y, v.z
      local dist = GetDistanceBetweenCoords(coords, x, y, z)

      if (dist <= Blackjack.Radius) then
        if E then
          ThisTable = v.ID
          MenuOpen = true
          ActiveMenu = 'BJHome'
          WarMenu.OpenMenu('BJHome')
          TriggerEvent('DevDokus:CardGames:C:StartMenu')
        end

        if Backspace then
          if ActiveMenu == 'BJHome' then WarMenu.CloseMenu() ActiveMenu = nil MenuOpen = false ThisTable = nil
          elseif ActiveMenu == 'BlackMenu' then WarMenu.OpenMenu('BJHome') ActiveMenu = 'BJHome'
          elseif ActiveMenu == 'PokerMenu' then WarMenu.OpenMenu('BJHome') ActiveMenu = 'BJHome'
          end
        end
      end
    end
  end
end)

RegisterNetEvent('DevDokus:CardGames:C:StartMenu')
AddEventHandler('DevDokus:CardGames:C:StartMenu', function()
  Citizen.CreateThread(function()
    CreateMenus()
    TriggerServerEvent('DevDokus:Metabolism:S:Console', {'Log'})
    while ActiveMenu do Wait(1)
      local War = WarMenu.IsMenuOpened
      if War('BJHome') then BJHome()
      elseif War('BlackMenu') then BlackMenu()
      elseif War('PokerMenu') then PokerMenu()
      end
    end
  end)
end)

-- WarMenu
function CreateMenus()
  WarMenu.CreateMenu('BJHome', 'Card Games')
  WarMenu.SetSubTitle('BJHome', 'Made By DevDokus')
  WarMenu.CreateMenu('BlackMenu', 'Blackjack')
  WarMenu.SetSubTitle('BlackMenu', 'Made By DevDokus')
  WarMenu.CreateMenu('PokerMenu', 'Poker')
  WarMenu.SetSubTitle('PokerMenu', 'Made By DevDokus')
end

--------------------------------------------------------------------------------
-- Page 1 - Home Page
--------------------------------------------------------------------------------
function BJHome ()
  ActiveMenu = 'BJHome'
  local BJ = WarMenu.Button('BlackJack', '', 'Play Blackjack')
  local PP = WarMenu.Button('Poker', '', 'WORK IN PROGRESS')
  if BJ then WarMenu.OpenMenu('BlackMenu') end
  if PP then WarMenu.OpenMenu('PokerMenu') end
  WarMenu.Display()
end


function BlackMenu ()
  ActiveMenu = 'BlackMenu'
  local ped = PlayerPedId()
  local BJ = WarMenu.Button('Singleplayer', '', 'WORK IN PROGRESS')
  local PP = WarMenu.Button('Multiplayer', '', 'WORK IN PROGRESS')
  if BJ then StartBGSinglePlayer(ped) end
  if PP then end
  WarMenu.Display()
end


function PokerMenu ()
  ActiveMenu = 'PokerMenu'
  local BJ = WarMenu.Button('Singleplayer', '', 'WORK IN PROGRESS')
  local PP = WarMenu.Button('Multiplayer', '', 'WORK IN PROGRESS')
  if BJ then end
  if PP then end
  WarMenu.Display()
end

--------------------------------------------------------------------------------
-- Singleplayer
--------------------------------------------------------------------------------
function StartBGSinglePlayer(ped)
  TriggerServerEvent('DevDokus:CardGames:InsertGameToDB', ThisTable, tostring({ped}), 'BlackJack', 'Single', {}, {}, true)
end






























--
