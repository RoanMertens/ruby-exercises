
#basic who class with no possible changes between the instances of the class.
=begin
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
=end

#Human class with instances that are possible to make unique.
class Human
	attr_reader :first_name, :middle_name, :last_name, :age 
	attr_writer :age
	def initialize(first_name, middle_name, last_name, age)
		@first_name = first_name
		@middle_name = middle_name
		@last_name = last_name
		@age = age
	end
	
	def full_name
		"#{@first_name} #{@middle_name} #{@last_name}"
	end

	def age_and_name
		"#{@first_name} is #{@age} years old."
	end

end

new_human = Human.new("Bert", "Bernard", "Brum", 12)

puts new_human.first_name + " " +
	new_human.middle_name + " " +
	new_human.last_name + " is " +
	new_human.age.to_s + " years old."
puts new_human.full_name
puts new_human.age_and_name

new_human.age = 13

puts new_human.age_and_name

