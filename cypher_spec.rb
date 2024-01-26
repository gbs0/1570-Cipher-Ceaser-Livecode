require 'rspec'
require_relative 'cypher'

describe "It should decrypt all the texts correctly" do
  it "Return an empty string if receive diferent data in params" do
    cypher_text = cypher(["gabriel"])
    expect(cypher_text).to eq("")
  end

  it "Return an empty string if receive diferent data in params" do
    cypher_text = cypher(1996)
    expect(cypher_text).to eq("")
  end

  it "Should encrypt the following text" do
    phrase = "THE QUICK BROWN, FOX JUMPS OVER THE LAZY DOG"
    encrypted_text = "QEB NRFZH YOLTK, CLU GRJMP LSBO QEB IXWV ALD"

    result = cypher(phrase, 3)
    expect(result).to eq(encrypted_text)
  end
end
