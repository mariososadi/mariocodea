# Este programa funciona asumiendo que la cuenta de Twitter no está bloqueada
#  por el usuario. También se asume que la cuenta tiene al menos 1 'like' y 
#  y 1 'retweet' por 'Tweet'. De lo contrario los contadores de 'Retweets' y
#  'Likes' no tendrán información correcta.

require 'nokogiri'
require 'open-uri'

class TwitterScrapper

  def initialize(url)
    @url = url 
    html_file = open(@url).read
    File.write("twitter_account.html", html_file)  

  end

  def extract_username
    @doc = Nokogiri::HTML(File.open("twitter_account.html"))
    profile_name = @doc.search(".ProfileHeaderCard-name > a")
    profile_name.first.inner_text

  end

  def extract_tweets
    tweets = @doc.search(".js-tweet-text-container")
    dates = @doc.search(".time")
    retweets = @doc.search("[title~=Retweet] + div > span") 
    favs = @doc.search(".ProfileTweet-actionButton.js-actionButton.js-actionFavorite > div + div > span") 
    0.upto(4) do |i| 
    puts "#{dates[i].css('a').collect{|x| x["title"]}.join.split(" ",3).last.slice(0..6)}: " + "#{tweets[i].inner_text.delete!("\n").strip}" 
    puts "    Retweets: #{retweets.inner_text.split[i]}   Likes: #{favs.inner_text.split[i]}"
    end
 
  end
    
    

  def extract_stats
    twitter_stats = @doc.search(".ProfileCanopy-nav")
    twitter_stats.inner_text.split
  end


end
 
username = TwitterScrapper.new('https://twitter.com/ManceraMiguelMX')
puts "---------------------------------------------------------------------------"
puts "Username: #{username.extract_username}"
puts "---------------------------------------------------------------------------"
puts "Tweets: #{username.extract_stats[1]}   Following: #{username.extract_stats[3]}   Followers: #{username.extract_stats[5]}   Likes:  #{username.extract_stats[8]}"
puts "---------------------------------------------------------------------------"
puts "Tweets:"
puts "#{username.extract_tweets}"

