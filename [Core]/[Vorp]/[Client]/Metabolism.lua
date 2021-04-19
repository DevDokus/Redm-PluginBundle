

Citizen.CreateThread(function()
  Wait(500)
  if Plugins.Metabolism and not _StartError_ then
    --------------------------------------------------------------------------------
    ----------------------------------- DevDokus -----------------------------------
    --------------------------------------------------------------------------------
    function Wait(args) Citizen.Wait(args) end
    function Invoke(args, bool) Citizen.InvokeNative(args, bool) end
    local VORPCore = {}
    Citizen.CreateThread(function()
        while not VORPCore do
            TriggerEvent("getCore", function(core)
                VORPCore = core
            end)
            Citizen.Await(200)
        end
    end)
    --------------------------------------------------------------------------------
    -- Event Register
    RegisterNetEvent('DevDokus:Metabolism:C:Hunger')
    RegisterNetEvent('DevDokus:Metabolism:C:Thirst')
    RegisterNetEvent('DevDokus:Metabolism:C:Stamina')
    RegisterNetEvent('DevDokus:Metabolism:C:Health')
    RegisterNetEvent('DevDokus:Metabolism:C:StaminaInnerGold')
    RegisterNetEvent('DevDokus:Metabolism:C:StaminaOuterGold')
    RegisterNetEvent('DevDokus:Metabolism:C:HealthInnerGold')
    RegisterNetEvent('DevDokus:Metabolism:C:HealthOuterGold')
    --------------------------------------------------------------------------------
    -- Core
    --------------------------------------------------------------------------------
    -- Variables
    _Hunger     = 100
    _Thirst     = 100
    _Stamina    = 100
    local DyingCount = 0
    local WarningCount = 0
    local DeathWarning = false
    -- local IsStatsSet  = false
    --------------------------------------------------------------------------------
    -- Citizen.CreateThread(function()
    --   local run = true
    --   while run do Wait(1)
    --     if VORPCore ~= nil then
    --       -- TriggerServerEvent('DevDokus:Metabolism:S:StartStatus')
    --       run = false
    --     end
    --   end
    -- end)
    --------------------------------------------------------------------------------
    Citizen.CreateThread(function()
      while true do Wait(1000)
        if VORPCore ~= nil then
          local DrainFood  = 0
          local DrainWater = 0
          local User    = PlayerPedId()
          local coords  = GetEntityCoords(User)
          local temp    = math.floor(GetTemperatureAtCoords(coords))

          if (temp >= Metabolism.Temperature.Max) then
            DrainFood  = Metabolism.Temperature.HotDamage.Food
            DrainWater = Metabolism.Temperature.HotDamage.Water
          elseif (temp <= Metabolism.Temperature.Min) then
            DrainFood  = Metabolism.Temperature.ColdDamage.Food
            DrainWater = Metabolism.Temperature.ColdDamage.Water
          end

          local running = IsPedRunning(User)
          local walking = IsPedWalking(User)

          if running then
            _Hunger  = _Hunger - (Metabolism.Food.DrainRunning + DrainFood)
            _Thirst  = _Thirst - (Metabolism.Water.DrainRunning + DrainWater)
          elseif walking then
            _Hunger  = _Hunger - (Metabolism.Food.DrainWalking + DrainFood)
            _Thirst  = _Thirst - (Metabolism.Water.DrainWalking + DrainWater)
          else
            _Hunger  = _Hunger - (Metabolism.Food.DrainIdle + DrainFood)
            _Thirst  = _Thirst - (Metabolism.Water.DrainIdle + DrainWater)
          end
        end
      end
    end)

    Citizen.CreateThread(function()
      while true do
        if VORPCore ~= nil then
          if _Hunger < Metabolism.Food.LoseWhen then
            local User   = PlayerPedId()
            local Core   = GetAttributeCoreValue(User, 0)
            local health = math.floor((Core - Metabolism.Food.DamagePerSec))
            Citizen.InvokeNative(0xC6258F41D86676E0, User, 0, health)
          end

          if _Thirst < Metabolism.Water.LoseWhen then
            local User   = PlayerPedId()
            local Core   = GetAttributeCoreValue(User, 0)
            local health = math.floor((Core - Metabolism.Water.DamagePerSec))
            Citizen.InvokeNative(0xC6258F41D86676E0, User, 0, health)
          end
        end
        Wait(1000)
      end
    end)

    local stage = { s1 = false, s2 = false, s3 = false}
    local DeadOrAlive = true
    local CoreIsZero = false
    Citizen.CreateThread(function()
      while true do
        if VORPCore ~= nil then
          local User = PlayerPedId()
          local Core = GetAttributeCoreValue(User, 0)
          local eHealth = GetEntityHealth(User)

          -- STOP: If user is dead, let's wait until the player is alive again.
          if (Core == 0) and not DeadOrAlive then print("Waiting for respawn.....") end

          if (Core == 0) and DeadOrAlive then
            CoreIsZero = true
            if (eHealth >= 50) then
              Citizen.InvokeNative(0x697157CED63F18D4, User, 5, false, true, true)
              if stage.s1 == false then stage.s1 = true TriggerEvent("vorp:TipRight", _('Metabolism_YourDying1'), 5000) end
            elseif (eHealth < 50) and (eHealth >= 35) then
              Citizen.InvokeNative(0x697157CED63F18D4, User, 5, false, true, true)
              if stage.s2 == false then stage.s2 = true TriggerEvent("vorp:TipRight", _('Metabolism_YourDying2'), 5000) end
            elseif (eHealth < 35) and (eHealth >= 2) then
              Citizen.InvokeNative(0x697157CED63F18D4, User, 5, false, true, true)
              if stage.s3 == false then stage.s3 = true TriggerEvent("vorp:TipRight", _('Metabolism_YourDying3'), 5000) end
            elseif (eHealth < 2) then
              Citizen.InvokeNative(0x697157CED63F18D4, User, 50000, false, true, true)
              DeadOrAlive = false
            end
          end
          ---------------------------- WORK IN PROGRESS ----------------------------
          -- ToDo: Detecting when user eats or drinks to reset the dialog for dying.
          if (Core ~= 0) and CoreIsZero then print("User healed") CoreIsZero = false end
          --------------------------------------------------------------------------

          -- When the player comes back to live, reset the script.
          if (Core ~= 0) and not DeadOrAlive then
            local Reset = Metabolism.ResetOnDeath
            if Reset.Enabled then
              TriggerEvent('DevDokus:Metabolism:C:Hunger',  100.0)
              TriggerEvent('DevDokus:Metabolism:C:Thirst',  100.0)
              TriggerEvent('DevDokus:Metabolism:C:Health',  100.0)
              TriggerEvent('DevDokus:Metabolism:C:Stamina', 100.0)
              _Hunger     = 100
              _Thirst     = 100
              _Stamina    = 100
            end
            CoreIsZero = false
            DeadOrAlive = true
            DyingCount = 0
            WarningCount = 0
            DeathWarning = false
            stage.s1 = false
            stage.s2 = false
            stage.s3 = false
          end
        end
        Wait(500)
      end
    end)

    -- AddEventHandler('DevDokus:Metabolism:C:SetFirstStatus', function(Data)
    --   _Hunger = (Data.Hunger)
    --   _Thirst = (Data.Thirst)
    --   IsStatsSet = true
    -- end)

    AddEventHandler('DevDokus:Metabolism:C:Hunger', function(value)
      _Hunger = _Hunger + tonumber(value)
      if (_Hunger <= 0) then _Hunger = 0 end
      if (_Hunger > 100) then _Hunger = 100 end
    end)

    AddEventHandler('DevDokus:Metabolism:C:Thirst', function(value)
      _Thirst = _Thirst + tonumber(value)
      if (_Thirst <= 0) then _Thirst = 0 end
      if (_Thirst > 100) then _Thirst = 100 end
    end)

    AddEventHandler('DevDokus:Metabolism:C:Stamina', function(value)
      local User     = PlayerPedId()
      local Core     = GetAttributeCoreValue(User, 1)
      local new      = (Core + tonumber(value))
      if (new > 100) then new = 100 end
      Citizen.InvokeNative(0xC6258F41D86676E0, User, 1, new)
    end)

    AddEventHandler('DevDokus:Metabolism:C:Health', function(value)
      local User   = PlayerPedId()
      local Core   = GetAttributeCoreValue(User, 0)
      local new    = (Core + tonumber(value))
      if (new > 100) then new = 100 end
      Citizen.InvokeNative(0xC6258F41D86676E0, User, 0, new)
    end)

    AddEventHandler('DevDokus:Metabolism:C:StaminaInnerGold', function(value)
      local User   = PlayerPedId()
      local new    = ((value * 100) / 100)
      Citizen.InvokeNative(0x4AF5A4C7B9157D14, User, 1, new, true)
    end)

    AddEventHandler('DevDokus:Metabolism:C:StaminaOuterGold', function(value)
      local User   = PlayerPedId()
      local new    = ((value * 100) / 100)
      Citizen.InvokeNative(0xF6A7C08DF2E28B28, User, 1, new, true)
    end)

    AddEventHandler('DevDokus:Metabolism:C:HealthInnerGold', function(value)
      local User   = PlayerPedId()
      local new    = ((value * 100) / 100)
      Citizen.InvokeNative(0x4AF5A4C7B9157D14, User, 0, new, true)
    end)

    AddEventHandler('DevDokus:Metabolism:C:HealthOuterGold', function(value)
      local User   = PlayerPedId()
      local new    = ((value * 100) / 100)
      Citizen.InvokeNative(0xF6A7C08DF2E28B28, User, 0, new, true)
    end)


    --------------------------------------------------------------------------------
  end
end)
