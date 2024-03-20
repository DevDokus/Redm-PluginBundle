--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
Citizen.CreateThread(function() Wait(1000)
  if (((Plugins.MaxCores) and not (_StartError_) and (Framework.Vorp) and not (Framework.RedEmRP))) then
    Citizen.CreateThread(function()
      if MaxCores.Stamina then Stamina() end
    end)

    Citizen.CreateThread(function()
      if MaxCores.Health then Health() end
    end)
  end
end)

function Health()
  Citizen.InvokeNative(0xCB5D11F9508A928D, 1, a2, a3, GetHashKey("UPGRADE_HEALTH_TANK_1"), 1084182731, (1 * MaxCores.HealthMulti), 752097756)
end

function Stamina()
  print("DOKUSCORE: THIS ERROR CAN BE IGNORED")
  Citizen.InvokeNative(0xCB5D11F9508A928D, 1, a2, a3, GetHashKey("UPGRADE_STAMINA_TANK_1"), 1084182731, (1 * MaxCores.StaminaMulti), 752097756)
end
--------------------------------------------------------------------------------
