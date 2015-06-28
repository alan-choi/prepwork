#return the word that has the most repeated letters in the string
#if string has no words with repeats return -1
#if multiple words have the same number of repeats return the first one
def letter_count(string)

array = string.split(' ')
max_word = ""
max_counter = 0

i = 0
while i < array.length #loop through sentence
	k = 0
	counter = 0
	repeats = []
	while k < array[i].length #loop through each letter in each word
		letter = array[i][k]

		j = k+1
			while j < array[i].length #compare each letter to the rest
				if letter == array[i][j] && repeats.include?(letter) == false
			
					repeats.push(letter)
				end

				j += 1
			end
		k += 1	
	end
	
	if repeats.length > max_counter 
		max_counter = repeats.length
		max_word = array[i]
	end

	i += 1
end

if max_counter == 0
	return -1
end

return max_word
end

letter_count("Hello apple pie")

