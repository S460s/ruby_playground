dictionary = %w[below down go going horn how howdy it i low own part partner sit]
string = "Howdy partner, sit down! How's it going?"

def substrings(string, dictionary)
  str_hash = Hash.new(0)

  string.split.each do |str|
    dictionary.each do |word|
      for i in 1..str.length
        for j in 0..(str.length - i)
          str_hash[str[j, i].downcase] += 1 if str[j, i].downcase == word
        end
      end
    end
  end
  str_hash
end

hash = substrings(string, dictionary)
p hash
