class Public::ApiController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :invalid_record
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  protected

  def invalid_record(exception)
    render json: { message: "invalid record" }, status: :unprocessable_entity
  end

  def not_found(exception)
    render json: { message: "record not found" }, status: :not_found
  end
end
