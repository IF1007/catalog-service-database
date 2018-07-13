require 'jwt'
module Auth
  extend ActiveSupport::Concern

  included do
    before_action :identify_requester
  end

  def identify_requester
    header = request.headers['token']
    if header.present?
      decoded_token = JWT.decode header, ENV['TOKEN_KEY'], true, { :algorithm => 'HS256' }
      if decoded_token[0].present? && decoded_token[0]['id'].present?
        @profile = Profile.find_by! id: decoded_token[0]['id']
      else
        head :forbidden
      end
    else
      head :forbidden
    end
  end

end
