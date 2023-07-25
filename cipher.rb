def encrypt(string, shift_val)
  shift_val = shift_val % 26
  for letter in 0...string.length
    c = string[letter].ord
    next unless c.between?(65, 90) || c.between?(97,122)
    c += shift_val
    c -= 26 unless c.between?(65, 90) || c.between?(97, 122)
    string[letter] = c.chr
  end
end

puts "Enter a word to encrypt"
user_word = gets.chomp
puts "Enter a shift value"
shift_val = gets.chomp.to_i
encrypt(user_word, shift_val)
puts user_word