class Book
    attr_accessor :title

    def title=(new_title)
        new_title.capitalize!
        small_words = ["an", "a", "and", "in", "of", "the"]
        formatted_string = new_title.split(" ").map {|word|
            if small_words.include?(word)
                word
            else 
                word.capitalize
            end 
        }.join(" ")
        @title = formatted_string
    end
end
