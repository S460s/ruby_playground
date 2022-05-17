def ceaser_cipher(message, shift)
  encrypted = ''
  message.each_byte do |ascii|
    if ascii.between?(65, 90)
      ascii += shift
      ascii = 65 + (ascii - 91) if ascii > 90
    elsif ascii.between?(97, 122)
      ascii += shift
      ascii = 97 + (ascii - 123) if ascii > 122
    end
    encrypted << ascii.chr
  end
  encrypted
end

word = 'What a string!'

p ceaser_cipher(word, 5)
