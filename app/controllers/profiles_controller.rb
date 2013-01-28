class ProfilesController < ApplicationController
  def dashboard
    if user_signed_in?
      Rails.logger.info "######################################################"
    else
      redirect_to new_user_session_path
    end
  end
end
