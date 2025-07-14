require "net/http"
require "json"

game_url = URI("https://zelda.fanapis.com/api/games?limit=32")
raw = Net::HTTP.get(game_url)
data = JSON.parse(raw)


data["data"].each do |game|
  Game.find_or_create_by(game_id: game["id"]) do |g|
    g.name = game["name"]
    g.description = game["description"]
    g.developer = game["developer"]
    g.publisher = game["publisher"]
    g.released_date = game["released_date"]
  end
end

character_url = URI("https://zelda.fanapis.com/api/characters?limit=50")
raw = Net::HTTP.get(character_url)
data = JSON.parse(raw)

# data["data"].each do |character|
# next if Character.exists?(character_id: character["id"])
#   Character.create!(
#     character_id: character["id"],
#     game_id: character["apperances"],
#     name: character["name"],
#     description: character["description"],
#     gender: character["gender"],
#     race: character["race"],
#     # place: character["appearances"].to_s
#   )
# end

character_url = URI("https://zelda.fanapis.com/api/placeslimit=50")
raw = Net::HTTP.get(character_url)
data = JSON.parse(raw)

data["data"].each do |place|
next if Place.exists?(place_id: place["id"])
  Place.create!(
    place_id: character["id"],
    game_id: character["name"],
    name: character["name"],
    description: character["description"],
  )
end
