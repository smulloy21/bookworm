class Group < ActiveRecord::Base
  belongs_to :admin, :class_name => "User", dependent: :destroy
  has_many :group_memberships, dependent: :destroy
  has_many :members, :class_name => "User", :through => "group_memberships", :foreign_key => "member_id"

  has_many :discussions, dependent: :destroy
  has_many :books, :through => :discussions
end
