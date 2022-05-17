def shift!(num, shift, min, max)
  num += shift
  num = min + (num - (max + 1)) if num > max
  num = max - ((min - 1) - shift) if num < min
end

def ceaser_cipher(message, shift)
  encrypted = ''
  message.each_byte do |ascii|
    if ascii.between?(65, 90)
      shift!(ascii, shift, 65, 96)
    elsif ascii.between?(97, 122)
      shift!(ascii, shift, 97, 122)
    end
    encrypted << ascii.chr
  end
  encrypted
end

word = 'What a string!'

encrypted = ceaser_cipher(word, 5)
decrypted = ceaser_cipher(encrypted, -5)

p decrypted
