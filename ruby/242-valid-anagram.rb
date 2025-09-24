# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
    source_count_map = Hash.new(0)
    target_count_map = Hash.new(0)

    source_length = s.length
    target_length = t.length

    return false if source_length != target_length

    (0...source_length).each do |index|
        if source_count_map.key?(s[index])
            source_count_map[s[index]] += 1
        else
            source_count_map[s[index]] = 1
        end

        if target_count_map.key?(t[index])
            target_count_map[t[index]] += 1
        else
            target_count_map[t[index]] = 1
        end
    end


    source_count_map.each do |character, count|
        return false if target_count_map[character] != count
    end

    true
end
