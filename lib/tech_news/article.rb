class TechNews::Article

  attr_accessor :title, :url

  def self.all
    self.scrape_articles
  end

  def self.scrape_articles
    articles = []

    # go to Google Technology News, find and scrape articles
    # instantiate an article

    articles
  end
end
