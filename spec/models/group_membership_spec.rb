require 'rails_helper'

describe GroupMembership do
  it { should belong_to :member }
  it { should belong_to :group }
end
