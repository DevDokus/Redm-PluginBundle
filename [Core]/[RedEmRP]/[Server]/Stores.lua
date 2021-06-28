
Citizen.CreateThread(function()
  Wait(500)
  if (((Plugins.Stores) and not (_StartError_) and (Framework.RedEmRP))) then
    --------------------------------------------------------------------------------
    ----------------------------------- DevDokus -----------------------------------
    --------------------------------------------------------------------------------
    Framework = {}
    TriggerEvent("redemrp_inventory:getData", function(data) Framework = data end)
    --------------------------------------------------------------------------------
    RegisterServerEvent('DevDokus:S:BuyItem')
    RegisterServerEvent('DevDokus:S:SellItem')
    --------------------------------------------------------------------------------
    AddEventHandler('DevDokus:S:BuyItem', function(Data)
      TriggerEvent('redemrp:getPlayerFromId', source, function(User)
        if (User ~= nil) then
          local Money = User.getMoney()
          local getItem = Framework.getItem(source, Data.ID)
          local ItemAmount = getItem.ItemAmount
          -- Stop the user if already max items in inventory
          if (ItemAmount >= Data.Max) then Note('You already have the max of this item in your inventory!', source, 5000) return end
          -- Transact the money
          if (Data.Price > Money) then Note("You've not enough money to affort this item", source, 5000) return end
          User.removeMoney(Data.Price)
          -- Transact the item
          getItem.AddItem(1)
        end
      end)
    end)
    --------------------------------------------------------------------------------
    AddEventHandler('DevDokus:S:SellItem', function(Data)
      TriggerEvent('redemrp:getPlayerFromId', source, function(User)
        if (User ~= nil) then
          local Money = User.getMoney()
          local getItem = Framework.getItem(source, Data.ID)
          local ItemAmount = getItem.ItemAmount
          -- Stop user if item is not in his inventory
          if (getItem.ItemAmount <= 0) then Note('You do not have this item in your inventory', source, 5000) return end
          -- Transact the money
          User.addMoney(Data.Price)
          -- Transact the item
          getItem.RemoveItem(1)
        end
      end)
    end)
    --------------------------------------------------------------------------------
  end
end)
