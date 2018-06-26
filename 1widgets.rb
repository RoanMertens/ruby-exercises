def price(amount)
	if amount < 0
		"That is not enought!"
	elsif amount > 0 && amount < 10
		amount * 10
	elsif amount > 0 && amount < 50
		amount * 9
	elsif amount > 0 && amount < 100
		amount * 8
	elsif amount > 0 && amount >= 100
		amount * 7
	else
		"That is not an Integer!"
	end
end

def answer(ans)
	puts ans
	gets.chomp.to_i
end

def back(ans1, ans2)
	if ans1 == 0
		ans2
	else
		"The price for #{ans1} is #{ans2} coins"
	end
end

puts "This is the widget store!"
puts "A widget costs 10 coins."
puts "But we might be able to make a deal if you buy enough widgets."
a = answer("How many widgets do you want?")

c = price(a)

puts back(a, c)
