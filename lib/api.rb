# set up like a class
# responsible for talking with our API

class API

    def self.start
        url = "https://api.openbrewerydb.org/breweries"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        array_of_breweries = JSON.parse(response)
        array_of_breweries.each do |breweries|
            Breweries.new(breweries["name"], breweries["city"], breweries["state"], breweries["website_url"])
        end
    end
end