require 'spec_helper'
require 'dollar'
require 'franc'
require 'money'

describe Dollar do
	it "multiplies" do
		five = Money.dollar(5)
		puts five.inspect
		puts five.times(2).inspect
		expect(Money.dollar(10)).to eql five.times(2)
	end
	describe "equality" do
		it "checks for equal" do
			expect(Money.dollar(5)).to eql Money.dollar(5)
		end
		it "checks for inequality" do
			expect(Money.dollar(3)).not_to eql Money.dollar(5)
		end
	end
end
describe Franc do
	it "Multiplies" do
		five = Money.franc(5)
		expect(Money.franc(10)).to eql five.times(2)
	end
	describe "equality" do
		it "checks for equal" do
			expect(Money.franc(5)).to eql Money.franc(5)
		end
		it "checks for inequality" do
			expect(Money.franc(3)).not_to eql Money.franc(5)
		end
	end
end

describe Money do
	describe "equality" do
		it "checks for inequality between diffenent subclasses of Money" do
			expect(Money.franc(4)).not_to eql(Money.dollar(4))
		end
	end
end
