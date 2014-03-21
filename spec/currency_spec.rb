require 'spec_helper'
require 'currency'

describe "currency" do
	it "multiplies" do
		five = Dollar.new(5)
		product = five.times(2)
		expect(product.amount).to eq(10)
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
