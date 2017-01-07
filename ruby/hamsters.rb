def hamster_form
# Ask user for name of hamster
    puts "What's your hamster's name?"
# Input value as string
    hamster_name = gets.chomp

# Ask user for how loud is hamster
    puts "How loud is your hamster, on a scale from 1 to 10 (with 10 being the highest)?"
# Input value as integer
    hamster_vol = gets.chomp.to_i

# Ask user for color of hamster
    puts "What color is your hamster?"
# Input value as string
    hamster_color = gets.chomp

# Ask user for candidation good or bad
    puts "Is this hamster a good candidate for adoption? Y or N"
# Input value as string
    hamster_adoption = gets.chomp

# Asks user for age of hamster
    puts "How old is your hamster?"
# Input value as integer
    hamster_age = gets.chomp.to_i

# Relay back information to user
    # Shows blank line before Relaying input back to user
    puts " "
    # Displays Hamster Name as inputted
    puts "Hamster name: #{hamster_name}"

    # Checks to see if volume input number is valid
        if hamster_vol > 0 && hamster_vol < 11
            puts "Hamster volume: #{hamster_vol}"
        else
            puts "Sorry, Invalid Input of number for loudness of hamster"
        end

    puts "Hamster color: #{hamster_color}"

    # Uses boolean to see if candidate is good or bad by user input... or tells user invalid input
        if hamster_adoption == 'Y' || hamster_adoption == 'y' || hamster_adoption == 'yes' || hamster_adoption == 'Yes'
            puts "Hamster candidate: Good"
        elsif hamster_adoption == 'N' || hamster_adoption == 'n' || hamster_adoption == 'no' || hamster_adoption == 'No'
            puts "Hamster candidate: Bad"
        else
            puts "Sorry, Invalid Input for candidation if good or bad"
        end

    # Checks to see if age is valid
        if hamster_age > 0
            puts "Hamster age: #{hamster_age}"         
        else
            puts "Sorry, Invalid Input for age"
        end
end # End of hamster_form method

# Calls the method
hamster_form