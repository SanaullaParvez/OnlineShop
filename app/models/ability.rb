class Ability
  include CanCan::Ability


  def initialize(user)
    user ||= User.new # guest user (not logged in)

    if user.has_role? :admin
      can :manage, :all
    elsif user.has_role? "user"



      can :manage, Post, :user_id => user.id
      can :read, :all

      can :read, User do |resource|
        resource == user
      end

      can :update, User do |resource|
        resource == user
      end

      # enables signup
      # can :create, User
    else
      can :read, Post
      #can :create, User
    end
  end
end
