# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)
#my counter variable
  i = 1
# Convert numbers to a string 
  number_string = num.to_s
# Create result variable to add in the numbers after they've been 'dashed'
  result= "#{number_string[0]}"

  while i < number_string.length
  #need to convert number_string to variables because "1" != 1
  current_num = number_string[i].to_i
  # if there isnt a remainder after i divide by two add current_num to result 
    if(current_num % 2 == 0) 
      result += "#{current_num.to_s}"
  #if there is a remainder after i divide by 2 add current_num to result with a dash in front of current_num
    elsif (current_num % 2 == 1) 
      result += "-#{current_num.to_s}"
    end
    i += 1
  end
 puts result
 return result
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)
