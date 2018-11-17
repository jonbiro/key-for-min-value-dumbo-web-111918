# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value


def key_for_min_value(name_hash)
  result = nil
  if !name_hash.empty?
    arr = []
    name_hash.each do |x, i|
      arr << i
    end
    i = 1
    min = arr[0]
    until i == arr.size do
      if arr[i] < min
        min = arr[i]
      end
      i += 1
    end
    result = name_hash.key(min)
  end
  result
end