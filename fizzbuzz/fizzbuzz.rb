# assignment.rb

# FizzBuzz - The Programmer's Stairway to Heaven
# Define the fizzbuzz method to do the following: 10pts
  # Use the modulo % method (divisible by)
    # 2 % 2 #=> true
    # 1 % 2 #=> false
  # If a number is divisible by 3, puts "Fizz".
  # If a number is divisible by 5, puts "Buzz".
  # If a number is divisible by 3 and 5, puts "FizzBuzz"
    # Use if statements 2pts
    # Use the && operator 3pts

# Write a loop that will group the numbers from 1 through 50
# by whether they fizz, buzz, or fizzbuzz - 10pts

def fizzbuzz(number)
  if (number % 3).zero? && (number % 5).zero?
    "FizzBuzz"
  elsif number % 5 == 0
    "Buzz"
  elsif number % 3 == 0
    "Fizz"
  else
    nil
  end
end

def fizzy_loop(start_num, end_num)
  fizz_array = []
  buzz_array = []
  fizzbuzz_array = []

  (start_num..end_num).each do |number|
    fizz_array << number if fizzbuzz(number) == "Fizz"
    buzz_array << number if fizzbuzz(number) == "Buzz"
    fizzbuzz_array << number if fizzbuzz(number) == "FizzBuzz"
  end

  puts "Fizz: " + fizz_array.to_s
  puts "Buzz: " + buzz_array.to_s
  puts "FizzBuzz: " + fizzbuzz_array.to_s
end

fizzy_loop(1, 50)

# Even though this seems way more complicated to me, I really wanted to see if I could do it pretending
# I never knew about arrays (since we didn't cover them today).
# This is how I'd group without being able to story the Fizzes, the Buzzes, or the FizzBuzzes anywhere.
# And I feel like it's still technically one loop. (Nested loops FTW!)

def simple_fizzy(start_num, end_num)
  (start_num..end_num).each do |number|
    puts "Fizz: " + number.to_s if fizzbuzz(number) == "Fizz"
    if number == end_num
      (start_num..end_num).each do |number|
        puts "Buzz: " + number.to_s if fizzbuzz(number) == "Buzz"
        if number == end_num
          (start_num..end_num).each do |number|
            puts "FizzBuzz: " + number.to_s if fizzbuzz(number) == "FizzBuzz"
          end
        end
      end
    end
  end
end

simple_fizzy(1, 50)