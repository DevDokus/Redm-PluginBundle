Citizen.CreateThread(function() Wait(1000)
if (((Plugins.PickableFruits) and not (_StartError_) and (Framework.Vorp) and not (Framework.RedEmRP))) then
  --------------------------------------------------------------------------------
  ----------------------------------- DevDokus -----------------------------------
  --------------------------------------------------------------------------------
  function Wait(args) Citizen.Wait(args) end
  --------------------------------------------------------------------------------
  --------------------------------------------------------------------------------
  local Location = nil
  local Harvesting = false
  local InRange = false
  --------------------------------------------------------------------------------
  -- Get Distance from entities
  Citizen.CreateThread(function()
    while true do Wait(1000)
      local ped = PlayerPedId()
      local coords = GetEntityCoords(ped)
      local x, y, z = table.unpack(coords)
      for k, v in pairs(PickableFruits.Bushes) do
        local hash = GetHashKey(tostring(v.ID))
        local Near = DoesObjectOfTypeExistAtCoords(x, y, z, 0.85, hash, true)

        if Location == nil and Near then Location = v.ID end
        if Location == v.ID then
          if not Near and InRange then InRange = false Location = nil end
          if Near and not InRange then
            InRange = true
            TriggerEvent('DevDokus:PickableFruits:C:AwaitHarvest', ped, x, y, z, v)
          end
        end
      end
    end
  end)

  RegisterNetEvent('DevDokus:PickableFruits:C:AwaitHarvest')
  AddEventHandler('DevDokus:PickableFruits:C:AwaitHarvest', function(ped, x, y, z, v)
    while InRange do Wait(1)
    local Space = IsControlJustPressed(0, Keys['SPACEBAR'])
    if not Harvesting then DrawInfo(_('PickableFruits_PressSpace'), 0.5, 0.95, 0.75) end
    if Space then
      Harvesting = true
      local hash = 'mech_pickup@plant@berries'
      RequestAnimDict(hash)
      while not HasAnimDictLoaded(hash) do Wait(100) end
      TaskPlayAnim(ped, hash, "enter_lf", 8.0, - 0.5, - 1, 0, 0, true, 0, false, 0, false) Wait(800)
      TaskPlayAnim(ped, hash, "base", 8.0, - 0.5, - 1, 0, 0, true, 0, false, 0, false) Wait(4300)
      ClearPedTasksImmediately(ped)
      Harvesting = false
      TriggerServerEvent('DevDokus:PickableFruits:S:GiveItems', v.Label)
    end
  end
end)
end
end)