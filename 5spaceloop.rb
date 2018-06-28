puts "..."
puts "Calculating engine temp every 0.1 seconds! "
puts "..."
sleep 1
a = 4
x = 1
until a > 1600 do
	puts "#{x}: #{a}"
	a += 30
	x += 5
	sleep 0.1
end

sleep 1
puts "..."
puts "Engine temp okay!"
sleep 1
puts "..."
sleep 1
puts "Countdown start!"
puts ""

b = 10
while b >= 1 do
	sleep 1
	puts b
	b -= 1
	if b == 3
		puts "IGNITION START!"
	elsif b == 0
		sleep 1
		puts "WE HAVE LIFTOF!"
	end
end

sleep 0.5
puts ""
puts "Rocket is in the air!"
puts ""
sleep 0.7
puts "I repeat!"
puts "Rocket is in the air!"
puts ""
sleep 1
puts "Noticing deviation."
puts "Calculating."
puts ""
s = 0.1
loop do s += 0.1
	puts "Deviation: #{s}"
	puts ""
	break if s >= 0.6
	sleep 0.4
end

puts ""
puts "Adjusting angle."
puts ""
sleep 0.4
puts "No noticable deviation."
puts ""
puts "Course has been fixed."
puts ""
puts ""
sleep 0.4

puts "Breaking through atmosphere in:"
at = 2000
for i in 1..10
	puts at
	sleep 0.4
	at -= 200
end
puts "Were breaking through!"
puts ""
sleep 0.5
puts "And were out!!!"