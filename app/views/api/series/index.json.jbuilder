json.series @series do |serie|
  json.extract! serie, :id, :title, :launch_date, :about
  json.number_of_seasons serie.seasons.count
end