def translate(string)  
    string.split(' ').collect { |word| piglatin(word) }.join(" ")
end

def piglatin(string)
    vowels = ["a", "e", "i", "o", "u"]

    first_letter = string[0].downcase

    if vowels.include?(first_letter)
        "#{string}ay"
    elsif string[0..1] == "qu"
        string[2..-1] + "quay"
    elsif string[1..2] == "qu"
        string[3..-1] + string[0..2] + "ay"
    else
        consonants = []
        consonants << string[0]        
        if vowels.include?(string[1]) == false
            consonants << string[1]          
        if vowels.include?(string[2]) == false
              consonants << string[2]          
            end
        end
        "#{string[consonants.length..-1] + consonants.join + "ay"}"
    end
end 
    
