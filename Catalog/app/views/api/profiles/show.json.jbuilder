json.profile do
	json.extract! @profile, :id, :about, :birthday
  json.later @later do |viewer|
    json.extract! viewer, :id, :status
    json.serie do
      json.extract! viewer.serie, :id, :title, :about, :launch_date
    end
	end
	json.finished @finished do |viewer|
    json.extract! viewer, :id, :status
    json.serie do
      json.extract! viewer.serie, :id, :title, :about, :launch_date
    end
  end
end