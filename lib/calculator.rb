class Calculator 
	def add(*numbers)
		result = 0 
		numbers.each { |number| result = result + number }
		result 
	end

	def subtract(*numbers)
		sort_numbers = numbers.sort.reverse
		result = sort_numbers.reduce{ |resta, numero| resta - numero }
	end

	def divide(*numbers)
		result = numbers[0]
		numbers[1..-1].each do |number| 
			result = result / number.to_f
		end
		result 
	end
end

c = Calculator.new 
puts c.divide(10, 2)