--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
Lang = {}
function Indexer(str, ...)
	if Lang[Language] ~= nil then
		if Lang[Language][str] ~= nil then
			return string.format(Lang[Language][str], ...)
		else
			return 'Translation [' .. Language .. '][' .. str .. '] does not exist'
		end
	else
		return 'Locale [' .. Language .. '] does not exist'
	end
end

function _(str, ...) -- Translate string first char uppercase
	return tostring(Indexer(str, ...):gsub("^%l", string.upper))
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
