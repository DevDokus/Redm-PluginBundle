--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
local VorpCore = {}
TriggerEvent("getCore", function(core) VorpCore = core end)
VorpInv = exports.vorp_inventory:vorp_inventoryApi()
RegisterServerEvent('DevDokus:S:Refund')
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
Citizen.CreateThread(function() Wait(1000)
  if Plugins.UsableItems and not _StartError_ then
    for k, v in pairs(UsableItems.Items) do
      if v.Type == 'Eat' then
        VorpInv.RegisterUsableItem(v.ID, function(_Data)
          VorpInv.subItem(_Data.source, v.ID, 1)
          TriggerClientEvent("vorp:TipRight", _Data.source, _('UsableItems_Eating')..v.Name, 5000)
          TriggerClientEvent("DevDokus:C:Consume", _Data.source, v.ID, v.Type, v.Hunger, v.Thirst, v.Stamina, v.Health, v.InStaGold, v.OutStaGold, v.InHealthGold, v.OutHealthGold)
        end)
      elseif v.Type == 'Drink' then
        VorpInv.RegisterUsableItem(v.ID, function(_Data)
          VorpInv.subItem(_Data.source, v.ID, 1)
          TriggerClientEvent("vorp:TipRight", _Data.source, _('UsableItems_Drinking')..v.Name, 5000)
          TriggerClientEvent("DevDokus:C:Consume", _Data.source, v.ID, v.Type, v.Hunger, v.Thirst, v.Stamina, v.Health, v.InStaGold, v.OutStaGold, v.InHealthGold, v.OutHealthGold)
        end)
      elseif v.Type == 'Placing' then
        VorpInv.RegisterUsableItem(v.ID, function(_Data)
          VorpInv.subItem(_Data.source, v.ID, 1)
          TriggerClientEvent("DevDokus:C:Consume", _Data.source, v.ID, v.Type, v.Hunger, v.Thirst, v.Stamina, v.Health, v.InStaGold, v.OutStaGold, v.InHealthGold, v.OutHealthGold)
        end)
      end
    end
  end
end)

AddEventHandler('DevDokus:S:Refund', function(Item)
  if UsableItems.RefundCampFire and Item == 'campfire' then
    VorpInv.addItem(source, "campfire", 1)
    TriggerClientEvent("vorp:TipRight", source, _('UsableItems_RefundCampfire'), 5000)
  elseif UsableItems.RefundTent and Item == 'tent' then
    VorpInv.addItem(source, "tent", 1)
    TriggerClientEvent("vorp:TipRight", source, _('UsableItems_RefundTent'), 5000)
  end
end)















--
