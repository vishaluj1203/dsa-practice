# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    nums.each_with_index do |num, index|
        ((index + 1)...nums.length).each do |ix|
            return [index, ix] if (num + nums[ix] == target)
        end
    end
    return []
end
