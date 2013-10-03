holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :forth_of_july => ["Fireworks", "BBQ", "Beer"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

# 1. How would you access the second supply for the forth_of_july?
#    ex: holiday_supplies[:spring][:memorial_day][0]

     holiday_supplies[:summer][:fourth_of_july][1]

# 2. Add a supply to a Winter holiday.

     holiday_supplies[:winter][:new_years] << "Booze"

# 3. Add a supply to memorial day.

     holiday_supplies[:spring][:memorial_day] << "Water Balloons"

# 4. Add a new holiday to any season with supplies.

     holiday_supplies[season][holiday] = ["Supply"]

# 5. Write a method to collect all Winter supplies from all the winter holidays.
#    ex: winter_suppliers(holiday_supplies) #=> ["Lights", "Wreath", etc]

     def winter_supplies(holiday_supplies)
       holiday_supplies[:winter].map do |holidays, supplies|
         supplies
       end.flatten
     end

# 6. Write a loop to list out all the supplies you have for each holiday
#    and the season.

#    Output:

#       Winter:
#         Christmas: Lights and Wreath
#         New Years: Party Hats

     def list_supplies(holiday_supplies)
       holiday_supplies.each do |season, holidays|
         puts season.to_s.capitalize + ":"
         holidays.each do |holiday, supplies|
           holiday = holiday.to_s.split('_')
           holiday = holiday.map { |word| word == "of" ? word : word.capitalize }
           if supplies.count >= 3
             supplies_sentence = supplies[0..-2].join(', ') + ', and ' + supplies[-1]
           else
             supplies_sentence = supplies.join(' and ')
           end
           puts "  #{holiday.join(' ')}: #{supplies_sentence}"
         end
       end
     end

# 7. Write a method to collect all holidays with BBQ.
#    ex: holidays_with_bbqs(holiday_supplies) #=> [:fourth_of_july, :memorial_day]

     def holidays_with_bbq(holiday_supplies)
       matching_holidays = []
       holiday_supplies.each do |season, holiday_hash|
         holiday_hash.each do |holiday, supply_array|
           matching_holidays << holiday if supply_array.include?("BBQ")
         end
       end
       matching_holidays
     end

