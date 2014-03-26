class Money
	attr_reader :amount

	def eql? money
		return @amount == money.amount && self.class == money.class
	end
end