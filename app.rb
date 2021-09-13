require_relative "register"
require_relative "animal"
require_relative "router"
require_relative "view"
require_relative "controller"

register = Register.new

kitty = Animal.new("cat", "Kitty")
doggy = Animal.new("dog", "Max")

register.add(kitty)
register.add(doggy)


controller = Controller.new(register)
router = Router.new(controller)

router.run