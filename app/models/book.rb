class Book < ActiveRecord::Base
  has_and_belongs_to_many :tags
  has_many :discussions
  has_many :groups, :through => :discussions
end
