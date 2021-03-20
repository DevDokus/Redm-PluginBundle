if Plugins.Teleport then
  --------------------------------------------------------------------------------
  ----------------------------------- DevDokus -----------------------------------
  --------------------------------------------------------------------------------
  local VorpCore = {}
  TriggerEvent("getCore",function(core) VorpCore = core end)
  --------------------------------------------------------------------------------
  RegisterServerEvent('DevDokus:Teleport:S:CheckAdmin')
  --------------------------------------------------------------------------------
  AddEventHandler('DevDokus:Teleport:S:CheckAdmin', function()
    local User = VorpCore.getUser(source)
    for k,v in pairs(User) do
      local IsAdmin = User.getGroup
      if IsAdmin == Teleport.AdminGroup then
        TriggerClientEvent('DevDokus:Teleport:C:Teleport', source)
        return
      else
        TriggerClientEvent("vorp:TipRight", source, 'Only admins can teleport!', 10000)
        return
      end
    end
  end)

end
