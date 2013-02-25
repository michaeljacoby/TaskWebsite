class Task < ActiveRecord::Base
  attr_accessible :assignee, :description, :name, :resolvestatus, :complete, :createdbyuser
  belongs_to :user



end
