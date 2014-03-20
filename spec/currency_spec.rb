require 'spec_helper'
require 'currency'

describe "currency" do
	it "multuiplies" do
		five = Dollar.new(5)
		product = five.times(2)
		expect(product.amount).to eq(10)
	end
end
