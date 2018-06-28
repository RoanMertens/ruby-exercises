#game intro + dice roll.
def play
	puts "Lets play a game of guessing the number!"
	print "The correct number in this game will be between 0 and "
	ans = gets.chomp.to_i
	return Random.new.rand(ans)
end

#asking how many people wil play the game.
def numbppl
	print "With how many people do you want to play: "
	gets.chomp.to_i
end

#ask the people for their name and number.
def everyone_name(amount_ppl)
	all_players = []
	amount_players = 0
	until amount_players == amount_ppl
		amount_players += 1
		print "player #{amount_players} choose your name: "
		name = gets.chomp.to_s
		print "#What number wil you choose {name}: "
		playernr = gets.chomp.to_i
		all_players += [name, playernr]
	end
	return all_players
end

#distance between player guess and correct answer.
def play_diff(all_players, rolled)
	player_diff = all_players.map do |val|
		if val.is_a? Integer
			if rolled >= val
				diff1 = rolled - val
				diff1
			else
				diff1 = val - rolled
				diff1
			end 
		else
			val
		end
	end

	return player_diff
end

#comparing twoo players
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

rolled = play

amount_ppl = numbppl

all_players = everyone_name(amount_ppl)

how_close = play_diff(all_players, rolled)

selectnr = how_close.select {|all| all.is_a? Integer }
selectname = how_close.select {|all| all.is_a? String }

#sorting the numbers
selectnr.sort!

puts selectnr
#matching the sorted numbers to the names

puts "The right answer is: #{rolled}"
puts ".."

what_place = 0
how_close.map do |name| counting_times = 0
	until counting_times == amount_ppl do
		if name == selectnr[(counting_times - 1)] && name.is_a? Integer
			what_place += 1
			puts "Number #{what_place} is #{all_players[(counting_times - 1)]} with the answer of #{all_players[counting_times]}"
		end
		counting_times += 1
	end
end


=begin
counting_times = 1 
until counting_times == amount_ppl do
	how_close.map do |name|
		if name == selectnr[(counting times - 1)]
			puts how_close[((name * 2)-1)]
			a += 1
		end
	end
	counting_times += 1
end
=end
