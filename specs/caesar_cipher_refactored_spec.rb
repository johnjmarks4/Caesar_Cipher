require_relative 'caesar_cipher_refactored'

describe "#caesar_cipher" do

	it "shifts lower-case letters" do
		expect(caesar_cipher("h", 3)).to eql("k")
	end

	it "shifts capital letters at beginning of string" do
		expect(caesar_cipher("H", 3)).to eql("K")
		expect(caesar_cipher("Bc", 5)).to eql("Gh")
	end

	it "recognizes capital letters anywhere in string" do
		expect(caesar_cipher("abCdeFg", 3)).to eql("jhIdeFg")
	end

	it "recognizes whitespace" do
		expect(caesar_cipher("a b", 3)).to eql("d e")
	end

	it "recognizes end of alphabet" do
		expect(caesar_cipher("z", 1)).to eql("a")
	end

	it "rejects special characters" do
		expect(caesar_cipher("!", 3)).to eql("That is not a valid character")
	end
end