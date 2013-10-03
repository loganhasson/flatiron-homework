class String

  def punct
    marks = ""
    regex = "^\\w\\s\\-"
    # but this part does
    self.each_char do |c|
      marks += c[eval("/[#{regex}]/")] if c[eval("/[#{regex}]/")] != nil
    end

    marks
  end
end

list_of_tweets = ["Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!",
  "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?",
  "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real.",
  "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"]

short_words = {
  to: "2",
  two: "2",
  too: "2", 
  for: "4", 
  four: "4",
  be: "b",
  you: "u",
  at: "@",
  and: "&"
}

def shorten(tweet, list)
  tweet_array = tweet.split(' ')
  dirty_words = {}
  i = 0
  tweet_array.each do |word|
    if word.punct != ""
      dirty_words[word.gsub(word.punct, '') + "#{i}"] = word.punct
      word.gsub!(word.punct, '')
    end
    tweet_array[i] = list[word.downcase.to_sym] if list.has_key?(word.downcase.to_sym)
    i += 1
  end

  i = 0
  tweet_array.each do |word|
    if dirty_words.include?(word + "#{i}")
      tweet_array[i] = word + dirty_words[word + "#{i}"]
    elsif list.has_value?(word)
      tweet_array[i] = word + "#{dirty_words[list.key(word).to_s]}"
    end
    i += 1
  end
  tweet_array
end

def truncate(string)
  string.slice(0, 140)
end

def print_tweets(tweets, words_list)
  tweets.each do |tweet|
    if tweet.length <= 140
      puts tweet
    else
      puts truncate(shorten(tweet, words_list).join(' '))
    end
  end
end

print_tweets(list_of_tweets, short_words)