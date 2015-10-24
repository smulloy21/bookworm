require 'rails_helper'

describe Question do
  it { should belong_to :discussion }
  it { should belong_to :user }
  it { should have_many :comments }
end
