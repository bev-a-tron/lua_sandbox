function hypoteneuse(a, b)
	a2 = a * a
	b2 = b * b
	return math.sqrt(a2 + b2)
end

print(hypoteneuse(3, 4))
print(a2)

-- need to preface vars with 'local' in order to keep the scope local
function hypoteneuse_again(a, b)
	local a2_again = a * a
	local b2_again = b * b
	return math.sqrt(a2 + b2)
end

print(hypoteneuse_again(3, 4))
print(a2_again)
