class Product < ApplicationRecord
  has_many :vendas
  has_many :order_items
end
