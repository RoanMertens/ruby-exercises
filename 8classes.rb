
class Human

	def initialize(name, age)
		@name = name
		@age = age
	end
	def givename
		puts @name
	end
	def giveage
		puts @age
	end
	def giveboth
		puts "#{@name} is #{@age} years old."
	end
end

newhuman = Human.new("Bert", 12)

puts newhuman.givename
puts newhuman.giveage
puts newhuman.giveboth


class Who

	def firstname
		"Bert"
	end
	def middlename
		""
	end
	def lastname
		"bruhman"
	end
end


berty = Who.new

puts "#{berty.firstname} #{berty.middlename} #{berty.lastname}"
