--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
function DrawCircle(x,y,z,r,g,b,a)
  Citizen.InvokeNative(0x2A32FAA57B937173, 0x94FDAE17, x, y, z-0.95, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.25, r, g, b, a, 0, 0, 2, 0, 0, 0, 0)
end

function Notify(text, time)
  TriggerClientEvent("vorp:TipRight", source, text, time)
end
