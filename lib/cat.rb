require 'pry'

class Cat
  
  attr_accessor :owner, :mood
  attr_reader :name 
  
  @@all = []
  
  def initialize(name, owner)
    binding.pry
    @name = name 
    @owner = owner
    owner.pets[:cats] << self
    @mood = "nervous"
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  
  
end