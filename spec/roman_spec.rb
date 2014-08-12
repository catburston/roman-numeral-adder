require_relative '../RomanAddition'

# describe "adding STICK roman numerals" do
#   it "given I and I, result is II" do
#     expect(RomanAddition.new.add_test("I", "I")).to eql("II")
#   end
#   it "given I and II, result is III" do
#     expect(RomanAddition.new.add_test("I", "II")).to eql("III")
#   end
#   it "given I and III, result is IV" do
#     expect(RomanAddition.new.add_test("I", "III")).to eql("IV")
#   end
#   it "given II and III, result is V" do
#     expect(RomanAddition.new.add_test("II", "III")).to eql("V")
#   end
# end

describe "conversion to sticks" do
  it "given X return IIIIIIIIII" do
    expect(RomanAddition.new("X","V").convert_to_sticks("X")).to eql("IIIIIIIIII")
  end
  it "given XV return IIIIIIIIIIIIIII" do
    expect(RomanAddition.new("X","V").convert_to_sticks("XV")).to eql("IIIIIIIIIIIIIII")
  end
end

describe "convert stick result to numerals" do
  it "given sticks IIIIIIIIIIIIIII calculate value as XV" do
    expect(RomanAddition.new("X","V").back_to_numerals("IIIIIIIIIIIIIII")).to eql("XV")
  end
end