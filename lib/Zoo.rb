class Zoo
    attr_reader :name, :location, :species

    @@all = []

    def initialize(location, name)
        @location = location
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def animals
        Animal.all.select {|animal| animal.zoo == self}
    end
    
    def animal_species
        species = []
        self.animals.map {|animal| species << animal.species}
        species.uniq
    end

    def find_by_species(type_of_species)
        self.animals.select {|animal| anyimal.species == type_of_species}
    end

    def animal_nicknames
        self.animals.map {|animal| animal.nickname}
    end

    def self.find_by_location(location_name)
        self.animals.map {|zoo| zoo.location}
    end
end
