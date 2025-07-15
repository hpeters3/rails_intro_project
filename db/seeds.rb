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

get_link("characters").each do |c|
  character = Character.find_or_initialize_by(character_uuid: c["id"])
  character.name = c["name"]
  character.description = c["description"]
  character.gender = c["gender"]
  character.race = c["race"]
  if c["appearances"].present?
    game_uuid = c["appearances"].first[%r{[a-z0-9]*\z}]
    character.game_uuid = game_uuid
  end

  character.save!

  c["appearances"].each do |appearance_url|
    game_uuid = appearance_url[%r{[a-z0-9]*\z}]
    game = Game.find_by(game_uuid: game_uuid)
    if game
      unless character.games.exists?(game_uuid)
        character.games << game
      end
    end
  end
end

get_link("monsters").each do |c|
  monster = Monster.find_or_initialize_by(monster_uuid: c["id"])
  monster.name = c["name"]
  monster.description = c["description"]
  if c["appearances"].present?
    game_uuid = c["appearances"].first[%r{[a-z0-9]*\z}]
    monster.game_uuid = game_uuid
  end

  monster.save!

  c["appearances"].each do |appearance_url|
    game_uuid = appearance_url[%r{[a-z0-9]*\z}]
    game = Game.find_by(game_uuid: game_uuid)
    if game
      unless monster.games.exists?(game_uuid)
        monster.games << game
      end
    end
  end
end

get_link("places").each do |p|
  place = Place.find_or_initialize_by(place_uuid: p["id"])
    place.name = p["name"]
    place.description = p["description"]

    if p["appearances"].present?
      game_uuid = p["appearances"].first[%r{[a-z0-9]*\z}]
      place.game_uuid = game_uuid
    end

  place.save!

  p["appearances"].each do |appearance_url|
    game_uuid = appearance_url[%r{[a-z0-9]*\z}]
    game = Game.find_by(game_uuid: game_uuid)
    if game
      unless place.games.exists?(game_uuid)
        place.games << game
      end
    end
  end
end
