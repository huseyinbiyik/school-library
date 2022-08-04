require_relative 'book'
require_relative 'student'
class App
  attr_reader :people

  def initialize
    @books = []
    @people = []
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
    when 3
      create_person
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

  def create_person
    puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    answer = gets.chomp.to_i
    if answer == 1
      puts 'Age:'
      age = gets.chomp.to_i
      puts 'Name:'
      name = gets.chomp.to_i
      puts 'Has parent permission? [Y/N]'
      permission = gets.chomp.upcase
      case permission
      when 'Y'
        permission = true
      when 'N'
        permission = false
      end
      student = Student.new(nil, age, name, parent_permission: permission)
      @people.push(student)
      puts 'A student created successfully'
    end
  end
end
