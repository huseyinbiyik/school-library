class Person
  def initialize (name = "Unknown", age, parent_permission = true)
    @id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_reader :id
  attr_reader :name
  attr_reader :age

  attr_writer :name
  attr_writer :age
end
