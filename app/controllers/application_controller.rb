class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :categories
  def categories
    @categories = Category.all
    #raise params[:controller]
  end


end
