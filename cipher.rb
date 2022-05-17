def shift(ascii, n, min, max)
  ascii += n
  ascii = min + (ascii - (max + 1)) if ascii > max
  ascii = max - (min - (ascii + 1)) if ascii < min
  ascii
end

def ceaser_cipher(message, n)
  encrypted = ''
  message.each_byte do |ascii|
    if ascii.between?(65, 90)
      ascii = shift(ascii, n, 65, 90)
    elsif ascii.between?(97, 122)
      ascii = shift(ascii, n, 97, 122)
    end
    encrypted << ascii.chr
  end
  encrypted
end

word = 'What a string!'

encrypted = ceaser_cipher(word, 6)
decrypted = ceaser_cipher(encrypted, -6)

p encrypted
p decrypted
