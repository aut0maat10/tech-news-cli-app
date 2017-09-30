# CLI Controller
class TechNews::CLI

  def call
    list_articles
    menu
    goodbye
  end

  def list_articles
    puts " "
    puts "The Latest in Tech News:"
    puts " "
    @articles = TechNews::Article.all
    @articles.each.with_index(1) do |article, i|
      puts "#{i}. #{article.title}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts " "
      puts "Enter the number of the article you'd like to read, type list to see the list of articles again, or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
        the_article = @articles[input.to_i - 1]
        puts " "
        puts "#{the_article.title}"
        puts "#{the_article.url}"
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
