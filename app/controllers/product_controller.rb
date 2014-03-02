class ProductController < ApplicationController
  include ProductHelper

  def new
  end
  
  # Lists products from Zappos API search with GET parameter: search term
  def index
    @products = do_search(params[:search])
  end

  # Display product information for GET parameter: product id
  def show
    @product = get_prod(params[:id]).first
  end

  def createuser
    respond_to do |format|
      format.js
    end
  end
end
