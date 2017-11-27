require 'pry'

def dictionary
  replacing_words = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => "@",
    "and" => "&"
  }

  replacing_words
end

def word_substituter(tweet)
  replacing_words = dictionary
  words = tweet.split(" ")
  words.each_with_index do |word, i|
    replacing_words.each do |replacer|
      binding.pry
      if words[i] == replacer[0]
        #binding.pry
        words[i] = replacer[1]
      end
    end
  end
  words.join(" ")
end
