class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

  rescue_from Pundit::NotAuthorizedError, with: :permission_denied

  private

  def permission_denied
    flash[:alert] = "Permission Denied"
    redirect_to(request.referrer || root_path)
  end
end
