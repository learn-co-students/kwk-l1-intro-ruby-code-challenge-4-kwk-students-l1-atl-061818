def least_coins(cents)
coin_types = {
:quarters => 0,
:dimes => 0,
:nickels => 0,
:pennies => 0
}


#try to use up all the possible quarters
# a quarter is worth 25 cents
#if there is more than 25 cents, use a quarter
# else, go to the next one 

number_quarters = cents/25
coin_types[:quarters] = number_quarters
cents = cents - number_quarters*25

#we need to account for the fact that we've already used quarters

number_dimes = cents/10 
coin_types[:dimes] = number_dimes
cents = cents - number_dimes*10 

number_nickels = cents/5  
coin_types[:nickels] = number_nickels
cents = cents - number_nickels*5 

number_pennies = cents/1 
coin_types[:pennies] = number_pennies
cents = cents - number_pennies*1



puts coin_types

end

least_coins(67)