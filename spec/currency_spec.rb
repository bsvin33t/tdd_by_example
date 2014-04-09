require 'spec_helper'
require 'money'
require 'bank'

describe Money do
	it "multiplies" do
		five = Money.dollar(5)
		expect(Money.dollar(10)).to eql five.times(2)
		five = Money.franc(5)
		expect(Money.franc(10)).to eql five.times(2)
	end
	describe "equality" do
		it "checks for equal" do
			expect(Money.dollar(5)).to eql Money.dollar(5)
		end
		it "checks for inequality" do
			expect(Money.dollar(3)).not_to eql Money.dollar(5)
		end
		it "checks for inequality between diffenent subclasses of Money" do
			expect(Money.franc(4)).not_to eql(Money.dollar(4))
		end
		it "checks if the currencies and the values are the same" do
			expect(Money.new(10, "CHF")).to eql(Money.new(10, "CHF"))
		end
	end
	it "tells me the name of the currency" do
		expect("USD").to eql Money.dollar(1).currency
		expect("CHF").to eql Money.franc(1).currency
	end

	describe "addition" do
		it "adds same currencies" do
			five = Money.dollar(5)
			sum = five.plus(five)
			bank = Bank.new()
			reduced = bank.reduce(sum, "USD")
			expect(reduced).to eql(Money.dollar(10))
		end
		it "adds same currencies" do
			five = Money.dollar(5)
			sum = five.plus(Money.dollar(2))
			bank = Bank.new()
			reduced = bank.reduce(sum, "USD")
			expect(reduced).to eql(Money.dollar(7))
		end
		it "reuturns sum" do
			five = Money.dollar(5)
			result = five.plus(five)
			sum = result
			expect(five).to eql(sum.augend)
			expect(five).to eql(sum.addend)
		end
	end

	describe "Bank" do
		it "reduce money" do
			bank = Bank.new()
			result = bank.reduce(Money.dollar(1), "USD")
			expect(Money.dollar(1)).to eql(result)
		end
	end
end