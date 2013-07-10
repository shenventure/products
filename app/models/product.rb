class Product < ActiveRecord::Base
  attr_accessible :description, :name, :pricing, :category_id

  validates :description, :name, :pricing, presence: true

  belongs_to :category
end
