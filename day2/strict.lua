local _private = {}

function strict_read(table, key)
	if _private[key] then
		return _private[key]
	else
		error("Invalid key: " .. key)
	end
end

function strict_write(table, key, value)
	if _private[key] then
		error("Duplicate key: " .. key)
	else
		_private[key] = value
	end
end

greek_numbers = {}
mt = { __index = strict_read,
	   __newindex = strict_write }

greek_numbers = { ena = "one", 
				  dyo = "two", 
				  tria = "three" }

setmetatable(greek_numbers, mt)
print(greek_numbers.ena)
print(greek_numbers.dyo)
print(greek_numbers.tria)
-- print(greek_numbers.lalal)

treasure = {}
setmetatable(treasure, mt)
treasure.gold = 50
print(treasure.gold)
print(treasure.silver)
treasure.gold = 100
