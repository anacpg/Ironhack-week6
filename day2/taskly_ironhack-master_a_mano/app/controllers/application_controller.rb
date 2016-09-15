class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :signed_in_user

  unless Rails.env.development?
  	protect_from_forgery with: :exception
  end

  include SessionsHelper

  private
    def signed_in_user
      unless logged_in
        redirect_to 'login'
      end
    end

end
