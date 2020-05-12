class Product < ApplicationRecord
    belongs_to :category
    has_one_attached :image
    belongs_to :brand
    has_many :orders, through: :order_product
end
