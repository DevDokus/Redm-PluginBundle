Citizen.CreateThread(function()
  Wait(500)
  if (((Plugins.ShowCoords) and not (_StartError_) and (Framework.RedEmRP))) then
    --------------------------------------------------------------------------------
    ----------------------------------- DevDokus -----------------------------------
    --------------------------------------------------------------------------------
    function Wait(args) Citizen.Wait(args) end
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    local SC = false
    --------------------------------------------------------------------------------

    RegisterCommand('coords', function()
      -- if ShowCoords.AdminOnly then
      --   TriggerServerEvent('DevDokus:ShowCoords:S:CheckAdmin')
      -- else
        TriggerEvent('DevDokus:ShowCoords:C:Teleport')
      -- end
    end)

    RegisterNetEvent('DevDokus:ShowCoords:C:Teleport')
    AddEventHandler('DevDokus:ShowCoords:C:Teleport', function(IsAdmin)
      SC = not SC
      while SC do Wait(1)
        local ped = GetPlayerPed(source)
        local coords = GetEntityCoords(ped)
        local head = GetEntityHeading(ped)
        local X = ('~e~X~q~ '..(math.floor(coords.x * 10) / 10))
        local Y = ('~e~Y~q~ '..(math.floor(coords.y * 10) / 10))
        local Z = ('~e~Z~q~ '..(math.floor(coords.z * 10) / 10))
        local H = ('~e~H~q~ '..(math.floor(head * 10) / 10))
        local s = ShowCoords
        DrawCoords(X, s.PosX.Horizon, s.PosX.Vertical, s.FontSize)
        DrawCoords(Y, s.PosY.Horizon, s.PosY.Vertical, s.FontSize)
        DrawCoords(Z, s.PosZ.Horizon, s.PosZ.Vertical, s.FontSize)
        DrawCoords(H, s.PosH.Horizon, s.PosH.Vertical, s.FontSize)
      end
    end)
    --------------------------------------------------------------------------------
  end
end)
