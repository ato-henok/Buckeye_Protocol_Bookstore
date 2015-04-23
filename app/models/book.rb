class Book < ActiveRecord::Base
  belongs_to :user
  has_one :order
  
  
  validates :title, :condition, :price, :isbn, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
end
