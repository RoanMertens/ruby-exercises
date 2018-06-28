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
		print "Player #{amount_players} choose your name: "
		name = gets.chomp.to_s
		print "What number wil you choose #{name}: "
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

selectnr = all_players.select {|all| all.is_a? Integer }
selectname = all_players.select {|all| all.is_a? String }

how_close = play_diff(all_players, rolled)


@players_hash = Hash.new(0)

all_players.each do |players| 
	if players.is_a? String
		@players_hash[players] = ""
	end
end

puts @players_hash

if @players_hash[0] == true
	@players_hash[selectname[0]] = (all_players[0])
	return @players_hash
end

if @players_hash[1] == nil
	@players_hash[selectname[1]] = (selectnr[1])
	return @players_hash
end

puts @players_hash

#sorting the numbers
selectnr.sort!

puts "The right answer is: #{rolled}"
puts ".."


=begin
a = 0
b = 1
while b != amount_ppl
	d = (a + 1)
	@players_hash[selectname[a]] = selectnr[1]
	a += 1
	b += 1
end
=end






=begin
what_place = 0 
until what_place >= amount_ppl do
	all_players.each do |player| counting_times = 0
		if player == selectnr[counting_times]
				what_place += 1
				puts "Number #{what_place} is #{all_players[counting_times]} with the answer #{all_players[(counting_times + 1)]}"
		end
		counting_times += 1
	end
end
=end

=begin
selectnr.each {|nr| 
	all_players.map {|player|
		if player == nr
			right_number = player
		end
	}
	return right_number
}
=end
