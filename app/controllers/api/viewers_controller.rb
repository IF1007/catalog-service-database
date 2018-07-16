class Api::ViewersController < Api::ApiController
  before_action :find_serie, only: [:create]

  def create
    @viewer = Viewer.find_or_create_by(viewer_params)
    @viewer.update(viewer_params)
    render :show, status: :created
  end

  protected
  def find_serie
    Serie.find_by! id: params[:serie_id]
  end

  def viewer_params
    params.require(:viewer).permit(:status, :serie_id).merge(profile_id: @profile.id)
  end
end
