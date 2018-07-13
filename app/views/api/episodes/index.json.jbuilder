json.episodes @episodes do |episode|
  json.extract! episode, :id, :title, :episode_number
  json.serie do
    json.extract! episode.season.serie, :id, :title, :about, :launch_date, :poster_link
  end
  json.season do
    json.extract! episode.season, :title
  end
end