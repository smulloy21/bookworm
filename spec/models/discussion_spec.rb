require 'rails_helper'

describe Discussion do
  it { should belong_to :group }
  it { should belong_to :book }
  it { should have_many :comments }
  it { should have_many :questions }
end
