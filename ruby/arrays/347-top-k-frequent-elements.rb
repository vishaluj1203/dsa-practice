# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
    frequency_map = Hash.new(0)
    result = []
    max_frequency = 1

    nums.each do |num|
        frequency_map[num] += 1
        curr_frequency = frequency_map[num]
        max_frequency = curr_frequency if curr_frequency > max_frequency
    end

    reversed = Hash.new { |h, k| h[k] = [] }

    frequency_map.each do |key, value|
        reversed[value] << key
    end

    while k - result.length > 0 do
        values = reversed[max_frequency]

        if values.length <= k - result.length
            result += values
        else
            result += values.slice(0, k - result.length)
        end
         max_frequency -= 1
    end

    result
end
