class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from ActionView::MissingTemplate do |exception|
    not_found
  end

  private
  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end
end
