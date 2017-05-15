dietrich = {
	name		= "Dietrich",
	health		= 100,
	take_hit	= function(self)
						self.health	 = self.health - 10
				  end
}

clone = {
	name		= dietrich.name,
	health		= dietrich.health,
	take_hit	= dietrich.take_hit
}

print(clone.health)

dietrich.take_hit(dietrich)
print(dietrich.health)
print(clone.health)

Villain = {
	health = 100,
	new = function(self, name)
		local obj = {
			name = name,
			health = self.health
		}
		setmetatable(obj, self)
		self.__index = self
		return obj
	end,
	take_hit = function(self)
		self.health = self.health - 10
	end
}

dietrich = Villain.new(Villain, "Dietrich")

Villain.take_hit(dietrich)
dietrich.take_hit(dietrich)

SuperVillain = Villain.new(Villain)
function SuperVillain.take_hit(self)
	self.health = self.health - 5
end


toht = SuperVillain.new(SuperVillain, 'Toht')
print(toht.health)

toht.take_hit(toht)
print(toht.health)

Villain = { health = 100 }
function Villain:new(name)
		local obj = {
			name = name,
			health = self.health
		}
		setmetatable(obj, self)
		self.__index = self
		return obj
end

function Villain:take_hit()
	self.health = self.health - 10
end

dietrich = Villain:new('Dietrich')
dietrich:take_hit()
print(dietrich.health)

toht = SuperVillain:new('Toht')
toht:take_hit()
print(toht.health)
