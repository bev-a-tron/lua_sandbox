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

function ends_in_3(num)
	return num % 10 == 3
end

function prime_ends_in_3(total)
	count = 0
	j = 2
	while count < total do
		if (is_prime(j) and ends_in_3(j)) then
			print(tostring(j))
			count = count + 1
		end
		j = j + 1
	end
end

prime_ends_in_3(10)