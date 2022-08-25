# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here
home_players = game_hash[:home][:players]
away_players = game_hash[:away][:players]

$all_players = home_players.concat(away_players)


def num_points_scored player
  player_info = $all_players.find do |players|
    players[:player_name] == player
  end
  player_info[:points]
end

def shoe_size player
  player_info = $all_players.find do |players|
    players[:player_name] == player
  end
  player_info[:shoe]
end

def team_colors team
  if team == "Brooklyn Nets"
    game_hash[:home][:colors]
  else
    game_hash[:away][:colors]
  end
end

def team_colors team
  if team == "Brooklyn Nets"
    game_hash[:home][:colors]
  else
    game_hash[:away][:colors]
  end
end

def team_names
  teams = [game_hash[:home][:team_name], game_hash[:away][:team_name]]  
  teams
end

def player_numbers team
  team_numbers = []
  if team == "Brooklyn Nets"
    game_hash[:home][:players].each do |players|
      team_numbers << players[:number]
    end
  else 
    game_hash[:away][:players].each do |players|
      team_numbers << players[:number]
    end
  end 
  team_numbers
end

def player_stats player
  player_info = $all_players.find do |players|
    players[:player_name] == player
  end
  player_info
end

def big_shoe_rebounds
  biggest_shoe = $all_players.sort do |player1, player2|
    player2[:shoe] <=> player1[:shoe]
  end
  biggest_shoe[0][:rebounds]
end

def most_points_scored 
  most_points = $all_players.sort do |player1, player2|
    player2[:points] <=> player1[:points]
  end
  most_points[0][:player_name]
end

def winning_team 
  home_points = 0
  away_points = 0

  game_hash[:home][:players].each do |players|
    home_points = home_points + players[:points]    
  end

  game_hash[:away][:players].each do |players|
    away_points = away_points + players[:points] 
  end

  if home_points > away_points
    return game_hash[:home][:team_name]
  else 
    return game_hash[:away][:team_name]
  end
end

def player_with_longest_name 
  longest_name = $all_players.sort do |player1, player2|
    player2[:player_name].length <=> player1[:player_name].length
  end
  longest_name[0][:player_name]
end

