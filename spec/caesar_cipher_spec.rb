require_relative 'spec_helper'

describe Caesar_Cipher do 

	before :all do
		@cc = Caesar_Cipher.new
	end

	describe "#caesar_cipher" do 
		it "returns a string" do
			expect(@cc.caesar_cipher("test string", rand(1..26)).class).to be String
		end

		it "shifts characters by a given number" do
			expect(@cc.caesar_cipher("a", 1)).to eql 'b'
			expect(@cc.caesar_cipher("z", 1)).to eql 'a'
		end

		it "doesn't shift if the number is 0" do
			expect(@cc.caesar_cipher("a", 0)).to eql 'a'
		end

		it "returns an uppercase letter for an uppercase shift" do
			expect(@cc.caesar_cipher("A", 1)).to eql "B"
		end

		it "ignores punctuation when encoding" do
			expect(@cc.caesar_cipher("A_B", 1)).to eql "B_C"
		end

		it "takes two arguments" do
			expect{@cc.caesar_cipher("string")}.to raise_error(ArgumentError)
			expect{@cc.caesar_cipher("string", 5, 9)}.to raise_error(ArgumentError)
		end

		it "takes a string as its first argument" do
		end

		it "takes an integer as its second argument" do
		end
	end


end