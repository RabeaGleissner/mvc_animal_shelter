class Register
  def initialize
    @animal_list = []
  end

  def add(animal)
    @animal_list << animal
  end

  def adopt(animal_index)
    @animal_list.delete_at(animal_index)
  end

  def all
    @animal_list
  end
end