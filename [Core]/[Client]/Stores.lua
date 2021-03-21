
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
          local x,y,z = v.Coords.x, v.Coords.y, v.Coords.z
          local dist = GetDistanceBetweenCoords(coords.x, coords.y, coords.z, x,y,z)

          if (dist <= 8) then
            if not MenuOpen then DrawCircle(x,y,z, 204, 56, 209, 50) end
            if (dist <= 1.5) then
              if not MenuOpen then DrawTxt('Press [ ~r~SPACE~w~ ] to open the shop menu', 0.50, 0.90, 0.7, 0.5, true, 255, 255, 255, 255, true) end
              if IsControlJustPressed(0, Keys["Space"]) then
                MenuOpen = true
                ActiveMenu = 'Home'
                WarMenu.OpenMenu('Home')
              end

              if IsControlJustPressed(0, Keys['Backspace']) then
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
    	WarMenu.CreateMenu('Home', 'General Store')
      WarMenu.SetSubTitle('Home', 'Made By DevDokus')

      -- Buy Menu
      WarMenu.CreateMenu('BuyMenu', 'General Store')
      WarMenu.SetSubTitle('BuyMenu', 'Choose Category')
      WarMenu.CreateMenu('bFoodCat', 'General Store')
      WarMenu.SetSubTitle('bFoodCat', 'Ah, hungry I see?')
      WarMenu.CreateMenu('bMiscCat', 'General Store')
      WarMenu.SetSubTitle('bMiscCat', 'Other items')
      WarMenu.CreateMenu('bMedsCat', 'General Store')
      WarMenu.SetSubTitle('bMedsCat', 'Medical Items')

      --- Sell Menu
      WarMenu.CreateMenu('SellMenu', 'General Store')
      WarMenu.SetSubTitle('SellMenu', 'Choose Category')
      WarMenu.CreateMenu('sFoodCat', 'General Store')
      WarMenu.SetSubTitle('sFoodCat', 'Ah, hungry I see?')
      WarMenu.CreateMenu('sMiscCat', 'General Store')
      WarMenu.SetSubTitle('sMiscCat', 'Other items')
      WarMenu.CreateMenu('sMedsCat', 'General Store')
      WarMenu.SetSubTitle('sMedsCat', 'Medical Items')
    end

    --------------------------------------------------------------------------------
    -- Page 1 - Home Page
    --------------------------------------------------------------------------------
    function Home ()
      ActiveMenu = 'Home'
    	local BBuy   = WarMenu.Button('Buy Items',  '', 'Github.com/DevDokus')
      local BSell  = WarMenu.Button('Sell Items', '', 'WORK IN PROGRESS')
      if BBuy then WarMenu.OpenMenu('BuyMenu') end
      if BSell then WarMenu.OpenMenu('SellMenu') end
    	WarMenu.Display()
    end

    --------------------------------------------------------------------------------
    -- Page 2 - Buy Category Section
    --------------------------------------------------------------------------------
    function BuyMenu ()
      ActiveMenu = 'BuyMenu'
      local _Foods  = WarMenu.Button('Foods',  '', 'Your daily basic needs')
      local _Meds   = WarMenu.Button('Medical',  '', 'For staying alive!')
      local _Misc   = WarMenu.Button('Misc',  '', 'Other Items')
      if _Foods then WarMenu.OpenMenu('bFoodCat') end
      if _Meds then WarMenu.OpenMenu('bMedsCat') end
      if _Misc then WarMenu.OpenMenu('bMiscCat') end
      WarMenu.Display()
    end

    function SellMenu ()
      ActiveMenu = 'SellMenu'
      local _Foods  = WarMenu.Button('Foods',  '', 'Your daily basic needs')
      local _Meds   = WarMenu.Button('Medical',  '', 'For staying alive!')
      local _Misc   = WarMenu.Button('Misc',  '', 'Other Items')
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

    function DrawTxt(str, x, y, w, h, enableShadow, col1, col2, col3, a, center)
       local str = CreateVarString(10, "LITERAL_STRING", str, Citizen.ResultAsLong())
       SetTextScale(w, h)
       SetTextColor(math.floor(col1), math.floor(col2), math.floor(col3), math.floor(a))
       SetTextCentre(center)
       if enableShadow then SetTextDropshadow(1, 0, 0, 0, 255) end
       Citizen.InvokeNative(0xADA9255D, 10);
       DisplayText(str, x, y)
    end
  end
end)
