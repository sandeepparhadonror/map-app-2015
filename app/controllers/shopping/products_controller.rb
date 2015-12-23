class Shopping::ProductsController < ApplicationController
  
  layout "shopping"
  
  def index
  	@products = Product.all
  	@order_item = current_order.order_items.new
  end
end
