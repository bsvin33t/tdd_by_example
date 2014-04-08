require "money"

class Franc < Money

	def times multiplier
		return Money.franc(@amount * multiplier)
	end
end