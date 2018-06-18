module Auth
  extend ActiveSupport::Concern

  # signed requests
  USER_TOKEN_ID = 'Id'

  included do
    before_action :identify_requester
  end

  def identify_requester
    url = params[:controller]
    http_method = request.request_method.downcase
    header = request.headers['ID']
    if header.present?
      @user_id = header
    else
      raise ActiveRecord::RecordNotFound unless url == 'api/profiles' && http_method == 'post'
    end
  end

end
