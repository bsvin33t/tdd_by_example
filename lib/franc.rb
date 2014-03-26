require "money"

class Franc < Money
	def initialize(amount)
		@amount = amount
	end

	def times multiplier
		return Franc.new(@amount * multiplier)
	end
end