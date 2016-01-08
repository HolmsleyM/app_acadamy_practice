# Write a method that returns the `n`th prime number. Recall that only
# numbers greater than 1 can be prime.
#
# Difficulty: medium.

# You may use our `is_prime?` solution.
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
 
def nth_prime(n)
  prime_num_count = 0
  possible_prime = 1
   while prime_num_count != n do 
     possible_prime += 1
    if is_prime?(possible_prime)
      prime_num_count += 1
    end
   end
  puts possible_prime
  possible_prime 
end
        

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('nth_prime(1) == 2: ' + (nth_prime(1) == 2).to_s)
puts('nth_prime(2) == 3: ' + (nth_prime(2) == 3).to_s)
puts('nth_prime(3) == 5: ' + (nth_prime(3) == 5).to_s)
puts('nth_prime(4) == 7: ' + (nth_prime(4) == 7).to_s)
puts('nth_prime(5) == 11: ' + (nth_prime(5) == 11).to_s)
