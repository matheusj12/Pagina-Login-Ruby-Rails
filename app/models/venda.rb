class Venda < ApplicationRecord
  has_many :order_items
  accepts_nested_attributes_for :order_items
  has_many :order_items, dependent: :destroy

  validates :funcionario_id, :client_id, :data, presence: true
end

class OrderItem < ApplicationRecord
  belongs_to :venda
  belongs_to :product

  validates :product_id, :quantidade, presence: true
end
