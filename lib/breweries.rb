# your standard OO ruby class

class Breweries # class
    attr_accessor :name, :city, :state, :website_url # attributes

    @@all = [] # empty class array

    def initialize(name, city, state, website_url) # call .new to see them
        @name = name # variable
        @city = city # variable
        @state = state # variable
        @website_url = website_url # variable

        @@all << self # class method - saves all breweries
    end

    def self.all
        @@all # access the class variables (no use outside of this class)
    end

end
