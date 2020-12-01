class Quote

    @@all = []
    
    attr_accessor :content, :character 

    def initialize(data)
        @content = content
        @character = character
        @@all << self
    end

    def self.all
        @@all
    end

end