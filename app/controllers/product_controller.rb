class ProductController < ApplicationController
  include ProductHelper

  def new
  end
  
  def index
    @products = do_search(params[:search])
    #@products = Product.all
  end

  def show
    @product = get_prod(params[:id]).first
	#@product = Product.find_by productId: params[:id]
  end

end
