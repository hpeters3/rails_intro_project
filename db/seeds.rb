require "net/http"
require "json"

def get_link(endpoint)
  url = URI("https://zelda.fanapis.com/api/#{endpoint}?limit=50")
  raw = Net::HTTP.get(url)
  JSON.parse(raw)["data"]
end


get_link("games").each do |g|
  game = Game.find_or_initialize_by(game_uuid: g["id"])
    game.name = g["name"]
    game.description = g["description"]
    game.developer = g["developer"]
    game.publisher = g["publisher"]
    game.released_date = g["released_date"]
    game.save!
end

# data["data"].each do |character|
# next if Character.exists?(character_uuid: character["id"])
#  Character.create!(
#    character_uuid: character["id"],
#    game_id: character["apperances"],
#    name: character["name"],
#    description: character["description"],
#    gender: character["gender"],
#    race: character["race"],
#  )
# end
#
# url = URI("https://zelda.fanapis.com/api/placeslimit=50")
# raw = Net::HTTP.get(url)
# data = JSON.parse(raw)
#
# data["data"].each do |place|
# next if Place.exists?(place_uuid: place["id"])
#  Place.create!(
#    place_id: place["id"],
#    name: place["name"],
#    description: place["description"]
#  )
# end
