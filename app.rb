require_relative 'book'
class App
  def initialize
    @books = []
  end

  def menu
    puts 'Please choose an option by entering a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
  end

  def option_checker(answer)
    case answer
    when 1
      list_books
    else
      puts 'Wrong option'
    end
  end

  def run
    menu
    answer = gets.chomp.to_i
    option_checker(answer)
  end

  def list_books
    puts 'Listing all the books in the library:'
    @books.each do |book|
      puts "#{book.title} by #{book.author}"
    end
  end
end
