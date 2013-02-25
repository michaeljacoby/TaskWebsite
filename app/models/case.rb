class Case < ActiveRecord::Base
  attr_accessible :assignee, :description, :name, :resolvestatus, :complete, :createdbyuser

  def self.byid(userid)
  
    if userid
      find(:all, :conditions => ['createdbyuser LIKE ?', "%#{userid}%"])
    else
      find(:all)
    end

  end

end
