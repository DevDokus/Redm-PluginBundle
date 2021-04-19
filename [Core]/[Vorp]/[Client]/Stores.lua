Citizen.CreateThread(function()
  Wait(500)
  if Plugins.Stores and not _StartError_ then
    --------------------------------------------------------------------------------
    ----------------------------------- DevDokus -----------------------------------
    --------------------------------------------------------------------------------
    function Wait(args) Citizen.Wait(args) end
    --------------------------------------------------------------------------------
    -- Varables
    local InRange = false
    local ActiveMenu = nil
    local MenuOpen = false
    --------------------------------------------------------------------------------
    -- Core
    --------------------------------------------------------------------------------
    -- Draw Map Marker
    Citizen.CreateThread(function()
      for k,v in pairs(Stores.Stores) do
        local blip = N_0x554d9d53f696d002(1664425300, v.Coords.x, v.Coords.y, v.Coords.z)
        SetBlipSprite(blip, 1475879922, 1)
    		SetBlipScale(blip, 0.2)
    		Citizen.InvokeNative(0x9CB1A1623062F402, blip, v.Store)
      end
    end)

    -- Check players distance from the stores.
    Citizen.CreateThread(function()
      while true do Wait(1)
        local ped = GetPlayerPed()
        local coords = GetEntityCoords(ped)

        for k,v in pairs(Stores.Stores) do
          local ShowCircle = Stores.ShowCircles
          local Red = Stores.CircleColor.Red
          local Green = Stores.CircleColor.Green
          local Blue = Stores.CircleColor.Blue
          local Opacity = Stores.CircleColor.Opacity
          local x,y,z = v.Coords.x, v.Coords.y, v.Coords.z
          local dist = GetDistanceBetweenCoords(coords.x, coords.y, coords.z, x,y,z)

          if (dist <= 8) then
            if not MenuOpen and ShowCircle then DrawCircle(x,y,z,  Red, Green, Blue, Opacity) end
            if (dist <= 1.5) then
              if not MenuOpen then DrawInfo(_('Store_OpenShop'), 0.5, 0.95, 0.75) end
              if IsControlJustPressed(0, Keys["SPACEBAR"]) then
                MenuOpen = true
                ActiveMenu = 'Home'
                WarMenu.OpenMenu('Home')
              end

              if IsControlJustPressed(0, Keys['BACKSPACE']) then
                if     ActiveMenu == 'Home'       then WarMenu.CloseMenu()          ActiveMenu = nil MenuOpen = false
                elseif ActiveMenu == 'BuyMenu'    then WarMenu.OpenMenu('Home')     ActiveMenu = 'Home'
                elseif ActiveMenu == 'SellMenu'   then WarMenu.OpenMenu('Home')     ActiveMenu = 'Home'
                elseif ActiveMenu == 'bFoodCat'   then WarMenu.OpenMenu('BuyMenu')  ActiveMenu = 'BuyMenu'
                elseif ActiveMenu == 'bMiscCat'   then WarMenu.OpenMenu('BuyMenu')  ActiveMenu = 'BuyMenu'
                elseif ActiveMenu == 'sFoodCat'   then WarMenu.OpenMenu('SellMenu') ActiveMenu = 'SellMenu'
                elseif ActiveMenu == 'sMiscCat'   then WarMenu.OpenMenu('SellMenu') ActiveMenu = 'SellMenu'
                elseif ActiveMenu == 'bMedsCat'   then WarMenu.OpenMenu('BuyMenu')  ActiveMenu = 'BuyMenu'
                elseif ActiveMenu == 'sMedsCat'   then WarMenu.OpenMenu('SellMenu') ActiveMenu = 'SellMenu'
                end
              end
            end
          end
        end
      end
    end)

    -- Spawn All Store NPCs
    Citizen.CreateThread(function()
      if Stores.ShowNPCs then
        for k,v in pairs(Stores.NPCs) do
          local x,y,z,h = v.Coords.x, v.Coords.y, v.Coords.z, v.Heading
          local model = v.Model
          SpawnNPC(model, x,y,z,h)
        end
      end
    end)

    -- Warmenu
    Citizen.CreateThread(function()
      CreateMenus()
      while true do Wait(1)
        local War = WarMenu.IsMenuOpened
        if      War('Home')         then Home()
        elseif  War('BuyMenu')      then BuyMenu()
        elseif  War('SellMenu')     then SellMenu()
        elseif  War('bFoodCat')     then bFoodCat()
        elseif  War('bMiscCat')     then bMiscCat()
        elseif  War('sFoodCat')     then sFoodCat()
        elseif  War('sMiscCat')     then sMiscCat()
        elseif  War('bMedsCat')     then bMedsCat()
        elseif  War('sMedsCat')     then sMedsCat()
        end
      end
    end)


    function CreateMenus()
      WarMenu.CreateMenu('Home', _('Store_MenuTitle'))
      WarMenu.SetSubTitle('Home', 'Made By DevDokus')

      -- Buy Menu
      WarMenu.CreateMenu('BuyMenu', _('Store_MenuTitle'))
      WarMenu.SetSubTitle('BuyMenu', _('Store_Category'))
      WarMenu.CreateMenu('bFoodCat', _('Store_MenuTitle'))
      WarMenu.SetSubTitle('bFoodCat', _('Store_FoodMenu'))
      WarMenu.CreateMenu('bMiscCat', _('Store_MenuTitle'))
      WarMenu.SetSubTitle('bMiscCat', _('Store_MiscMenu'))
      WarMenu.CreateMenu('bMedsCat', _('Store_MenuTitle'))
      WarMenu.SetSubTitle('bMedsCat', _('Store_MedsMenu'))

      --- Sell Menu
      WarMenu.CreateMenu('SellMenu', _('Store_MenuTitle'))
      WarMenu.SetSubTitle('SellMenu', _('Store_Category'))
      WarMenu.CreateMenu('sFoodCat', _('Store_MenuTitle'))
      WarMenu.SetSubTitle('sFoodCat', _('Store_FoodMenu'))
      WarMenu.CreateMenu('sMiscCat', _('Store_MenuTitle'))
      WarMenu.SetSubTitle('sMiscCat', _('Store_MiscMenu'))
      WarMenu.CreateMenu('sMedsCat', _('Store_MenuTitle'))
      WarMenu.SetSubTitle('sMedsCat', _('Store_MedsMenu'))
    end

    --------------------------------------------------------------------------------
    -- Page 1 - Home Page
    --------------------------------------------------------------------------------
    function Home ()
    ActiveMenu = 'Home'
    local BBuy = WarMenu.Button(_('Store_Buy'), '', 'Github.com/DevDokus')
    local BSell = WarMenu.Button(_('Store_Sell'), '', 'WORK IN PROGRESS')
    if BBuy then WarMenu.OpenMenu('BuyMenu') end
    if BSell then WarMenu.OpenMenu('SellMenu') end
    WarMenu.Display()
    end

    --------------------------------------------------------------------------------
    -- Page 2 - Buy Category Section
    --------------------------------------------------------------------------------
    function BuyMenu ()
    ActiveMenu = 'BuyMenu'
    local _Foods = WarMenu.Button(_('Store_Food'), '', _('Store_FoodMenu'))
    local _Meds = WarMenu.Button(_('Store_Meds'), '', _('Store_MedsMenu'))
    local _Misc = WarMenu.Button(_('Store_Misc'), '', _('Store_MiscMenu'))
    if _Foods then WarMenu.OpenMenu('bFoodCat') end
    if _Meds then WarMenu.OpenMenu('bMedsCat') end
    if _Misc then WarMenu.OpenMenu('bMiscCat') end
    WarMenu.Display()
    end

    function SellMenu ()
    ActiveMenu = 'SellMenu'
    local _Foods = WarMenu.Button(_('Store_Food'), '', _('Store_FoodMenu'))
    local _Meds = WarMenu.Button(_('Store_Meds'), '', _('Store_MedsMenu'))
    local _Misc = WarMenu.Button(_('Store_Misc'), '', _('Store_MiscMenu'))
    if _Foods then WarMenu.OpenMenu('sFoodCat') end
    if _Meds then WarMenu.OpenMenu('sMedsCat') end
    if _Misc then WarMenu.OpenMenu('sMiscCat') end
    WarMenu.Display()
    end

    function bFoodCat()
      ActiveMenu = 'bFoodCat'
      for k,v in pairs(Stores.Buy) do
        if v.Type == 'Food' then
          local item = v.Name
          local price = tostring(v.Price)
          local desc  = v.Text
          local button = WarMenu.Button(item, '$'..price, desc)
          if button then TriggerServerEvent('DevDokus:S:BuyItem', v) end
        end
      end
      WarMenu.Display()
    end

    function bMedsCat()
      ActiveMenu = 'bMedsCat'
      for k,v in pairs(Stores.Buy) do
        if v.Type == 'Meds' then
          local item = v.Name
          local price = tostring(v.Price)
          local desc  = v.Text
          local button = WarMenu.Button(item, '$'..price, desc)
          if button then TriggerServerEvent('DevDokus:S:BuyItem', v) end
        end
      end
      WarMenu.Display()
    end

    function bMiscCat()
      ActiveMenu = 'bMiscCat'
      for k,v in pairs(Stores.Buy) do
        if v.Type == 'Misc' then
          local item = v.Name
          local price = tostring(v.Price)
          local desc  = v.Text
          local button = WarMenu.Button(item, '$'..price, desc)
          if button then TriggerServerEvent('DevDokus:S:BuyItem', v) end
        end
      end
      WarMenu.Display()
    end

    function sFoodCat()
      ActiveMenu = 'sFoodCat'
      for k,v in pairs(Stores.Sell) do
        if v.Type == 'Food' then
          local item = v.Name
          local price = tostring(v.Price)
          local desc  = v.Text
          local button = WarMenu.Button(item, '$'..price, desc)
          if button then TriggerServerEvent('DevDokus:S:SellItem', v) end
        end
      end
      WarMenu.Display()
    end

    function sMedsCat()
      ActiveMenu = 'sMedsCat'
      for k,v in pairs(Stores.Sell) do
        if v.Type == 'Meds' then
          local item = v.Name
          local price = tostring(v.Price)
          local desc  = v.Text
          local button = WarMenu.Button(item, '$'..price, desc)
          if button then TriggerServerEvent('DevDokus:S:SellItem', v) end
        end
      end
      WarMenu.Display()
    end

    function sMiscCat()
      ActiveMenu = 'sMiscCat'
      for k,v in pairs(Stores.Sell) do
        if v.Type == 'Misc' then
          local item = v.Name
          local price = tostring(v.Price)
          local desc  = v.Text
          local button = WarMenu.Button(item, '$'..price, desc)
          if button then TriggerServerEvent('DevDokus:S:SellItem', v) end
        end
      end
      WarMenu.Display()
    end
  end
end)
