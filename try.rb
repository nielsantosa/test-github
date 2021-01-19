grid = %w[Q A R L I F T T]
word = %w[L I F T Z]

def count_letter(array)
  new_hash = {}
  array.each do |char|
    new_hash.key?(char.to_sym) ? new_hash[char.to_sym] += 1 : new_hash[char.to_sym] = 1
  end
  return new_hash.sort_by { |key, _value| key }.to_h
end

p grid_hash = count_letter(grid)
p word_hash = count_letter(word)
# p word_hash <= grid_hash

def valid?(word_hash, grid_hash)
  word_hash.each do |key, value|
    if grid_hash.key?(key) && grid_hash[key] >= value
    else
      return false
    end
  end
  return true
end

p valid?(word_hash, grid_hash)
