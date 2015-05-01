class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout :resolve_layout

  def resolve_layout
    return 'admin' if request.subdomain and request.subdomain == 'admin'
    return 'application'
  end

end
