def substrings (my_line, my_dictionary)
    my_results = Hash.new(0)

    my_line.downcase.tr('!-/:-@', '').split.each do |word|
        make_substrings(word).each do |substring|
            if my_dictionary.include?(substring)
                my_results[substring] += 1
            end
        end
    end
    
    my_results
end

def make_substrings my_word
    my_substrings = []
    for i in 0..my_word.length do
        for j in i...my_word.length do
            my_substrings << (my_word.split('')[i..j].join(''))
            
        end
    end  
    my_substrings      
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


puts substrings("Howdy partner, sit down! How's it going?", dictionary)