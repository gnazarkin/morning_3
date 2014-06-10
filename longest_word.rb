animals = %w(cow chicken sheep)


def longest_word(animals)
	animals.sort_by! {|x| x.length}
	p animals.last
end

def find_longest(animals)
	animals.sort {|a,b| a.length <=> b.length}.reverse.first
end

def find_longest(animals)
	animals.max {|a,b| a.length <=> b.length}.first
end 

def find_longest(animals)
	longest_word = ""
	animals.each do |word|
		longest_word = word if word.length > longest_word.length
	end
	longest_word
end 

longest_word(animals)