class HomeController < ApplicationController

  def menu
    @menu = Menu.order(:item_category).all
  end


end
