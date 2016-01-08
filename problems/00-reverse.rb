# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Don't use String's reverse method; that would be too simple.
#
# Difficulty: easy.

def reverse(string)
 string_array = []
 x = 0
loop do
   string_array.unshift(string[x])
   x += 1 
   break if x == (string.length )
 end 
   string_array.join 
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'reverse("maverick") == "kcirevam": ' + (reverse("maverick") == "kcirevam").to_s
)
puts(
  'reverse("hello") == "olleh": ' + (reverse("hello") == "olleh").to_s
)
puts(
  'reverse("") == "": ' + (reverse("") == "").to_s
)
