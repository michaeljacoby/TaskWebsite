class Message < ActiveRecord::Base
  attr_accessible :body, :from_user_id, :to_user_id
end
