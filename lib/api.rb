# set up like a class
# responsible for talking with our API

class API

    def self.start
        url = "https://api.openbrewerydb.org/breweries"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        array_of_breweries = JSON.parse(response)
        array_of_breweries.each do |breweries|
            name = breweries["name"]
            # name, city, state, website url
            binding.pry
        end
    end
end