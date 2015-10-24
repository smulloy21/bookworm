class Question < ActiveRecord::Base
  belongs_to :discussion
  belongs_to :user
  has_many :comments, as: :commentable
end
