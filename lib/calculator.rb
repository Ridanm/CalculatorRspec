class Calculator 
	def add(*numeros)
		result = 0 
		numeros.each { |number| result = result + number }
		result 
	end

	def subtract(*numeros)
		sort_numbers = numeros.sort.reverse
		result = sort_numbers.reduce{ |resta, numero| resta - numero }
	end
end

c = Calculator.new 
p c.subtract(10, 34, 20, 6, 10)