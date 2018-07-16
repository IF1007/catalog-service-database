json.serie do
  json.extract! @serie, :id, :title, :launch_date, :about, :poster_link
  json.seasons_count @serie.seasons.count
  json.episodes_count @serie.episodes_count
  json.viewer_status @viewer.status if @viewer.present?
  json.seasons @serie.seasons do |season|
    json.extract! season, :id, :season_number, :title
    json.episodes season.episodes do |episode|
      json.extract! episode, :id, :episode_number, :title
    end
  end
end