require ('rspec')
require ('numberstowords')

describe('hundreds_to_words') do
  #it("converts the number 0 to 'zero'") do
  #  expect(hundreds_to_words(0)).to (eq("zero"))
  #end

  it("better convert 5 to 'five") do
    expect(hundreds_to_words(5)).to eq("five")
  end

  it("better convert 25 to 'twenty five") do
    expect(hundreds_to_words(25)).to eq("twenty five")
  end

  it("better convert 25 to 'twenty five") do
    expect(hundreds_to_words(99)).to eq("ninety nine")
  end

  it("better convert 299 to 'two hundred ninety nine'") do
    expect(hundreds_to_words(299)).to eq("two hundred ninety nine")
  end

  it("better convert 999 to 'nine hundred ninety nine'") do
    expect(hundreds_to_words(999)).to eq("nine hundred ninety nine")
  end
end

describe('numbers_to_words') do
  it("better convert 7000 to 'seven thousand") do
    expect(numbers_to_words(7000)).to eq("seven thousand")
  end

  it("better convert 186000 to 'one hundred eighty six thousand'") do
    expect(numbers_to_words(186000)).to eq("one hundred eighty six thousand")
  end

  it("better convert 999586 to 'nine hundred ninety nine thousand five hundred eighty six'") do
    expect(numbers_to_words(999586)).to eq("nine hundred ninety nine thousand five hundred eighty six")
  end

  it("better convert 14376477 to 'fourteen million three hundred seventy six thousand four hundred seventy seven'") do
    expect(numbers_to_words(14376477)).to eq("fourteen million three hundred seventy six thousand four hundred seventy seven")
  end

  it("better convert 7145376477 to 'seven billion one hundred forty three million three hundred seventy six thousand four hundred seventy seven'") do
    expect(numbers_to_words(7145376477)).to eq("seven billion one hundred forty five million three hundred seventy six thousand four hundred seventy seven")
  end
end
