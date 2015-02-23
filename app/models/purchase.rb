class Purchase < ActiveRecord::Base
  has_one  :file_import
  has_many :items
  has_many :merchants, through: :items
  belongs_to :customers

end
