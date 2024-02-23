--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
if (((Plugins.Teleport) and not (_StartError_) and (Framework.Vorp) and not (Framework.RedEmRP))) then
local VorpCore = {}
TriggerEvent("getCore", function(core) VorpCore = core end)
--------------------------------------------------------------------------------
RegisterServerEvent('DevDokus:Teleport:S:CheckAdmin')
--------------------------------------------------------------------------------
AddEventHandler('DevDokus:Teleport:S:CheckAdmin', function()
  local User = VorpCore.getUser(source)
  for k, v in pairs(User) do
    local IsAdmin = User.getGroup
    if IsAdmin == Teleport.AdminGroup then
      TriggerClientEvent('DevDokus:Teleport:C:Teleport', source)
      return
    else
      Notify(_('OnlyAdmins'), 5000)
      return
    end
  end
end)
end
