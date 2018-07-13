require 'jwt'
class Public::AuthenticatesController < Public::ApiController
  before_action :find_profile, only: [:create]

  def create
    payload = {:id => @profile.id }
    @token = JWT.encode payload, ENV['TOKEN_KEY'], 'HS256'
    render json: { token: @token }, status: :ok
  end

  protected

  def find_profile
    @profile = Profile.where(email: profile_params[:email]).first
    unless @profile.present? && @profile.valid_password?(profile_params[:password])
      if @profile.blank?
        raise ActiveRecord::RecordNotFound
      else
        raise ActiveRecord::RecordInvalid
      end
    end
  end

  def profile_params
    params.require(:profile).permit(:email, :password)
  end
end
