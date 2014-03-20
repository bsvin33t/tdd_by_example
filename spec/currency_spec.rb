require 'spec_helper'
require 'currency'

describe "currency" do
	it "multuiplies" do
		five = Dollar.new(5)
		expect(five.times(2)).to eq(10)

	end
end
