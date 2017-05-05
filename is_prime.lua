function is_prime(num)
	i = 2
	while i < num do
		if num % i == 0 then
			return false
		end
		i = i+1
	end
	return true
end

for n = 1, 100 do
	print(n, tostring(is_prime(n)))
end
