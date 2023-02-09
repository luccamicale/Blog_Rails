class Ability
  include CanCan::Ability

  def initialize(user)
    if user.is? :admin
      can :manage, :all
    else
      can :destroy, Post, author_id: user.id
      can :destroy, Comment, author_id: user.id
      can :read, :all
    end
  end
end
