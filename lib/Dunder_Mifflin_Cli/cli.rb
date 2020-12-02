class Cli
    def start
        puts "Welcome to Dunder Mifflin Paper Company!!"
        puts "loading..."
        Api.get_data
        main_menu_options
    end

    def main_menu_options
        puts "Type '1' to list quotes"
        puts "Type 'exit' to exit program"
        main_menu
    end

    def main_menu
        input = get_input

        if input == "1"
            list_quotes
           
            main_menu_options
        elsif input == "exit"
           puts "Toby, you are the thief of joy!"
           exit
        else
           invalid_selection
           main_menu_options
        end

    end

    def invalid_selection
        puts "Invalid Selection. Please Try Again!"
    end

    def get_input
        print "Enter Choice:"
        gets.chomp
    end

    def list_quotes
        Quote.all.each.with_index(1) do |quote, index|
            puts "#{index}. #{quote.content}"
        end
        
        quote_details_menu_options
    end

    def quote_details_menu_options
        puts "Select the number next to the Quote to view which character it belongs to"
        puts "or type 'exit' to exit the program"
        quote_details_menu

    end

    def quote_details_menu
          input = get_input

        if input.to_i.between?(1, Quote.all.length)
            #binding.pry
            index = input.to_i - 1
            quote = Quote.all[index]
            print_quote_details(quote)
            main_menu_options
             #select_again_or_exit
        elsif input == "exit"
           puts "Toby, you are the thief of joy!"
           exit
        else
           invalid_selection
           quote_details_menu_options
        end

    end
    def  print_quote_details(quote)
         puts "Quote:#{quote.content}"
         puts "Quote Author:#{quote.character}"
    end


end
