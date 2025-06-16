# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    nums_range = nums.length
    return [] if nums_range > 10**4 || nums_range < 2  
    nums.each_with_index do |num, index|
        ((index + 1)...nums_range).each do |ix|
            if (num + nums[ix] == target)
                return [index, ix]
            end
        end
    end
    return []
end