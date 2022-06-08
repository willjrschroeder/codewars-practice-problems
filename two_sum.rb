'''
Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.

Problem: Input is an array of integers and a target integer, output is an array of integers
I need to return the indices of two numbers in the input array taht add up to the target number

Example 1:
Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

Example 2:
Input: nums = [3,2,4], target = 6
Output: [1,2]

Example 3:
Input: nums = [3,3], target = 6
Output: [0,1]

Algorithm: 
Set a first_index variable to nil
Set a second_index variable to nil

Create a nested loop comparing each number in the given array to all the other numbers in the array
    If the numbers sum to the target
        save their indices
        break
return the target indices in an array
'''
def two_sum (array, target)
    first_index = nil # Set a first_index variable to nil
    second_index = nil # Set a second_index variable to nil

    array.each_with_index do |outer_number, outer_index| # Create a nested loop comparing each number in the given array to all the other numbers in the array
        array.each_with_index do |inner_number, inner_index|
            if outer_number + inner_number == target && outer_index != inner_index # If the numbers sum to the target
                first_index = outer_index # save their indices
                second_index = inner_index # break
            end
        end
    end
    [first_index, second_index]# return the target indices in an array
end