class HomeController < ApplicationController
  def index
  	@menugroups = MenuGroup.all
  end

  def order
  	order_items_json = params["order"].as_json

  	order = Order.create(:status=>"pending")

  	order_items_json.each do |order_item|
  		item = order_item[1]
  		OrderItem.create(:title=>item[1],:price=>item[2],:quantity=>item[0],:order_id=>order.id)
  	end
  	render json: {:success=>true, :order=>order.id}, :status=>200
  end
end
