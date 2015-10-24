class Discussion < ActiveRecord::Base
  belongs_to :book
  belongs_to :group
  has_many :questions
  has_many :comments, :through => :questions
end
