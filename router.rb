class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      display_options
      action = gets.chomp
      dispatch(action)
    end
  end

  private

  def display_options
    puts "*********************"
    puts "What would you like to do?"
    puts "1 - Show all animals"
    puts "2 - Hand in a rescued an animal"
    puts "3 - Adopt an animal"
    puts "*********************"
  end

  def dispatch(action)
    case action
    when "1" then @controller.show
    when "2" then @controller.rescue
    when "3" then @controller.adopt
    else
      puts "\nPlease choose a valid option!"
    end
  end
end
