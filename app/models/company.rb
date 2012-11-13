class Company < ActiveRecord::Base
  attr_accessible :email, :subdomain
  has_many :user
end
