--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
if (((Plugins.PickableFruits) and not (_StartError_) and (Framework.Vorp) and not (Framework.RedEmRP))) then
  local VorpCore = {}
  TriggerEvent("getCore", function(core) VorpCore = core end)
  VorpInv = exports.vorp_inventory:vorp_inventoryApi()
  --------------------------------------------------------------------------------
  -- Event Register
  RegisterServerEvent('DevDokus:PickableFruits:S:GiveItems')
  --------------------------------------------------------------------------------
  -- Core
  --------------------------------------------------------------------------------
  AddEventHandler('DevDokus:PickableFruits:S:GiveItems', function(Label)
    local _source = source
    local Array = {}
    for k, v in pairs(PickableFruits.Items) do
      if v.Label == Label then table.insert(Array, v) end
      end Wait(100)
      local rItem = Array[math.random(#Array)]
      local rAmount = math.random(rItem.Min, rItem.Max)
      if rAmount == 0 then
        TriggerClientEvent("vorp:TipRight", _source, _('PickableFruits_NothingFound'), 5000)
      else
        VorpInv.addItem(_source, rItem.Item, rAmount)
        TriggerClientEvent("vorp:TipRight", _source, _('PickableFruits_Collected')..rAmount..' '..rItem.Name, 5000)
      end
    end)
  end

































  --------------------------------------------------------------------------------
