class Owner
  attr_accessor
  attr_reader :species, :name
  
  @@all = []
  def initialize(species = "human", name)
    @species = species
    @name = name
    @@all << self
  end
  
  def species
    @species
  end
  
  def say_species
    return "I am a human."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats(owner)
    Cat.all.map do |own|
      @@all << own.owner
    end
    @@all
  end
end