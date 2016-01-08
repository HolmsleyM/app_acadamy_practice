# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
letters = string.split("")
# Making a new hash 
frequencies = Hash.new (0)
# Add one to the key's value every time the key appears
letters.each { |letter| frequencies|letter| += 1 }
# Sorting frequencies by the value of letter 
frequencies = frequencies.sort_by do |letters, letter| 
  letter
end
  
  puts letters + " " + letter 
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
