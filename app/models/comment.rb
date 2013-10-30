class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  attr_accessible :body, :user_id, :post
  validates_presence_of :body, length: { minimum: 5}, presence: true
  validates :user, presence: true
end
