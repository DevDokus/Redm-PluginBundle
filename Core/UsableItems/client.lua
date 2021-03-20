if Plugins.UsableItems then
  --------------------------------------------------------------------------------
  ----------------------------------- DevDokus -----------------------------------
  --------------------------------------------------------------------------------
  function Wait(args) Citizen.Wait(args) end
  --------------------------------------------------------------------------------
  RegisterNetEvent('DevDokus:C:Consume')
  --------------------------------------------------------------------------------
  -- Varables
  local ObjTent = 0
  local ObjFire = 0
  --------------------------------------------------------------------------------
  -- Core
  --------------------------------------------------------------------------------
  AddEventHandler('DevDokus:C:Consume', function(Item, Type, Hunger, Thirst, Stamina, Health)
    local ped = PlayerPedId()
    if Type == 'Eat' then
      TaskEat(ped) Wait(1000)
      for k,v in pairs(Items) do
        if Item == v.ID then
          TriggerEvent('DevDokus:Metabolism:C:Hunger', Hunger)
          TriggerEvent('DevDokus:Metabolism:C:Thirst', Thirst)
          TriggerEvent('DevDokus:Metabolism:C:Stamina', Stamina)
          TriggerEvent('DevDokus:Metabolism:C:Health', Health)
        end
      end
    elseif Type == 'Drink' then
      TaskBottle(ped) Wait(1000)
      for k,v in pairs(Items) do
        if Item == v.ID then
          TriggerEvent('DevDokus:Metabolism:C:Hunger', Hunger)
          TriggerEvent('DevDokus:Metabolism:C:Thirst', Thirst)
          TriggerEvent('DevDokus:Metabolism:C:Stamina', Stamina)
          TriggerEvent('DevDokus:Metabolism:C:Health', Health)
        end
      end
    elseif Type == 'Placing' then
      if Item == 'tent' then
        TaskTent(ped) Wait(1000)
      elseif Item == 'campfire' then
        TaskCampfire(ped) Wait(1000)
      end
    end
  end)


  --------------------------------------------------------------------------------
  -- Delete Objects
  --------------------------------------------------------------------------------
  RegisterCommand('deltent', function()
    if ObjTent == 0 then
      TriggerEvent("vorp:TipRight", 'You\'ve no tent!', 5000)
    else
      TriggerServerEvent('DevDokus:S:Refund', 'tent')
      SetEntityAsMissionEntity(ObjTent)
      DeleteObject(ObjTent)
      ObjTent = 0
    end
  end)

  RegisterCommand('delfire', function()
    if ObjFire == 0 then
      TriggerEvent("vorp:TipRight", 'You\'ve no campfire!', 5000)
    else
      TriggerServerEvent('DevDokus:S:Refund', 'campfire')
      SetEntityAsMissionEntity(ObjFire)
      DeleteObject(ObjFire)
      ObjFire = 0
    end
  end)

  --------------------------------------------------------------------------------
  -- Functions
  --------------------------------------------------------------------------------
  function TaskEat(ped)
    TaskItemInteraction(ped, nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
  end

  function TaskDrink(ped)
    local prop = CreateObject(GetHashKey('p_bottleJD01x'), GetEntityCoords(ped), false, false, 1, 1, 0)
    TaskItemInteraction_2(ped, 1737033966, prop, GetHashKey("p_bottleJD01x_ph_r_hand"), GetHashKey("DRINK_BOTTLE@Bottle_Cylinder_D1-3_H30-5_Neck_A13_B2-5_UNCORK"), true, 0, 0)
  end

  function SetMission(Type)
    if Type == 'Fire' then
      SetEntityAsMissionEntity()
      DeleteObject()
      ObjFire = 0
    elseif Type == 'Tent' then
      SetEntityAsMissionEntity()
      DeleteObject()
      ObjTent = 0
    end
  end

  function TaskCampfire(ped)
    if ObjFire ~= 0 then SetMission('Fire') end
    TaskStartScenarioInPlace(ped, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 15000, true, false, false, false)
    exports['progressBars']:startUI(15000, "You're placing your campfire...") Wait(15000)
    ClearPedTasksImmediately(ped)
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(ped, 0.0, 2.0, -1.55))
    local prop = CreateObject(GetHashKey("p_campfire02x"), x, y, z, true, false, true)
    SetEntityHeading(prop, GetEntityHeading(ped))
    PlaceObjectOnGroundProperly(prop)
    ObjFire = prop
  end

  function TaskTent(ped)
    if ObjTent ~= 0 then SetMission('Tent') end
    TaskStartScenarioInPlace(ped, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 30000, true, false, false, false)
    exports['progressBars']:startUI(30000, "You're placing your tent...") Wait(30000)
    ClearPedTasksImmediately(ped)
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(ped, 0.0, 2.0, -1.55))
    local prop = CreateObject(GetHashKey("mp005_s_posse_tent_bountyhunter07x"), x, y, z, true, false, true)
    SetEntityHeading(prop, GetEntityHeading(ped))
    PlaceObjectOnGroundProperly(prop)
    ObjTent = prop
  end

end
