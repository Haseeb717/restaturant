class HomeController < ApplicationController
  def index
  	@menugroups = MenuGroup.all
  end
end
