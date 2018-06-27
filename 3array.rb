#friends array.
friends = ["koen", "michael", "Tien", "Vincent", "Tom", "Wouter", "Hans"]



#made a hash by mistake. Still going to use it in the exercize!
family = {
	mother: "jaq",
	father: "ton",
	wife: "dide",
	i: "roan",
}

#added a couple of people to the friends array and family hash.
friends << "bertus"
family[:neef] = "bertus"
friends.push("freddie")
family[:neefje] = "freddie"
friends.unshift("dide")

#method to recognize myself from my family.
def myself(k, v)
	if v == "roan"
		puts "And #{k.capitalize} am #{v.capitalize}."
	else
		puts "my #{k} is #{v.capitalize}."
	end
end

a = 0
family.each{|key,val| myself(key, val)}
friends.each do |name| a += 1
  if a == friends.length
	puts "And last but not least."
	puts "#{name.capitalize} is a friend of me."
  else
	puts "#{name.capitalize} is a friend of me."
  end
end

