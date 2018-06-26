name = {
	mother: "jaq",
	father: "ton",
	wife: "dide",
	i: "roan",
}

def myself(k, v)
	if v == "roan"
		puts "And #{key} am #{val}."
	else
		puts "my #{k} is #{v}."
	end
end

name.each{|key,val| myself(key, val)}