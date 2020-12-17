class Zoo

    attr_reader :name, :location
    attr_accessor :zoo

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        self.class.all << self
        @animals = []
    end

    def self.all
        @@all
    end

    def my_zoo
        self.class.all.select {|zoo| zoo.name == self.name}
    end

    def animals
        @animals
    end

    def new_animal(species, weight, nickname)
        animal = Animal.new(species, weight, nickname)
        animal.zoo = self
        self.animals << animal
    end

    def animal_species
        animals.map {|animal| animal.species}.uniq
    end

    def find_by_species(find_species)
        animals.select {|animal| animal.species == find_species}
    end

    def animal_nicknames
        animals.map {|animal| animal.nickname}
    end

    def self.find_by_location(city)
        self.all.select {|zoo| zoo.location == city}
    end
    

end
