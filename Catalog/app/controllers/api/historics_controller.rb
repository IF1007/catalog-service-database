class Api::HistoricsController < Api::ApiController
  before_action :find_viewer, only: [:show]

  def show
  end

  protected
  def find_viewer
    @viewers = Viewer.where(user_id: @user_id).limit(3)
    @viewer_watching = Viewer.where(user_id: @user_id, status: 'watching')
  end
end
