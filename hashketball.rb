# Write your code here!

def game_hash()
  #top level of hash has two keys
  game_hash = { :home => {}, :away => {} }

  #the values of the :home & :away are hashes and has three keys:
    #   :team_name key points to a string of the team team_name;
    #   :colors key points to an array of strings;
    #   :players key points to an array of hashes
  tn = {:team_name => ""}
  col = {:colors => []}
  pla = {:players => []}
  game_hash.each do | key, value |
    game_hash[key] = tn.merge(col, pla)
  end
  
# :team_name key points to a string of the team team_name
game_hash.each do |key, value|
    value.each do |key2, value2|
      if value2.is_a?(String)
        if key == :home
          game_hash[key][key2] = "Brooklyn Nets"
        else
          game_hash[key][key2] = "Charlotte Hornets"
        end
      end  
    end
end

# :colors key points to an array of strings that are the team colors
game_hash.each do |key, value|
  if (key == :home)
    game_hash[:home][:colors] = ["Black", "White"]
    elsif (key == :away)
      game_hash[:away][:colors] = ["Turquoise", "Purple"]
    else
    end
end

# :players key points to AOH and each hash should contain the players' stats
 # stat_desc = ["player_name", "number", "shoe", "points", "rebounds", "assists", "steals", "blocks", "slam_dunks"]
  stat_desc = [:player_name, "", :number, 0, :shoe, 0, :points, 0, :rebounds, 0, :assists, 0, :steals, 0, :blocks, 0, :slam_dunks, 0]
  stat_desc1 = [:player_name, "Alan Anderson", :number, 0, :shoe, 16, :points, 22, :rebounds, 12, :assists, 12, :steals, 3, :blocks, 1, :slam_dunks, 1]
game_hash.each do |key, value|
  value.each do |key2, value2|
    puts key2
    if key2 == :players
      game_hash[key][key2] = Hash[*stat_desc1]
      game_hash[key][key2] = Hash[*stat_desc1]
    else
    end
  end 
end
  
binding.pry  
game_hash  
end  