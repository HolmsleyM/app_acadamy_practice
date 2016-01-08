# Write a method that takes in an integer (greater than one) and
# returns true if it is prime; otherwise return false.
#
# You may want to use the `%` modulo operation. `5 % 2` returns the
# remainder when dividing 5 by 2; therefore, `5 % 2 == 1`. In the case
# of `6 % 2`, since 2 evenly divides 6 with no remainder, `6 % 2 == 0`.
# More generally, if `m` and `n` are integers, `m % n == 0` if and only
# if `n` divides `m` evenly.
#
# You would not be expected to already know about modulo for the
# challenge.
#
# Difficulty: medium.
def is_prime?(number)
  x = 2 

  
  while x < number
    if (number % x) == 0 
      return false
    end 
    x += 1 
  end 
  
return true 
 end 

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('is_prime?(11) == false: ' + (is_prime?(11) == false).to_s)
puts('is_prime?(13) == true: ' + (is_prime?(13) == true).to_s)
puts('is_prime?(412) == true: ' + (is_prime?(412) == true ).to_s)
puts('is_prime?(9) == true: ' + (is_prime?(9) == true).to_s)
