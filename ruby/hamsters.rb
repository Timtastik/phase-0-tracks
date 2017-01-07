# Method to print an s if variable is more than 1
def plural(x)
    if x > 1
        print "s"
    end
end

def hamster_form
# Ask user for name of hamster
    puts "What's your hamster's name?"
# Input value as string
    hamster_name = gets.chomp

# Ask user for how loud is hamster
    puts "How loud is your hamster, on a scale from 1 to 10 (with 10 being the highest)?"
# Initialize variable to help with loop input
    hamster_vol = 100
# Keeps asking user for input until meets the asked conditions
    until hamster_vol > 0 && hamster_vol < 11
        hamster_vol = gets.chomp.to_i
        # If Input is correct first time then proceed or if incorrect show invalid input
        if hamster_vol < 0 || hamster_vol > 11
            puts "Sorry Invalid Input. Try Again."      
        else          
        end
    end

# Ask user for color of hamster
    puts "What color is your hamster?"
# Input value as string
    hamster_color = gets.chomp

# Ask user for candidation good or bad
    puts "Is this hamster a good candidate for adoption? Y or N"
# Input value as string
    hamster_adoption = gets.chomp

# Asks user for age of hamster
    puts "How old is your hamster? Years -> Months"
    print "  How Many Years: "
    hamster_age_years = gets.chomp.to_i
    print "  How Many Months: "
    hamster_age_months = gets.chomp.to_i

# Relay back information to user
    # Shows blank line before Relaying input back to user
    puts " "
    # Displays Hamster Name as inputted
    puts "Hamster Name: #{hamster_name}"

    # Displays Hamster Loudness From Scale 1-10 highest
    puts "Hamster Volume: #{hamster_vol}"

    # Displays the user input for the color of hamster
    puts "Hamster Color: #{hamster_color}"

    # Uses boolean to see if candidate is good or bad by user input... or tells user invalid input
        if hamster_adoption == 'Y' || hamster_adoption == 'y' || hamster_adoption == 'yes' || hamster_adoption == 'Yes'
            puts "Hamster Candidate: Good"
        elsif hamster_adoption == 'N' || hamster_adoption == 'n' || hamster_adoption == 'no' || hamster_adoption == 'No'
            puts "Hamster Candidate: Bad"
        else
            puts "Sorry, Invalid Input for Candidation"
        end

    # Checks to see if age is valid
        if (hamster_age_years  >= 2 && hamster_age_months >= 6) || (hamster_age_years > 3)
            puts " Are you sure it is a hamster or are you lying?"
            print "Hamster Age: #{hamster_age_years} Year" 
            plural(hamster_age_years) 
            print " and #{hamster_age_months} Month" 
            plural(hamster_age_months)
            puts " "
            puts " ITS SO OLD!?!?!"        
        else
            print "Hamster Age: #{hamster_age_years} Year"
            plural(hamster_age_years)
            print " and #{hamster_age_months} Month"
            plural(hamster_age_months)
        end
end # End of hamster_form method

# Calls the method
hamster_form

# Couldve told user invalid input as soon as the user inputs it by using loops
# Come back to do this later for fun!
# SIDE NOTE TO SELF
