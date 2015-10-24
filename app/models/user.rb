class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, :presence => true, :uniqueness => true

  has_many :admined_groups, :class_name => "Group", :foreign_key => "admin_id", dependent: :destroy
  has_many :group_memberships, :foreign_key => "member_id", dependent: :destroy
  has_many :groups, :through => :group_memberships, :foreign_key => "member_id"

  has_many :questions, dependent: :destroy
  has_many :comments, dependent: :destroy

end
