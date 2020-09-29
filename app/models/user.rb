class User < ApplicationRecord
  rolify
  has_secure_password
  after_create :assign_default_role
  def assign_default_role
    self.add_role(:admin) if self.roles.blank?
  end
end
