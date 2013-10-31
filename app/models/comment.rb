class Comment < ActiveRecord::Base
  attr_accessible :author, :details, :event_id
  belongs_to :event
end
