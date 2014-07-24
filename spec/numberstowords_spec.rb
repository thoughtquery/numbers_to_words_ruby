require ('rspec')
require ('numberstowords')

describe('number_to_words') do
  it("converts the number 0 to 'zero'") do
    expect(number_to_words(0)).to (eq("zero"))
  end

  it("better convert 5 to 'five") do
    expect(number_to_words(5)).to eq("five")
  end

  it("better convert 25 to 'twenty five") do
    expect(number_to_words(25)).to eq("twenty five")
  end

  it("better convert 25 to 'twenty five") do
    expect(number_to_words(99)).to eq("ninety nine")
  end
end
