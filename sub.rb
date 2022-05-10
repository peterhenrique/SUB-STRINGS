
require 'pry-byebug'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings (text, dictionary)

    downcase = text.downcase
    result = Hash.new(0)


    dictionary.each do |word|
        if downcase.include?(word)

            word_count= downcase.scan(word).length
        result[word] = word_count
        word_count = 0
        end 
    end 
    p result

end 


substrings("Howdy partner, sit down! How's it going?", dictionary)
