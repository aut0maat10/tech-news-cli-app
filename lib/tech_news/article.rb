class TechNews::Article

  attr_accessor :title, :url 

  def self.all
    # here doc
    puts <<-DOC
      1. Chief executive ousted at Equifax following data breach
      2. Why, Twitter, Why?
      3. Microsoft tries to stem its self-made collaboration-tool confusion
    DOC
    article_1 = self.new
    article_1.title = "Chief executive ousted at Equifax following data breach"
    article_1.url = "http://www.independent.ie/world-news/equifax-boss-ousted-following-major-cybersecurity-breach-36170371.html"

    article_2 = self.new
    article_2.title = "Why, Twitter, Why?"
    article_2.url = "http://www.slate.com/articles/technology/technology/2017/09/twitter_may_double_its_character_limit_freak_out_or_nah.html"

    article_3 = self.new
    article_3.title = "Microsoft tries to stem its self-made collaboration-tool confusion"
    article_3.url = "http://www.zdnet.com/article/microsoft-tries-to-stem-its-self-made-collaboration-tool-confusion/"

    # expected result
    [article_1, article_2, article_3]
  end

end
