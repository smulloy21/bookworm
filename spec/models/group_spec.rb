require 'rails_helper'

describe Group do
  it { should belong_to :admin }
  it { should have_many :group_memberships }
  it { should have_many :members }
  it { should have_many :discussions }
  it { should have_many :books }
end
