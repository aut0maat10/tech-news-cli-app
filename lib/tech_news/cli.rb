# CLI Controller

class TechNews::CLI

  def call
    puts "The Latest Tech News:"
    list_articles
  end

  def list_articles
    # here doc 
    puts <<-DOC
      1. Chief executive ousted at Equifax following data breach
      2. Why, Twitter, Why?
      3. Microsoft tries to stem its self-made collaboration-tool confusion
    DOC
  end
end
