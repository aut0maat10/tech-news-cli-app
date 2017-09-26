# CLI Controller

class TechNews::CLI

  def call
    list_articles
    menu
    goodbye
  end

  def list_articles
    puts "The Latest Tech News:"
    # here doc
    puts <<-DOC
      1. Chief executive ousted at Equifax following data breach
      2. Why, Twitter, Why?
      3. Microsoft tries to stem its self-made collaboration-tool confusion
    DOC
  end

  def menu

    input = nil
    while input != "exit"
      puts "Enter the number of the article you'd like to read, type list to see the list of articles again, or type exit:"
      input = gets.strip.downcase
      case input
      when "1"
        puts "Here's article 1..."
      when "2"
        puts "Here's article 2..."
      when "3"
        puts "Here's article 3..."
      when "list"
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
