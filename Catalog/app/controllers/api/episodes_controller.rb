class Api::EpisodesController < Api::ApiController
  def index
    @episodes = Episode.all
  end
end
