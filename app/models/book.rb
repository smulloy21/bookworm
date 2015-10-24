class Book < ActiveRecord::Base
  belongs_to :language
  has_and_belongs_to_many :authors
  has_and_belongs_to_many :translators
  has_and_belongs_to_many :tags
  has_many :discussions, dependent: :destroy
  has_many :groups, :through => :discussions
end
