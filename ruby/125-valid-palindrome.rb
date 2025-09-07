# @param {String} s
# @return {Boolean}
def is_palindrome(s)
    sanitized_list = s.downcase.gsub(/[^a-zA-Z0-9]/, '').split('')
    last = sanitized_list.length - 1
    scan_size = sanitized_list.length / 2
    sanitized_list[0, scan_size].each do |str|
        if str == sanitized_list[last]
            last -= 1
        else
            return false
        end
    end

    return true
end
