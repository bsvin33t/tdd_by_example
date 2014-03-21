class Dollar
	def initialize(amount)
		@amount = amount
	end

	def times multiplier
		return Dollar.new(@amount * multiplier)
	end

	def equal dollar
		return @amount == dollar.amount
	end
	private
	:amount
end