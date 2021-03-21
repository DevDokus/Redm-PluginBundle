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
          TriggerClientEvent("vorp:TipRight", _Data.source, "You've consumed "..v.Name, 5000)
          TriggerClientEvent("DevDokus:C:Consume", _Data.source, v.ID, v.Type, v.Hunger, v.Thirst, v.Stamina, v.Health)
        end)
      elseif v.Type == 'Drink' then
        VorpInv.RegisterUsableItem(v.ID, function(_Data)
          VorpInv.subItem(_Data.source, v.ID, 1)
          TriggerClientEvent("vorp:TipRight", _Data.source, "You've drunk "..v.Name, 5000)
          TriggerClientEvent("DevDokus:C:Consume", _Data.source, v.ID, v.Type, v.Hunger, v.Thirst, v.Stamina, v.Health)
        end)
      elseif v.Type == 'Placing' then
        VorpInv.RegisterUsableItem(v.ID, function(_Data)
          VorpInv.subItem(_Data.source, v.ID, 1)
          TriggerClientEvent("DevDokus:C:Consume", _Data.source, v.ID, v.Type, v.Hunger, v.Thirst, v.Stamina, v.Health)
        end)
      end
    end
  end
end)

AddEventHandler('DevDokus:S:Refund', function(Item)
if Item == 'campfire' then
VorpInv.addItem(source, "campfire", 1)
TriggerClientEvent("vorp:TipRight", source, "You've been refunded a campfire", 5000)
elseif Item == 'tent' then
VorpInv.addItem(source, "tent", 1)
TriggerClientEvent("vorp:TipRight", source, "You've been refunded a tent", 5000)
end
end)
