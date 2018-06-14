json.serie do
  json.extract! @serie, :id, :title, :launch_date, :about
  json.seasons @serie.seasons do |season|
    json.extract! season, :id, :season_number, :title
    json.episodes season.episodes do |episode|
      json.extract! episode, :id, :episode_number, :title
    end
  end
end