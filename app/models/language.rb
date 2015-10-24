class Language < ActiveRecord::Base
  has_many :books, dependent: :destroy
end
