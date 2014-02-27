class StaticController < ApplicationController
  def home
    @product = Product.find(1)
  end
end
