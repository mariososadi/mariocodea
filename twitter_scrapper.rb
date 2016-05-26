require 'nokogiri'
require 'open-uri'

class TwitterScrapper

	attr_reader :profile, :doc

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
  	
  	
  	
    0.upto(4) do |i| 
    puts "#{dates[i].css('a').collect{|x| x["title"]}.join.split(" ",3).last.slice(0..6)}: " + "#{tweets[i].inner_text.delete!("\n").strip}" 
    
    end
    
    
    
end


  def extract_stats
  end

end

username = TwitterScrapper.new('https://twitter.com/desire_et')
puts "Username: #{username.extract_username}"
puts "---------------------------------------------------------------------------"
puts "Tweets:"
puts "#{username.extract_tweets}"

