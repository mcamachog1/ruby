#How many hours are in a year
#How many minutes are in a decade?
#How to convert an age given in years seconds

def playing_with_numbers(hours_in_year=0, minutes_in_decade=0, age=10)
  age_in_seconds = 0
  hours_in_year = 24 * 365
  minutes_in_decade = hours_in_year * 10 * 60
  age_in_seconds = age * hours_in_year * 3600 

  return hours_in_year, minutes_in_decade, age_in_seconds 
end

array = playing_with_numbers(age = 10)
puts array

