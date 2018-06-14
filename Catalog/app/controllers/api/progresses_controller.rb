class Api::ProgressesController < Api::ApiController
  before_action :find_episode, only: [:create]

  def create
    @progress = Progress.create!(progress_params)
    head :no_content, status: :created
  end

  protected

  def find_episode
    Episode.find_by! id: params[:episode_id]
    Viewer.find_by! id: params[:viewer_id]
  end

  def progress_params
    params.require(:progress).permit(:viewer_id, :episode_id)
  end
end
