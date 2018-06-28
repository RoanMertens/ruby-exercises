groceries = Hash.new

def day
  puts "When do you want to do groceries?"
  day = gets.chomp.to_sym
end

def add
  food_list = Hash.new
  food = 0
  ans = "n"
  until ans == "y" do
    puts "What do you want to buy?"
    food = gets.chomp
    puts "how much #{food} do you want?"
    amount = gets.chomp.to_i 
  	food_list[food] = amount
  	puts "do you want to stop? y or n"
    ans = gets.chomp
  	food_list
  end
  return food_list
end

def add_to_groceries
	grocery = Hash.new
	ans1 = day
	ans2 = add
	grocery[ans1] = ans2
	return grocery
end

groceries.merge!(add_to_groceries)

puts groceries

groceries.each{|key, val| puts "The grocery list for #{key} consists of:"}
groceries.each{|key, val| puts val}