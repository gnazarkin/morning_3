animals = [['dogs', 4], ['cats',3],['dogs',7]]
hash = Hash.new(0)

animals.each do |key, num|
	hash[key] += num
end

p hash