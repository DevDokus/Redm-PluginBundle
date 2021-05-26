--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
local VorpCore = {}
TriggerEvent("getCore", function(core) VorpCore = core end)
--------------------------------------------------------------------------------
-- Event Register
RegisterServerEvent('DevDokus:PayCheck:S:PayUser')
--------------------------------------------------------------------------------
-- Variables
--------------------------------------------------------------------------------
AddEventHandler('DevDokus:PayCheck:S:PayUser', function()
  local Char = VorpCore.getUser(source).getUsedCharacter
  local _Job = Char.job
  for k,v in pairs(PayCheck.Jobs) do
    local Job, Money, Gold, Exp = v.Job, v.Money, v.Gold, v.Exp

    if (Job == _Job) then
      if (Money > 0) then print("Gioving money") Char.addCurrency(0, Money) end
      if (Gold > 0) then print("Gioving gold") Char.addCurrency(1, Gold)  end
      if (Exp > 0) then print("Gioving exp") Char.addXp(Exp) end
      Note(Money, Gold, Exp)
    end
  end
end)

--------------------------------------------------------------------------------
function Note(Money, Gold, Exp)
  local _m = ('You Recived ~t~$~q~~o~' .. Money .. '~q~ | ')
  local _g = ('~t~Gold~q~: ~o~' .. Gold .. '~q~ | ')
  local _e = ('~t~XP:~q~ ~o~' .. Exp .. '~q~ | [ ~t~Salary~q~ ]')
  TriggerClientEvent("vorp:TipRight", source, (_m.._g.._e), 20000)
end
