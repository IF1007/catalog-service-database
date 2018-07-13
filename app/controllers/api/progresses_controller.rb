class Api::ProgressesController < Api::ApiController
  before_action :find_episode, only: [:create]

  def create
    @progress = Progress.create!(progress_params)
    head :no_content, status: :created
  end

  protected

  def find_episode
    @episode = Episode.find_by! id: params[:episode_id]
    serie = @episode.season.serie
    @viewer = @profile.viewers.where(serie: serie).first
  end

  def progress_params
    params.require(:progress).permit(:episode_id).merge(viewer_id: @viewer.id)
  end
end
