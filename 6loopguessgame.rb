#rolling of the random number
def roll(between)
	return Random.new.rand(between)
end

#game intro
def play
	puts "Lets play a game of guessing the number!"
	print "The correct number in this game will be from 0 to "
	ans = gets.chomp.to_i
end

#presenting the winner
def present(winner, rolled, player1, player2)
	case winner
		when "draw"
		puts "Its a draw"
		print "Player 1 choose: "
		puts player1
		print "Player 2 choose: "
		puts player2
		puts "The answer was: "
		puts rolled
	when  "ans1"
		print "The answer is: "
		sleep 0.5
		puts rolled
		sleep 0.6
		puts "The winner with the answer #{player1} is player 1."
		sleep 0.5
		puts "Congratulations!"
		sleep 0.5
	when "ans2"
		print "The answer is: "
		sleep 0.5
		puts rolled
		sleep 0.6
		puts "So the winner with the answer #{player2} is player 2."
		sleep 0.5
		puts "Congratulations!"
		sleep 0.5
	else
		puts "There was an error!"
		puts "You all lose!"
	end
end

rolled = roll(play)

print "Player 1 chooses the number : "
player1 = gets.chomp.to_i

print "Player 2 chooses the number : "
player2 = gets.chomp.to_i


if rolled <= player1
	diff1 = rolled - player1
else
	diff1 = player1 - rolled
end 

if rolled <= player2
	diff2 = rolled - player2
else
	diff2 = player2 - rolled
end 

winner = "draw"
if diff1 > diff2
	winner = "ans1"
elsif diff2 > diff1
	winner = "ans2"
elsif diff1 == diff2
	winner = "draw"
else
	winner = "error"
end

present(winner, rolled, player1, player2)
