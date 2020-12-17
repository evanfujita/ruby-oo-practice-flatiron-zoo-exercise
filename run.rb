require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


brookfield = Zoo.new("Brookfield", "Chicago")
lp = Zoo.new("Lincoln Park", "Chicago")
brooklyn = Zoo.new("Brooklyn", "New York")

lp.new_animal("Cat", 7, "Winston")
lp.new_animal("Cat", 8, "Mouse")
lp.new_animal("Cat", 2, "Eliot")
lp.new_animal("Dog", 12, "Scout")
lp.new_animal("Dog", 11, "Maxwell")
lp.new_animal("Dog", 4, "Sonny")
brookfield.new_animal("Rat", 7, "Ratatat")
brookfield.new_animal("Rat", 8, "Apple")
brookfield.new_animal("Rat", 2, "John")
brookfield.new_animal("Giraffe", 12, "Mark")
brookfield.new_animal("Hippo", 11, "Alf")
brookfield.new_animal("Bat", 4, "Elf")


binding.pry
puts "done"
