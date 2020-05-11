class Product < ApplicationRecord
    belongs_to :category
    belongs_to :brand
    has_many :orders, through: :order_product
end
