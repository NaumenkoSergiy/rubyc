class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # http_basic_authenticate_with :name => "admin", :password => "Crjkzhbz!" if Rails.env.production?
  layout :layout_by_resource

  protected

  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end
end
