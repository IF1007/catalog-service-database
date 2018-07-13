class Api::ProfilesController < Api::ApiController
  before_action :find_profile, only: [:index, :update]

  def show
    @later = Viewer.where(user_id: @user_id, status: 'watch_later')
    @finished = Viewer.where(user_id: @user_id, status: 'watched')
  end

  def update
    @profile.assign_attributes update_profile_params
    @profile.save!
    render :show, status: :ok
  end

  protected
  def find_profile
    @profile = Profile.find_by! user_id: @user_id
  end

  def update_profile_params
    params.require(:profile).permit(:birthday, :about, :name, :avatar_link)
  end
end
