## 1. Write a method that returns whether a given letter is a vowel, using `if` and `elsif`

def one(letter)
  if letter == "a"
    true
  elsif letter == "e"
    true
  elsif letter == "i"
    true
  elsif letter == "o"
    true
  elsif letter == "u"
    true
  else
    false
  end
end

## 2. Write a method that returns whether a given letter is a vowel, using `case`

def two(letter)
  case letter
  when "a"
    true
  when "e"
    true
  when "i"
    true
  when "o"
    true
  when "u"
    true
  else
    false
  end
end

## 3. Write a method that returns whether a given letter is a vowel, using `if` with no `else`, all on a single line

def three(letter)
  true if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u"
end

## 4. Write a method that returns whether a given letter is a vowel without using `if` or `case` while all on a single line

def four(letter)
  letter.eql?("a") || letter.eql?("e") || letter.eql?("i") || letter.eql?("o") || letter.eql?("u")
end

## 5. Write a method that returns whether a given letter is a vowel without checking equality,
#     or the use of `if`, using the array of vowels

def five(letter)
  ["a", "e", "i", "o", "u"].include?(letter)
end

## 6. Write a method that will evaluate a string and return the first vowel found in the string, if any

def six(string)
  string.downcase.match(/a|e|i|o|u/)
end

## 7. Write a method that will evaluate a string and return the ordinal position (index) of the string where the first vowel is found,
#     if any

def seven(string)
  string.downcase.index(/a|e|i|o|u/)
end