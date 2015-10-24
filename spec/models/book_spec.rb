require 'rails_helper'

describe Book do
  it { should belong_to :language }
  it { should have_and_belong_to_many :authors }
  it { should have_and_belong_to_many :translators }
  it { should have_and_belong_to_many :tags }
  it { should have_many :discussions }
  it { should have_many :groups }
end
