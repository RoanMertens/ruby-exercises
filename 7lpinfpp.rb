#asking how many people wil play the game.
def numbppl
	puts "With how many people do you want to play: "
	gets.chomp.to_i
end

#ask the people for their name and number.
def everyone_name(amount_ppl)
	all_players = Hash.new
	amount_players = 0
	until amount_players == amount_ppl
		amount_players += 1
		print "player #{amount_players} choose your name: "
		name = gets.chomp.to_sym
		print "#{name} choose your number: "
		playernr = gets.chomp.to_i
		all_players[name] = playernr
	end
	return all_players
end

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

def players(rolled, player)
	if rolled <= player
		diff1 = rolled - player
	else
		diff1 = player - rolled
	end 
end

def calcans(diff1, diff2)
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
end

amount_ppl = numbppl

all_players = Hash.new
all_players = everyone_name(amount_ppl)

rolled = roll(play)




=begin
diff1 = players(rolled, player1)
diff2 = players(rolled, player2)

winner = calcans(diff1, diff2)

present(winner, rolled, player1, player2)
=end
