class Api::HistoricsController < Api::ApiController
  before_action :find_viewer, only: [:show]

  def show
  end

  protected
  def find_viewer
    @viewers = Viewer.where(profile: @profile).order(id: :desc).limit(3)
    @viewer_watching = Viewer.where(profile: @profile, status: 'watching')
  end
end
