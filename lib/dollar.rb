require "money"

class Dollar < Money

	def times multiplier
		return Money.dollar(@amount * multiplier)
	end
end