class Animal
    attr_accessor :weight, :zoo
    attr_reader :species, :nickname

    @@all = []

    def initialize(nickname, weight, species, zoo = nil)
        @nickname = nickname
        @weight = weight
        @species = species
        @zoo = zoo
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species(type_of_species)
        self.all.select {|animal| animal.species == type_of_species}
    end

end
