class ConversationPolicy < ApplicationPolicy
  def index?
    user.has_role?(:super_admin) || user.has_role?(:admin)
  end
end
