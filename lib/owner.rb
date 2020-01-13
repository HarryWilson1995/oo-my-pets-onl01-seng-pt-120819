class Owner
  
  attr_reader :name, :species 
  attr_accessor :pets, :dogs, :cats 
 
  @@all = []
  
 def initialize(name)
   @name = name 
   @@all << self 
 end 

 def species
   @species = "human" 
 end 
 
 def say_species 
   p "I am a human."
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
 
 def cats 
   Cat.all.select {|cat| cat.owner == self}
 end 
 
 def dogs 
   Dog.all.select{|dog| dog.owner == self}
 end 
 
 def buy_cat(name) 
   Cat.new(name, self)
 end 
 
 def buy_dog(name) 
   Dog.new(name, self) 
 end 
 
 def walk_dogs
   self.dogs.each  {|dog| dog.mood = "happy"}
 end 
  
 def feed_cats 
   self.cats.each {|cat| cat.mood = "happy"}
 end 
 
 def sell_pets 
   self.cats.each {|cat| cat.mood = "nervous"}
   self.dogs.each {|dog| dog.mood = "nervous"}
   self.cats.each {|cat| cat.owner = nil}
   self.dogs.each {|dog| dog.owner = nil} 
 end 
 
 def list_pets 
   p "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
 end 
 
 
end