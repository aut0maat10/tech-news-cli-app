class TechNews::Scraper

def self.scrape_google # go to Google Technology News, find and scrape articles, instantiate an article
    
    doc = Nokogiri::HTML(open("https://news.google.com/news/headlines/section/topic/TECHNOLOGY?ned=us&hl=en"))
    title_array = doc.css("a.nuEeue").select {|element| element['aria-level'] == "2"}
    title_array.each do |element|
      article = TechNews::Article.new
      article.title = element.children.text
      article.url = element.attributes['href'].value
    end
    
  end

end