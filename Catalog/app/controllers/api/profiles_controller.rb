class Api::ProfilesController < Api::ApiController
  before_action :find_profile, only: [:show, :update]

  def create
    @profile = Profile.create!(profile_params)
    render :show, status: :created
  end

  def show
  end

  def update
    @profile.assign_attributes update_profile_params
    @profile.save!
    render :show, status: :ok
  end

  protected
  def find_profile
    @profile = Profile.find_by! user_id: params[:user_id], id: params[:id]
  end

  def profile_params
    params.require(:profile).permit(:user_id, :birthday, :about)
  end

  def update_profile_params
    params.require(:profile).permit(:birthday, :about)
  end
end
