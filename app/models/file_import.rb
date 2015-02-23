class FileImport < ActiveRecord::Base
  has_many :purchases
  has_many :customers, through: :purchases
  has_many :items, through: :purchases

end
