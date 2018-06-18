class Api::ViewersController < Api::ApiController
  before_action :find_serie, only: [:create]

  def create
    @viewer = Viewer.create!(viewer_params)
    render :show, status: :created
  end

  protected
  def find_serie
    Serie.find_by! id: params[:serie_id]
  end

  def viewer_params
    params.require(:viewer).permit(:status, :serie_id).merge(user_id: @user_id)
  end
end
