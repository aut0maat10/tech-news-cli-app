# Specifications for the CLI Assessment

Specs:
- [x] Have a CLI for interfacing with the application
        Set up CLI in lib/tech_news/cli.rb. TechNews::CLI.list_articles lists the articles, the #menu method asks for and handles user input, and the #goodbye method outputs a goodbye message when the user exits the program. These methods are encapsulated in the #call method, which in its turn is called by the executable file bin/tech-news to run the program.
- [x] Pull data from an external source
        Scraped Google News Technology section with Nokogiri for tech-related articles, selecting individual articles' title and URL.
- [x] Implement both list and detail views
        The CLI lists 20 articles by title from Google News, and then asks the user to select the number of the article they would like to read. Upon the user's selection, the CLI returns the selected article's title and URL.
