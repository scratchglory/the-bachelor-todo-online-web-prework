require 'pry'

# Return the first name of the season's Winner
#   key = 
# {"name"=>"Tessa Horst",
#  "age"=>"26",
#  "hometown"=>"San Francisco, CA",
#  "occupation"=>"Social Worker",
#  "status"=>"Winner"}

def get_first_name_of_season_winner(data, season)
  data[season].each do |season_hash|   
  # binding.pry
   if season_hash["status"] == "Winner"
     return season_hash["name"].split(" ")[0]
    end
  end
  # binding.pry
end


# returns the name of the woman who has that occupation
def get_contestant_name(data, occupation)
  data.each do |season_hash, info|
    info.each do |detail|
      if detail["occupation"] == occupation
        return detail["name"]
      end
    end
  end
# binding.pry
end


# Return a counter of the number of contestants who are from that hometown
def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season_hash, info|
    info.each do |detail|
      if detail["hometown"] == hometown
        binding.pry
        counter += 1 
      end
    end
  end
  return counter
end


#
def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
