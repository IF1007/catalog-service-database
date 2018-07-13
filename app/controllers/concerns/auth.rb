module Auth
  extend ActiveSupport::Concern

  included do
    before_action :identify_requester
  end

  def identify_requester
    url = params[:controller]
    http_method = request.request_method.downcase
    header = request.headers['Id']
    if header.present?
      @user_id = header
    else
      raise ActiveRecord::RecordNotFound
    end
  end

end
