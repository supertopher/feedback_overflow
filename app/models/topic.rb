class Topic < ActiveRecord::Base
  attr_accessible :title, :content
  belongs_to :user
  has_many :comments
  has_many :upvotes
  validates :title, :content, :presence => true
  validates :title, uniqueness: true
  before_create :to_slug

  private
    def to_slug
      self.slug = self.title.downcase.gsub(/[^a-z1-9]+/, '-').chomp('-')
    end
end
