
#basic who class with no possible changes between the instances of the class.
class Who

	def firstname
		"Jan"
	end
	def middlename
		""
	end
	def lastname
		"Alleman"
	end
end

berty = Who.new

puts "#{berty.firstname} #{berty.middlename} #{berty.lastname}"
puts ""


#Human class with instances that are possible to make unique.
class Human

	def initialize(firstname, middlename, lastname, age)
		@firstname = firstname
		@middlename = middlename
		@lastname = lastname
		@age = age
	end
	def givefirstname
		puts @firstname
	end
	def givemiddlename
		puts @middlename
	end
	def givelastname
		puts @lastname
	end
	def givefullname
		puts "#{@firstname} #{@middlename} #{@lastname}"
	end
	def giveage
		puts @age
	end
	def giveboth
		puts "#{@firstname} is #{@age} years old."
	end
end

newhuman = Human.new("Bert", "Bernard", "Brum", 12)

newhuman.givefirstname
newhuman.givemiddlename
newhuman.givelastname
newhuman.givefullname
newhuman.giveage
newhuman.giveboth

