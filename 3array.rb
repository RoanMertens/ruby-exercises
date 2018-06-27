family = {
	mother: "jaq",
	father: "ton",
	wife: "dide",
	i: "roan",
}

def myself(k, v)
	if v == "roan"
		puts "And #{k} am #{v}."
	else
		puts "my #{k} is #{v}."
	end
end

family.each{|key,val| myself(key, val)}