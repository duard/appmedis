class Admin::ApplicationController < ActionController::Base
  protect_from_forgery
  layout "admin"
  before_filter :verify_admin

  def index

  end

  protected
    def verify_admin

    end
end
