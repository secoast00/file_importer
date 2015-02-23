class Item < ActiveRecord::Base
  has_one  :merchant
  has_many :purchases
  has_many :file_imports, through: :purchases

end
