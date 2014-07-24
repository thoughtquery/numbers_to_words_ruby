require ('rspec')
require ('numberstowords')

describe('number_to_words')  do
  it("converts the number 0 to 'zero'") do
    expect(number_to_words(0).to eq("zero")
  end
end
