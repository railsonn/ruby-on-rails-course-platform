class HomeController < ApplicationController
  def index
    @course = Course.all.limit(3)
    @latest_couses = Course.all.limit(3).order(created_at: :desc)
  end
end
