class Cli
    # interect with the user
    # any puts or get statements
    # controls the flow of program

    def start
        puts "Welcome"
        Api.start
        self.breweries
    end
    def breweries
        puts "Would you like to see a list of breweries?"
        puts "Type 'yes' to continue or any other key to exit."
        user_input = gets.strip
        if user_input == "yes" || user_input == "y"
            puts "Great choice!"
            display_list_of_breweries
            puts "Which brewery would you like more information about?"
            ask_user_for_brewery_choice
            sleep(1)
            breweries
        else
            # end the program
            puts "Goodbye!"
        end
    end
    def display_list_of_breweries
        # access all the breweries
        # print them out
        Breweries.all.each.with_index(1) do |breweries, index|
            puts "#{index}. #{breweries.name}"
        end
    end
    def ask_user_for_brewery_choice
        # ask for their brewery choice
        input = gets.strip.to_i
        index = input - 1
        # validate their input
        max_limit = Breweries.all.length - 1
        until index.between?(0,max_limit)
            puts "Sorry that is not a valid choice."
            index = gets.strip.to_i - 1
        end
        # found their brewery
        breweries_instance = Breweries.all[index]
        puts breweries_instance.name
        puts "Would like to see more information about this brewery?"
        puts "Type 'yes' to continue or any other key to exit."
            user_input = gets.strip
            if user_input == "yes" || user_input == "y"
            puts "Here is the information about the brewery."
            display_brewery_details(breweries_instance)
            else 
              # end the program
              puts "Goodbye!"
            end
    end
    def display_brewery_details(breweries)
        puts "name: #{breweries.name}"
        puts "city: #{breweries.city}"
        puts "state: #{breweries.state}"
        puts "website_url: #{breweries.website_url}"
    end
end
