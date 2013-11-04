class AaaCoreController < ApplicationController
  def index
  	@title = "Home"
  end


  def shop
  	@title = "Shop"
  	@sales_items = SalesItem.all
  end

  def discussion
  	@title = "Discussion"
  end
end
