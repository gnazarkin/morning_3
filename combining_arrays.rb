numbers = ['2', '3', '4', '5', '6', '7', '8', '9', '10','J','Q','K','A']
suits = ['spades', 'hearts', 'diamonds', 'clubs']
combined_array = []


suits.each do |suit|
	numbers.each do |num| 
		combined_array << [suit,num]
	end
end

p combined_array
suits.inject([]) do |deck, suit|
	deck.concat(numbers.map {|number| [number,suits]})
end 

result = numbers.product(suits)
p result