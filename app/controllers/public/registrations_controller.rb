require 'jwt'
class Public::RegistrationsController < Public::ApiController

  def create
    @profile = ::User.create!(profile_params)
    payload = {:id => @profile.id}
    @token = JWT.encode payload, ENV['TOKEN_KEY'], 'HS256'
    render json: { token: @token }, status: :created
  end

  protected

  def profile_params
    params.require(:profile).permit(:email, :birthday, :about, :name, :avatar_link)
  end
end
