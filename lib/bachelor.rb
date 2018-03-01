require 'pry'
require 'json'
#require_relative'../spec/fixtures/contestants.json'
data = JSON.parse(File.read(File.expand_path("../../spec/fixtures/contestants.json", __FILE__)))

def get_first_name_of_season_winner(data, season)
  # code here
  to_return = ""
  data.each do |season_no, arr|
    if season_no.to_s == season
      arr.each do |innerhash|
        #binding.pry
        if innerhash["status"] == "Winner"
          to_return = innerhash["name"].split.first
        end #end if
      end#end each
    end#end if
  end#end each
  to_return
end

puts get_first_name_of_season_winner(data, "season 19")

def get_contestant_name(data, occupation)
  # code here
  to_return = ""
  data.each do |season_no, arr|
    arr.each do |innerhash|
      #binding.pry
      if innerhash["occupation"] == occupation
        to_return = innerhash["name"]
      end #end if
    end#end each
  end#end each
  to_return
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
