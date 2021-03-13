require 'pry'

class PigLatinizer

    attr_accessor :text

    def initialize(pigfood = nil)
        @text = pigfood
    end

    def single_words
        self.text.split(" ")
    end

    def piglatin
        word_arry = self.single_words.map do |word|
            word_parts = word.partition(/[aeiouAEIOU]/)
            if word_parts[0] == ""
            pig_word = word_parts[1] + word_parts[2] + "way"
            else
            pig_word = word_parts[1] + word_parts[2] + word_parts[0] + "ay"
            end
            pig_word
        end
        word_arry.join(" ")
    end

    def piglatinize(text)
        self.text = text
        self.piglatin
    end
end