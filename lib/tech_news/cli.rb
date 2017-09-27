# CLI Controller
class TechNews::CLI

  def call
    list_articles
    menu
    goodbye
  end

  def list_articles
    puts "The Latest Tech News:"
    @articles = TechNews::Article.all
    @articles.each.with_index(1) do |article, i|
      puts "#{i}. #{article.title}" # add source/publication???
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the article you'd like to read, type list to see the list of articles again, or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
        the_article = @articles[input.to_i - 1]
        puts "#{the_article.title}"
      elsif input == "list"
        list_articles
      else
        puts "Not sure what you want, type list or exit."
      end
    end
  end

  def goodbye
    puts "Check in again for more tech articles!"
  end
end
