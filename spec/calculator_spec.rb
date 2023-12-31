require 'calculator'

describe Calculator do 
	before :each do 
		@calculator = Calculator.new 
	end

	context '.add' do 
		it 'returns the sum of two numbers' do 
			expect(@calculator.add(2, 2)).to eq(4)
		end

		it 'returns the sum of more than two numbers' do 
			expect(@calculator.add(2, 5, 7)).to eq(14)
		end
	end

	context '.subtract' do 
		it 'returns the subtract of two numbers' do 
			expect(@calculator.subtract(10, 2)).to eq(8)
		end

		it 'returns the subtract of more than two numbers' do 
			expect(@calculator.subtract(10, 2, 10)).to eq(-2)
		end

		it 'return the subtract of more than two numbers' do 
			expect(@calculator.subtract(10, 2, 12)).to eq(0)
		end
	end

	context '.divide' do 
		it 'returns the divide of two numbers' do 
			expect(@calculator.divide(10, 2)).to eq(5)
		end

		it 'returns the divide of more than two numbers' do 
			expect(@calculator.divide(100, 2, 2)).to eq(25)
		end
	end

	context 'multiply' do 
		it 'returns the multiply of two numbers' do 
			expect(@calculator.multiply(2, 5)).to eq(10)
		end

		it 'returns the multiply of more than two numbers' do 
			expect(@calculator.multiply(10, 2, 2)).to eq(40)
		end
	end
end