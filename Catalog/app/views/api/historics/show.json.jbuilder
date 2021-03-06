json.historic do
  json.recent @viewers do |viewer|
    json.extract! viewer, :id, :status
    json.serie do
      json.extract! viewer.serie, :id, :title, :about, :launch_date
    end
  end
  json.watching @viewer_watching do |viewer|
    json.extract! viewer, :id, :status
    json.serie do
      json.extract! viewer.serie, :id, :title, :about, :launch_date
    end
  end
end

