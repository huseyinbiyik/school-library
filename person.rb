require_relative 'nameable'
require_relative 'decorator'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'
require_relative 'rental'
class Person < Nameable
  attr_accessor :age, :name
  attr_reader :id, :rentals

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
    super()
  end

  def add_rental(book, date)
    Rental.new(date, book, self)
  end

  def correct_name
    @name
  end

  def of_age?
    @age >= 18
  end
  private :of_age?

  def can_use_services?
    of_age? || parent_permission
  end
end
