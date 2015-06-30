#same as add_peristance but multiply

class Integer
	def find_product
		to_s.split('').inject(1){|prod, a| prod *= a.to_i}
	end

end

def multiply_persist(num)
	product = 1
	count = 0
	until num < 10
		product = num.find_product
		num = product
		count += 1
	end
	puts count
end


multiply_persist(25)
multiply_persist(12345)