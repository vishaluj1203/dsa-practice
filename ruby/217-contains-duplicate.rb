# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    tracker_container = {}
    nums.each do |num|
        if tracker_container[num]
            return true
        else
            tracker_container[num] = true
        end
    end
    false
end
