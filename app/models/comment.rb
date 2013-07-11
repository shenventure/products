class Comment < ActiveRecord::Base
  attr_accessible :author, :content, :product_id

  belongs_to :product
end
