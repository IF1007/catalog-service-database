json.profile do
	json.extract! @profile, :about, :birthday, :name, :email, :avatar_link
  json.later @later do |viewer|
    json.extract! viewer, :id, :status
    json.serie do
      json.extract! viewer.serie, :id, :title, :about, :launch_date, :poster_link
    end
	end
	json.finished @finished do |viewer|
    json.extract! viewer, :id, :status
    json.serie do
      json.extract! viewer.serie, :id, :title, :about, :launch_date, :poster_link
    end
  end
end