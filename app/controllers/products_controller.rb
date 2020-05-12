class ProductsController < ApplicationController

    #this main page where we view all products
    def index
        @products=Product.all.with_attached_image
    end
    #this to show product under certain category
    def show
        @products=Product.find(params[:id])
    end
    #this to add new book
    def new
        @product=Product.new
        @categories=Category.all
        @brands=Brand.all
    end
    #this to ad new book
    def create
        @product=Product.new(params.require(:product).permit(:title, :description, :price, :in_stock, :category_id, :brand_id, :image ))
        @product.save
        redirect_to :controller => 'products', :action => 'index'
        
    end 

end
