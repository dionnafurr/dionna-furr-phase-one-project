# your standard OO ruby class

class Breweries # class
    attr_accessor :name, :city, :state, :website_url # attributes

    @@all = [] # empty class array # intializng each instance of a selected brewery

    def initialize(name, city, state, website_url) # call .new to see them # each instance of a selected brewery
        @name = name # variable
        @city = city # variable
        @state = state # variable
        @website_url = website_url # variable

        @@all << self # class method - saves all breweries
    end

    def self.all
        @@all # access the class variables anywhere in program (no use outside of this class)
    end

end
