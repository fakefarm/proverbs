class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    p = Parent.create(name: 'parent', user_id: current_user.id)
    new_kid_path
  end
end
