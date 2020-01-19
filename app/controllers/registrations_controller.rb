class RegistrationsController < Devise::RegistrationsController
  def create
    super

    return unless @user.persisted? && cookies[:invite_group_code].present?

    group = Group.find_by(code: cookies[:invite_group_code])
    @user.groups |= Array(group)
    cookies.delete(:invite_group_code)
  end
end
