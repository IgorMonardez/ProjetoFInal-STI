# frozen_string_literal: true
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
  end

  def authorize
    redirect_to root_url unless logged_in?
  end

  def correct_user?
    @user = User.find(params[:id])
    redirect_to users_path unless current_user == @user
  end
end
