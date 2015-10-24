class Group < ActiveRecord::Base
  belongs_to :admin, :class_name => "User"
  has_many :group_memberships
  has_many :members, :class_name => "User", :through => "group_memberships", :foreign_key => "member_id"

  has_many :discussions
  has_many :books, :through => :discussions
end
