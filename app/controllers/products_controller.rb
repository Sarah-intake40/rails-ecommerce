class ProductsController < ApplicationController

    #this main page where we view all products
    def index
        @products=Product.all
    end
end
