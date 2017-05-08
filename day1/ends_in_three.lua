function ends_in_3(num)
	return num % 10 == 3
end

print(tostring(ends_in_3(10003)))
print(tostring(ends_in_3(11111)))
