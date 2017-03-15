class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :platform, :gamer_tag, game_ids: []])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :platform, :gamer_tag, game_ids: []])
    end

end
