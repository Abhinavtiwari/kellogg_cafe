class MenusController < ApplicationController

  def index
    @menus = Menu.order(:item_category).all
  end

  def show
    @menu = Menu.find_by(id: params[:id])
  end

  def new
  end

  def create
    @menu = Menu.new
    @menu.availability = params[:availability]
    @menu.item_name = params[:item_name]
    @menu.item_category = params[:item_category]
    @menu.item_picture = params[:item_picture]
    @menu.item_price = params[:item_price]
    @menu.item_description = params[:item_description]

    if @menu.save
      redirect_to menus_url, notice: "Menu created successfully."
    else
      render 'new'
    end
  end

  def edit
    @menu = Menu.find_by(id: params[:id])
  end

  def update
    @menu = Menu.find_by(id: params[:id])
    @menu.availability = params[:availability]
    @menu.item_name = params[:item_name]
    @menu.item_category = params[:item_category]
    @menu.item_picture = params[:item_picture]
    @menu.item_price = params[:item_price]
    @menu.item_description = params[:item_description]

    if @menu.save
      redirect_to menus_url, notice: "Menu updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @menu = Menu.find_by(id: params[:id])
    @menu.destroy

    redirect_to menus_url, notice: "Menu deleted."
  end
end
