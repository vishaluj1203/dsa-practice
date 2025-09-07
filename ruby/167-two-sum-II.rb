# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}

def two_sum(numbers, target)
  first = 0
  last = numbers.length - 1

  numbers.each_with_index do |num, index|
    sum = numbers[first] + numbers[last]

    if sum == target
      return [first + 1, last + 1]
    elsif sum > target
      last -= 1
    else
      first += 1
    end
  end

  []
end
