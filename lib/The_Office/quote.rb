class Quote
    
  attr_accessor :content, :character
    
    @@all = []

  def initialize(content, character)
    @content = content
    @character = character
    @@all << self
  end

  def self.all
    @@all
  end
  
end
