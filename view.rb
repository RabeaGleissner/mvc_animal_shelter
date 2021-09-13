class View
  def list_all_animals(animals)
    animals.each_with_index do |animal, index|
      puts "#{index}: #{animal.name} (#{animal.type})"
    end
  end

  def ask_for_animal_id
    puts "Please enter the animal id"
    return gets.chomp
  end

  def ask_for_animal_type
    puts "What type of animal would you like to rescue?"
    return gets.chomp
  end

  def ask_for_name
    puts "What is the animal's name?"
    return gets.chomp
  end

  def ask_for_animal_index
    puts 'Which animal would you like to adopt? Key in the index number.'
    return gets.chomp.to_i
  end

  def adopted_animal(animal)
    puts "Thank you! Please take care of #{animal}!"
  end
end
