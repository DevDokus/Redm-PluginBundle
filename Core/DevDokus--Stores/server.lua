if Plugins.Stores then
  --------------------------------------------------------------------------------
  ----------------------------------- DevDokus -----------------------------------
  --------------------------------------------------------------------------------
  local VorpCore = {}
  TriggerEvent("getCore",function(core) VorpCore = core end)
  VorpInv = exports.vorp_inventory:vorp_inventoryApi()
  --------------------------------------------------------------------------------
  RegisterServerEvent('DevDokus:S:BuyItem')
  RegisterServerEvent('DevDokus:S:SellItem')
  --------------------------------------------------------------------------------
  AddEventHandler('DevDokus:S:BuyItem', function(Data)
    local User = VorpCore.getUser(source)
    if User ~= nil then
      local Char = User.getUsedCharacter
      local balance = VorpInv.getItemCount(source, Data.ID)
      local max = Data.Max
      local money = Char.money

      if (balance < max) then
        if (money <= Data.Price) then
          Notify('Not Enough Money', 100)
        else
          Char.removeCurrency(0, Data.Price)
          VorpInv.addItem(source, Data.ID, 1)
          Notify('You\'ve bought a ' .. Data.Name .. ', costing you $' .. Data.Price .. ' Dollar!', 5000)
        end
      end
    end
  end)

  AddEventHandler('DevDokus:S:SellItem', function(Data)
    local User = VorpCore.getUser(source)
    if User ~= nil then
      local Char  = User.getUsedCharacter
      local money = Char.money
      local item  = VorpInv.getItemCount(source, Data.ID)

      if (item > 0) then
        Char.addCurrency(0, Data.Price)
        VorpInv.subItem(source, Data.ID, 1)
        Notify('You\'ve sold an item: '..Data.Name, 5000)
      else
        Notify('You\'ve no item called: '..Data.Name, 5000)
      end
    end
  end)


























  --------------------------------------------------------------------------------

end
