Citizen.CreateThread(function()
  Wait(500)
  if Plugins.Rivers and not _StartError_ then
    --------------------------------------------------------------------------------
    ----------------------------------- DevDokus -----------------------------------
    --------------------------------------------------------------------------------
    function Wait(args) Citizen.Wait(args) end
    --------------------------------------------------------------------------------
    local RiverHashes = {
      -247856387, - 1504425495, - 1369817450, - 1781130443, - 1356490953,
      -1300497193, - 1276586360, - 1410384421, 370072007, 650214731,
      592454541, - 804804953, 1245451421, 218679770, - 1817904483,
      -811730579, - 1229593481, - 105598602, 1755369577, - 557290573,
      -2040708515, 370072007, 231313522, 2005774838, - 1287619521,
      -1308233316, - 196675805
    }

    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    local WashGroup = GetRandomIntInRange(0, 0xffffff)
    local Washing, Drinking
    Citizen.CreateThread(function()
      ActButtons()
      while true do Wait(1)
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)
        local x, y, z = coords.x, coords.y, coords.z
        local water = Citizen.InvokeNative(0x5BA7A68A346A5A91, x, y, z)
        local OnFoot = IsPedOnFoot(ped)
        local InWater = IsEntityInWater(ped)

        for k, v in pairs(RiverHashes) do
          if water == v then
            if OnFoot then
              if InWater then
                local wash = CreateVarString(10, 'LITERAL_STRING', "Wash or Drink")
                local drink = CreateVarString(10, 'LITERAL_STRING', "Wash or Drink")
                PromptSetActiveGroupThisFrame(WashGroup, wash)
                PromptSetActiveGroupThisFrame(WashGroup, drink)

                if PromptHasHoldModeCompleted(Washing) then
                  GetWashed("amb_misc@world_human_wash_face_bucket@ground@male_a@idle_d", "idle_l")
                  TriggerEvent('DevDokus:Metabolism:C:Stamina', Rivers.Washing.Stamina)
                  TriggerEvent('DevDokus:Metabolism:C:Thirst', Rivers.Washing.Thirst)
                  TriggerEvent('DevDokus:Metabolism:C:Health', Rivers.Washing.Health)
                  PlaySoundFrontend("Core_Fill_Up", "Consumption_Sounds", true, 0)
                end

                if PromptHasHoldModeCompleted(Drinking) then
                  ClearPedTasksImmediately(ped)
                  local hash = GetHashKey('WORLD_HUMAN_BUCKET_DRINK_GROUND')
                  TaskStartScenarioInPlace(ped, hash, -1, true, false, false, false)
                  Wait(17000) ClearPedTasks(ped)
                  TriggerEvent('DevDokus:Metabolism:C:Stamina', Rivers.Drinking.Stamina)
                  TriggerEvent('DevDokus:Metabolism:C:Thirst', Rivers.Drinking.Thirst)
                  TriggerEvent('DevDokus:Metabolism:C:Health', Rivers.Drinking.Health)
                  PlaySoundFrontend("Core_Fill_Up", "Consumption_Sounds", true, 0)
                end
              end
            end
          end
        end
      end
    end)

    function ActButtons()
      -- Wash Botton
      Citizen.CreateThread(function()
        local str = "Wash"
        Washing = Citizen.InvokeNative(0x04F97DE45A519419)
        PromptSetControlAction(Washing, 0x760A9C6F)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(Washing, str)
        PromptSetEnabled(Washing, true)
        PromptSetVisible(Washing, true)
        PromptSetHoldMode(Washing, true)
        PromptSetGroup(Washing, WashGroup)
        PromptRegisterEnd(Washing)

        -- Drink Botton
        local str = "Drink"
        Drinking = Citizen.InvokeNative(0x04F97DE45A519419)
        PromptSetControlAction(Drinking, 0xC7B5340A)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(Drinking, str)
        PromptSetEnabled(Drinking, true)
        PromptSetVisible(Drinking, true)
        PromptSetHoldMode(Drinking, true)
        PromptSetGroup(Drinking, WashGroup)
        PromptRegisterEnd(Drinking)
      end)
    end

    function GetWashed(dic, anim)
      Animation(dic)
      TaskPlayAnim(PlayerPedId(), dic, anim, 1.0, 8.0, 5000, 0, 0.0, false, false, false)
      Citizen.Wait(5000)
      ClearPedTasks(PlayerPedId())
      Citizen.InvokeNative(0x6585D955A68452A5, PlayerPedId())
      Citizen.InvokeNative(0x9C720776DAA43E7E, PlayerPedId())
      Citizen.InvokeNative(0x8FE22675A5A45817, PlayerPedId())
    end

  function Animation(dic)
      RequestAnimDict(dic)
      while not (HasAnimDictLoaded(dic)) do
        Citizen.Wait(0)
      end
    end




























    --------------------------------------------------------------------------------
  end
end)
