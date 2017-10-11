# CLI Controller
class TechNews::CLI

  def call
    TechNews::Scraper.scrape_google
    @articles = TechNews::Article.all
    list_articles
    menu
    goodbye
  end

  def list_articles
    puts " "
    puts "The Latest in Tech News:"
    puts " "
    @articles.each.with_index(1) do |article, i|
      puts "#{i}. #{article.title}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts " "
      puts "Enter the number of the article you'd like to read, type list to see the list of articles again, or type exit:"
      puts " "
      input = gets.strip.downcase

      if input.to_i.between?(1, @articles.size) 
        the_article = @articles[input.to_i - 1]
        puts ""
        `open #{the_article.url}`
        puts "#{input}. #{the_article.title}"
        # puts "#{the_article.url}"
        puts " "
      elsif input == "list"
        list_articles
      else
        puts "Not sure what you want, type list or exit." unless input == "exit"
      end
    end
  end

  def goodbye
    puts "Check in again for more tech articles!"
  end
end
