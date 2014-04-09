require 'money'
class Sum
	attr_accessor :augend , :addend

	def initialize augend, addend
		@augend = augend
		@addend = addend
	end

	def reduce to
		amount =  @augend.amount + @addend.amount
		Money.new(amount, to) 
	end

end