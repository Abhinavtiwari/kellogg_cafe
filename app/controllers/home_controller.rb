class HomeController < ApplicationController

  def menu
    @menu = Menu.all
  end


end
