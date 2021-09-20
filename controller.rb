class Controller
  def initialize(register)
    @register = register
    @view = View.new
  end

  def show
    all_animals = @register.all
    @view.list_all_animals(all_animals)
  end

  def rescue
    name = @view.ask_for_name
    type = @view.ask_for_animal_type
    animal = Animal.new(type, name)
    @register.add(animal)
  end

  def adopt
    @view.list_all_animals(@register.all)
    index = @view.ask_for_animal_index
    adopted_animal = @register.adopt(index)
    @view.adoption_thank_you_message(adopted_animal.name)
  end
end
