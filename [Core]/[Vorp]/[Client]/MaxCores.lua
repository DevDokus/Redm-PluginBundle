--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
Citizen.CreateThread(function() Wait(500)
  if Plugins.MaxCores and not _StartError_ then
    Citizen.CreateThread(function()
      if MaxCores.Health then Health() end
      if MaxCores.Stamina then Stamina() end
    end)
  end
end)

function Health()
  Citizen.InvokeNative(0xCB5D11F9508A928D, 1, a2, a3, GetHashKey("UPGRADE_HEALTH_TANK_1"), 1084182731, (1 * MaxCores.HealthMulti), 752097756)
end

function Stamina()
  Citizen.InvokeNative(0xCB5D11F9508A928D, 1, a2, a3, GetHashKey("UPGRADE_STAMINA_TANK_1"), 1084182731, (1 * MaxCores.StaminaMulti), 752097756)
end
--------------------------------------------------------------------------------