function reduce(max, init, f)
	if (max == init + 1) then
		return f(init, init + 1)
	end	
	return f(init, reduce(max, init + 1, f))
end

function add(previous, next)
	return previous + next
end

print(reduce(1, 0, add))
print(reduce(2, 0, add))
print(reduce(3, 0, add))
print(reduce(4, 0, add))
print(reduce(5, 0, add))
print(reduce(10, 0, add))
