class Money
	attr_reader :amount , :currency

	def initialize(amount, currency)
		@amount = amount
		@currency = currency
	end

	def times multiplier
		Money.new(@amount * multiplier, @currency)
	end

	def plus addend
		return Money.new(amount+addend.amount, @currency)
	end

	def eql? money
		@amount == money.amount && 
		(money.currency == self.currency)
	end

	def self.dollar amount
		Money.new(amount, "USD")
	end

	def self.franc amount
		Money.new(amount, "CHF")
	end
end