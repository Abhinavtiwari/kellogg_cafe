class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find_by(id: params[:id])
  end

  def new
  end

  def create
    @order = Order.new
    @order.item_id = params[:item_id]
    @order.userid = params[:userid]
    @order.ordersummaryid = params[:ordersummaryid]
    @order.item_name = params[:item_name]
    @order.item_picture = params[:item_picture]
    @order.item_category = params[:item_category]
    @order.item_quantity = params[:item_quantity]
    @order.item_price = params[:item_price]

    if @order.save
      redirect_to orders_url, notice: "Order created successfully."
    else
      render 'new'
    end
  end

  def edit
    @order = Order.find_by(id: params[:id])
  end

  def update
    @order = Order.find_by(id: params[:id])
    @order.item_id = params[:item_id]
    @order.userid = params[:userid]
    @order.ordersummaryid = params[:ordersummaryid]
    @order.item_name = params[:item_name]
    @order.item_picture = params[:item_picture]
    @order.item_category = params[:item_category]
    @order.item_quantity = params[:item_quantity]
    @order.item_price = params[:item_price]

    if @order.save
      redirect_to orders_url, notice: "Order updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @order = Order.find_by(id: params[:id])
    @order.destroy

    redirect_to orders_url, notice: "Order deleted."
  end
end
