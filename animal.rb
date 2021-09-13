require 'date'

class Animal
  attr_reader :type, :name

  def initialize(type, name)
      @type = type
      @name = name
      @rescue_date = DateTime.new
  end

  def days_in_shelter
    #Date.now - @rescue_date
  end
end