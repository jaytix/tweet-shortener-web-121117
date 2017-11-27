require 'pry'

def dictionary
  replacing_words = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "For" => '4',
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
      #binding.pry
      if words[i] == replacer[0]
        #binding.pry
        words[i] = replacer[1]
      end
    end
  end
  words.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  elsif tweet.length < 140
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  array = []
  i = 0
  newTweet = word_substituter(tweet)
  if newTweet.length > 140
    tweetArray = newTweet.split("")
      until array.length == 140
        array.push(tweetArray[i])
        i += 1
      end
    #binding.pry
    return array.join("")
  elsif tweet.length < 140
    return tweet
  end
end
