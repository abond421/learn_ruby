
def echo(string) 
    string
end
    
def shout(string)
    string.upcase
end

def repeat(string, number = 2)
    ([string] * number).join(" ")
end

def start_of_word(string, length)
    string[0..length-1]
end

def first_word(string)
    string.split[0]
end 

def titleize(string)
    string.capitalize!
    small_words = ["and", "of", "the", "over"]
    formatted_string = string.split(" ").map {|word|
        if small_words.include?(word)
            word
        else
            word.capitalize
        end
    }.join(" ")
    formatted_string
end 
