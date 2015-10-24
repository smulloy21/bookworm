require 'rails_helper'

describe Comment do
  it { should belong_to :discussion }
  it { should belong_to :user }
  it { should belong_to :commentable }
  it { should have_many :comments }
end
