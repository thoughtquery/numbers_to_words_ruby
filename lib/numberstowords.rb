def hundreds_to_words(num)
  words = []
  #words << 'zero' if num == 0
  hundreds = { 900 => "nine hundred", 800 => "eight hundred", 700 => "seven hundred", 600 => "six hundred", 500 => "five hundred", 400 => "four hundred", 300 => "three hundred", 200 => "two hundred", 100 => "one hundred", 90 => "ninety", 80 => "eighty", 70 => "seventy", 60 => "sixty", 50 => "fifty", 40 => "forty", 30 => "thirty", 20 => "twenty", 19 => "nineteen", 18 => "eighteen", 17 => "seventeen", 16 => "sixteen",  15 => "fifteen", 14 => "fourteen", 13 => "thirteen", 12 => "twelve", 11 => "eleven", 10 => "ten", 9 => "nine", 8 => "eight", 7 => "seven", 6 => "six", 5 => "five", 4 => "four",  3 => "three", 2 => "two", 1 => "one" }

  hundreds.each do |k,v|
    if num>=k
      words << v
      num -= k
    end
  end
  words.join(" ")
end

def numbers_to_words(num)
  words = []
  place = {10**12 => 'trillion', 10**9 => 'billion', 10**6 => 'million', 10**3 => 'thousand'}

  place.each do |k,v|
    rem = num/k
    first = num%k
    result = hundreds_to_words(rem)
    if num>=k
      words.push(result,v)
      num -= (num/k)*k
      num = first
      words.push(hundreds_to_words(num)) if num<1000
    end
  end
  words.join(" ").strip
end
