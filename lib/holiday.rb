require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |seasons, items|
  if seasons == :winter
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
  end
 end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |seasons, items|
  if seasons == :spring
  holiday_hash[:spring][:memorial_day] << supply
  end
 end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |seasons, items|
  if seasons == season
  holiday_hash[season][holiday_name] = supply_array
  end
  end
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  all_winter_supplies = []
  holiday_hash.each do |seasons, items|
     if seasons == :winter
       holiday_hash[:winter][:valentines_day] = ["Cupid Cut-Out", "Candy Hearts"]
       items.each do |holidays, supplies|
         all_winter_supplies << supplies
      end
    end
 end
    all_winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |seasons, holidays|
   puts "#{seasons.to_s.capitalize}:"
# here i changed each of the key.values to strings and capitalized them
    holidays.each do |holiday, items|
      split_holiday = holiday.to_s.split("_")
      element_list = []
      split_holiday.each do |element|
        element_list << element.capitalize
      end
      puts "  #{element_list.join(" ")}: #{items.join(", ")}"
   end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  supply_train = []
  holiday_hash.each do |seasons, holidays|
    holidays.each do |holiday, supplies|
      if supplies.include?("BBQ")
        supply_train << holiday
      end
    end
   end
  supply_train
end
