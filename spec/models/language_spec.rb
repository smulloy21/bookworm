require 'rails_helper'

describe Language do
  it { should have_many :books }
end
