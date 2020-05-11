class ProductsController < ApplicationController

    #this main page where we view all products
    def index
        @products=Product.all
    end
    #this to show product under certain category
    def show
        @products=Product.find(params[:id])
    end
    #this to add new book
    def new
        @product=Product.new
    end
    #this to ad new book
    def create
        @product=Product.new(params[:product])
        if @product.valid
            render json: @product, status: :created, location: @product
        else
            render json: @product.errors, status: :unprocessable_entity
        end
    end 

end
