dictionary = %w[below down go going horn how howdy it i low own part partner sit]
string = "Howdy partner, sit down! How's it going?"

answer = { 'down' => 1, 'go' => 1, 'going' => 1, 'how' => 2, 'howdy' => 1, 'it' => 2, 'i' => 3, 'own' => 1,
           'part' => 1, 'partner' => 1, 'sit' => 1 }

def substrings(string, dictionary)
  str_hash = Hash.new(0)
  string.split.each do |str|
    dictionary.each do |word|
      str.length.times do |i|
        (str.length - i).times do |j|
          str_hash[str[j, i + 1].downcase] += 1 if str[j, i + 1].downcase == word
        end
      end
    end
  end
  str_hash
end

hash = substrings(string, dictionary)
p(hash == answer)
p hash
