def create_dictionary
  puts "Now enter words of your dictionary"
  puts "Write nothing and press ENTER to fisnish"
  dictionary=[]
  loop do
    word=gets.chomp.strip.downcase
    break if word==""
    dictionary.push(word)
  end
  dictionary.uniq
end

def enter_phrase
  puts "Please enter the phrase you want to compare:"
  gets.chomp.strip.downcase
end

def substrings(string, array)   
  response={}
  array.each do |word|
      count=how_many_times_word_in_phrase(word, string) 
      if count > 0
          response[word]=count
      end
  end
  response
end

def how_many_times_word_in_phrase(word, phrase)
  long=word.length
  return 0 if long<1
  count=0
      for i in 0..phrase.length-long do
         count+=1 if word==phrase[i..i+long-1]
      end
  
  count
end

def main_program
  phrase=enter_phrase
  dictionary=create_dictionary
  puts "These are the words I've found in your phrase:"
  puts substrings(phrase, dictionary)
  
end


main_program