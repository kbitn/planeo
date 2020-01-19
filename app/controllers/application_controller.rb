class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, except: [:home]

  # after_action :verify_authorized, except: :home, unless: :skip_pundit?

  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  # def user_not_authorized
  #   flash[:alert] = "You are not authorized to perform this action."
  #   redirect_to(root_path)
  # end

  def configure_permitted_parameters
  # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :photo])
  end

  def after_sign_in_path_for(resource)
    if cookies[:invite_group_code].present?
      group = Group.find_by(code: cookies[:invite_group_code])
      resource.groups |= Array(group)
      cookies.delete(:invite_group_code)

      group_path(group)
    else
      groups_path
    end
  end
end
