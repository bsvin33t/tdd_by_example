class Money
	attr_reader :amount , :currency

	def initialize(amount, currency)
		@amount = amount
		@currency = currency
	end

	def eql? money
		@amount == money.amount && 
		((money.is_a? self.class) ||(self.is_a? money.class))
	end

	def self.dollar amount
		Dollar.new(amount, "USD")
	end

	def self.franc amount
		Franc.new(amount, "CHF")
	end

end