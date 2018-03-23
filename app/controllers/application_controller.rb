class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def after_sign_in_path_for(user)
    competences_path
  end

  def destroy_user_session_path
    root
  end

  def default_url_options
   { host: ENV["HOST"] || "localhost:3000" }
  end

end
