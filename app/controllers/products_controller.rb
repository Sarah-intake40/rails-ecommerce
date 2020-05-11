class ProductsController < ApplicationController

    #this main page where we view all products
    def index
        @products=Product.all
    end
    #this to show product under certain category
    def show
        @products=Product.find(params[:id])
    end
    
    

end
