# app/models/order_item.rb
class OrderItem < ApplicationRecord
  belongs_to :venda
  belongs_to :product

  validates :product_id, presence: true
  validates :quantidade, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
