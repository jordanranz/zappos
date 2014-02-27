class ProductController < ApplicationController
  include ProductHelper

  def new
  end
  
  def index
    @products = do_search(params[:search])
  end

  def show
    @product = Product.find(params[:id])
  end

end
