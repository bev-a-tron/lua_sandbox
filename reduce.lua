function reduce(max, init, f)
	if (max == init) then
		return init
	elseif (max == init + 1) then
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

function multiply(previous, next)
	return previous * next
end

function factorial(number)
	if (number == 1) then
		return 1
	end
	return number * factorial(number - 1)
end

print(factorial(1))
print(factorial(2))
print(factorial(3))
print(factorial(4))
print(factorial(5))
print(factorial(6))

print(reduce(1, 1, multiply))
print(reduce(2, 1, multiply))
print(reduce(3, 1, multiply))
print(reduce(4, 1, multiply))
print(reduce(5, 1, multiply))
print(reduce(6, 1, multiply))

function factorial2(number)
	reduce(number, 1, multiply)
end

factorial2(1)
factorial2(2)
factorial2(3)
factorial2(4)
factorial2(5)
factorial2(6)
