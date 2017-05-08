film = 'Skull'

if film == 'Raiders' then
	print('Good')
elseif film == 'Temple' then
	print('Meh')
elseif film == 'Crusade' then
	print('Great')
else
	print('Huh?')
end

for i = 1, 5 do
	print(i)
end

for i = 1, 5, 2 do
	print(i)
end

while math.random(100) < 50 do
	print('Tails; flipping again')
end
