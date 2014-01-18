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

  private
=begin
  def current_cart
    Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    cart = Cart.create
    session[:cart_id] = cart.id
    cart
  end
=end

=begin
  def current_cart

      cart ||= Cart.find(session[:cart_id]) if session[:cart_id].present?

    rescue ActiveRecord::RecordNotFound
      session[:cart_id] = nil if cart.purchased_at
      raise session[:cart_id].inspect
    if session[:cart_id].nil?
      cart = Cart.create!
      session[:cart_id] = cart.id
    end
      cart
  end
=end
  def current_cart
    if session[:cart_id]
      @current_cart ||= Cart.find(session[:cart_id])
      session[:cart_id] = nil if @current_cart.purchased_at
    end

    if session[:cart_id].nil?
      @current_cart = Cart.create!
      session[:cart_id] ||= @current_cart.id
    end
    @current_cart
  end

  #curl -d "txn_id=3A8513131J5175748&invoice21&payment_status=Completed" http://localhost:3000/payment_notifications

end
