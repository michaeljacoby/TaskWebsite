class Tasks < ActiveRecord::Base
  attr_accessible :assignee, :description, :name, :resolvestatus
end
