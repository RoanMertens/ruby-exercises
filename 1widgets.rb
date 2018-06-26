def price(amount)
	if amount < 0
		"That is not enought!"
	elsif amount < 10
		amount * 10
	elsif amount < 50
		amount * 9
	elsif amount < 100
		amount * 8
	elsif amount >= 100
		amount * 7
	else
		"That is not an Integer!"
end