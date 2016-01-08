# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

def third_greatest(nums)
  counter = 0
  greatest3 = nil
  greatest2 = nil
  greatest = nil
  while counter < nums.length
    value = nums[counter]
    if greatest == nil || value > greatest  
       greatest3 = greatest2
       greatest2 = greatest
       greatest = value
    elsif greatest2 == nil || value > greatest2
      greatest3 = greatest2
      greatest2 = value
    elsif greatest3 == nil || value > greatest3
    greatest3 = value 
    end 
    counter += 1 
  end 
  puts greatest3 
end



# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'third_greatest([5, 3, 7]) == 3: ' +
  (third_greatest([5, 3, 7]) == 3).to_s
)
puts(
  'third_greatest([5, 3, 7, 4]) == 4: ' +
  (third_greatest([5, 3, 7, 4]) == 4).to_s
)
puts(
  'third_greatest([2, 3, 7, 4]) == 3: ' +
  (third_greatest([2, 3, 7, 4]) == 3).to_s
)
