class Discussion < ActiveRecord::Base
  belongs_to :book
  belongs_to :group
  has_many :questions, dependent: :destroy
  has_many :comments, :through => :questions
end
