

def encrypt(string, shift_val)
  shift_val = shift_val % 26
  (0...string.length).each do |letter|
    c = string[letter].ord
    next unless c.between?(65, 90) || c.between?(97, 122)

    c += shift_val
    c -= 26 unless c.between?(65, 90) || c.between?(97, 122)
    string[letter] = c.chr
  end
  string
end
