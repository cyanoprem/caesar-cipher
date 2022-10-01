require './lib/script'

describe "#caesar_cipher" do
  it "returns the crypto code to the entered string" do
    expect(caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
  end
end
