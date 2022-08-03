require 'decorator'

class CapitalizeDecorator < Decorator
  def correct_name
    Decorator.nameable.upcase
  end
end
