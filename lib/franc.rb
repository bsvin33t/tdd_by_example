require "money"

class Franc < Money

	def times multiplier
		return Money.new(@amount * multiplier)
	end
end