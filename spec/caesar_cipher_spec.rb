require_relative '../lib/caesar_cipher.rb'

describe "the caesar_cipher method do" do
  it "It should return a modified string" do
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
    expect(caesar_cipher("VICTORY")).to eq("CPJAVYF")
    expect(caesar_cipher("We did it", 9)).to eq("Fn mrm rc")
  end
end