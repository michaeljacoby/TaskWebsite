class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation,:updated_at,:AdminScreen,:CanEditUsers,:CanDeleteUsers,:CanCreateUser,:Active,:UserStatus
  has_secure_password
  validates_presence_of :password, :on => :create


end


