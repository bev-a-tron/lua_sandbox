function for_loop(a, b, f)
	while a <= b do
		print(tostring(f(a)))
		a = a + 1
	end
end

function mult_by_2(n)
	return n * 2
end

function add_13(n)
	return n + 13
end

g = mult_by_2
for_loop(1, 10, g)

print('------------------')

h = add_13
for_loop(1, 10, h)
