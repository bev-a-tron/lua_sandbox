function strict_read(table, key)
	local _private = {}

	if _private[key] then
		return _private[key]
	else
		error("Invalid key: " .. key)
	end
end

greek_numbers = { ena = "one", 
				  dyo = "two", 
				  tria = "three" }

mt = { __index = strict_read }

setmetatable( greek_numbers, mt )
print(greek_numbers['ena'])
print(greek_numbers['dyo'])
print(greek_numbers['tria'])
print(greek_numbers['lalallaa'])
