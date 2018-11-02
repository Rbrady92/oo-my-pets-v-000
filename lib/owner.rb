class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
    #@name = name
  end

  def say_species
    @species
  end

  def reset_all
    @@all = []
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:dogs] << dog
  end

  def feed_fish
    loop through fish and change each mood to happy
  end 

  def walk_dogs

  end 

  def play_with_cats

  end 

  def sell_pets
    #loop through each pet arr and change moods to nervous
    #then empty each arr (i think the pet objects will still exist, just not in the hash)
  end   

  def list_pets
    puts "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

  private

  attr_writer :species

end
