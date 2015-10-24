require 'rails_helper'

describe Translator do
  it { should have_and_belong_to_many :books }
end
