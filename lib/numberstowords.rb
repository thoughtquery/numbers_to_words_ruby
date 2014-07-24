def number_to_words(num)
  words = []
  onesAndTweens = { 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen" }
  tens = { 2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety" }
  len = num.to_s.length
  onesPlace = num.to_s.slice(-1).to_i
  tensPlace = num.to_s.slice(-2).to_i
  if num==0
    words << 'zero'
  elsif num>0 && num<20
    words << onesAndTweens[num]
  else
    words.push(tens[tensPlace],onesAndTweens[onesPlace])
  end
  words.join(" ")
  #words.push(onesAndTweens[onesPlace.to_i])
end

puts number_to_words(25)
