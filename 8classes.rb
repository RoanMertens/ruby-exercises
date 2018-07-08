
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

	def initialize(first_name, middle_name, last_name, age)
		@first_name = first_name
		@middle_name = middle_name
		@last_name = last_name
		@age = age
	end
	def give_first_name
		puts @first_name
	end
	def give_middle_name
		puts @middle_name
	end
	def give_last_name
		puts @last_name
	end
	def give_full_name
		puts "#{@first_name} #{@middle_name} #{@last_name}"
	end
	def give_age
		puts @age
	end
	def give_both
		puts "#{@first_name} is #{@age} years old."
	end
end

new_human = Human.new("Bert", "Bernard", "Brum", 12)

new_human.give_first_name
new_human.give_middle_name
new_human.give_last_name
new_human.give_full_name
new_human.give_age
new_human.give_both

