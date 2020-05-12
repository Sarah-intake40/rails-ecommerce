class BrandsController < ApplicationController

    def new
        @brand= Brand.new
    end
    def create
        @brand = Brand.new(params.require(:brand).permit(:name))
        @brand.save
        redirect_to :controller => 'products', :action => 'index'
    end
end