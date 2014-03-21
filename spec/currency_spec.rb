require 'spec_helper'
require 'currency'

describe "currency" do
	it "multiplies" do
		five = Dollar.new(5)
		expect(Dollar.new(10) == five.times(2))
	end
	describe "equality" do
		it "checks for equal" do
			expect(Dollar.new(5) == Dollar.new(5))
		end
		it "checks for inequality" do
			expect(Dollar.new(4) != Dollar.new(5))
		end
	end
end
