require "money"

class Dollar < Money

	def times multiplier
		return Money.new(@amount * multiplier)
	end
end