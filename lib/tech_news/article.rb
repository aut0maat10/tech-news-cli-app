class TechNews::Article

  attr_accessor :title, :url, :articles

  def self.all
    @@all = self.save
  end

  def self.save #scrape_articles
    articles = []
    articles << self.scrape_google
    articles.flatten!
  end

  def self.scrape_google # go to Google Technology News, find and scrape articles, instantiate an article
    data = []
    doc = Nokogiri::HTML(open("https://news.google.com/news/headlines/section/topic/TECHNOLOGY?ned=us&hl=en"))
    title_array = doc.css("a.nuEeue").select {|element| element['aria-level'] == "2"}
    title_array.each do |element|
      article = self.new
      article.title = element.children.text
      article.url = element.attributes['href'].value
      data << article
    end
    data
  end

end
