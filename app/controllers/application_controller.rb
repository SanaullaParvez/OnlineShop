class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :categories
  def categories
    @categories = Category.all
    #raise params[:controller]
  end

  rescue_from CanCan::AccessDenied do |exception|
    flash[:alert] = exception.message
    redirect_to root_url
  end

  def current_ability
    @current_ability ||= Ability.new(current_user)
  end
end
