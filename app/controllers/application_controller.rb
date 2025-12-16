class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_global_variables, if: :user_signed_in?
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern


  def set_global_variables
    @q = Course.ransack(params[:q])
    @ransack_courses = Course.ransack(params[:courses_search], search_key: :courses_search) #navbar search
  end
end
