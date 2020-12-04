# your standard OO ruby class

class Breweries
    attr_accessor :name, :city, :state, :website_url

    @@all = [] 

    def initialize(name, city, state, website_url) 
        @name = name 
        @city = city 
        @state = state 
        @website_url = website_url 

        @@all << self 
    end

    def self.all
        @@all 
    end

end
