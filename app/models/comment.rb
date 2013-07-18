class Comment < ActiveRecord::Base
  attr_accessible :content, :topic_id
  belongs_to :topic

  validates :content, :presence => true
end