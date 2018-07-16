class Api::ProfilesController < Api::ApiController
  def show
    @later = Viewer.where(profile: @profile, status: 'watch_later').decorate
    @finished = Viewer.where(profile: @profile, status: 'watched').decorate
  end

  def update
    @profile.assign_attributes update_profile_params
    @profile.save!
    render :show, status: :ok
  end

  protected
  def update_profile_params
    params.require(:profile).permit(:birthday, :about, :name, :avatar_link)
  end
end
