#take the num parameter being passed which will always be a positive integer 
#and return its additive persistence which is the number of times you must 
#add the digits in num until you reach a single digit.

class Integer
	def sum_digits
		to_s.split('').inject(0){|sum, n| sum += n.to_i}
	end
end


def add_per(num)
	sum = 0
	count = 0
	until num < 10
		sum = num.sum_digits
		num = sum
		puts num
		count += 1
	end
	puts count
end



add_per(999999999999999999999)
