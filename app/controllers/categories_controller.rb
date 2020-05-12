class CategoriesController < ApplicationController
    before_filter :authenticate_admin!
    def show
    end
    #this to add new book
    def new
        @category= Category.new
    end
    def create
        @category = Category.new(params.require(:category).permit(:name))
        @category.save
        redirect_to :controller => 'products', :action => 'index'
    end
end
