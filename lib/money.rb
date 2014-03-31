class Money
	attr_reader :amount

	def initialize(amount)
		@amount = amount
	end

	def eql? money
		@amount == money.amount && 
		((money.is_a? self.class) ||(self.is_a? money.class))
	end

	def self.dollar amount
		Dollar.new(amount)
	end

	def self.franc amount
		Franc.new(amount)
	end

end