class TextAnalyzer
    attr_reader :text
   
    def initialize(text)
      @text = text.downcase
    end
   
    def count_of_words
      words = text.split(" ")
      words.count
    end
   
    def count_of_vowels
      text.scan(/[aeoui]/).count
    end
   
    def count_of_consonants
      text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
    end
   


  def most_used_letter
    arr = text.gsub(/[^a-z]/,'').split('')
    arr1 = arr.uniq
    arr2 = {}

    arr1.map do |l|
        arr2[l] = arr.count(l)
    end 

    biggest = {arr2.keys.first => arr2.values.first }

    arr2.each do |k, v|
        if v > biggest.values.first
          biggest = {}
          biggest[k] = v
        end
      end
      biggest
  end
end
