require 'rails_helper'

describe User do
  it { should validate_uniqueness_of(:username).case_insensitive }
  it { should have_many :admined_groups }
  it { should have_many :group_memberships }
  it { should have_many :groups }
  it { should have_many :questions }
  it { should have_many :comments }
end
