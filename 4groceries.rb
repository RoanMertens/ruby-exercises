groceries = Hash.new
food_list = Hash.new
food = 0

puts "When do you want to do groceries?"
day = gets.chomp.to_sym
ans = "n"

until ans == "y" do
  	puts "What do you want to buy?"
  	food = gets.chomp
  	puts "how much #{food} do you want?"
  	amount = gets.chomp.to_i 
  	food_list[food] = amount
  	puts "do you want to stop? y or n"
  	ans = gets.chomp
end

groceries[day] = food_list


puts groceries

