require 'spec_helper'
require 'dollar'
require 'franc'

describe "Dollar" do
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
describe "Franc" do
	it "Multiplies" do
		five = Franc.new(5)
		expect(Franc.new(10) == five.times(2))
	end
	describe "equality" do
		it "checks for equal" do
			expect(Franc.new(5) == Franc.new(5))
		end
		it "checks for inequality" do
			expect(Franc.new(4) == Franc.new(5))
		end
	end
end

describe Money do
	describe "equality" do
		it "checks for inequality between diffenent subclasses of Money" do
			expect(Franc.new(4)).not_to eql(Dollar.new(4))
		end
	end
end
