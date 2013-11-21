class OrdersummariesController < ApplicationController

  def index
    @ordersummaries = Ordersummary.all
  end

  def show
    @ordersummary = Ordersummary.find_by(id: params[:id])
  end

  def new
  end

  def create
    @ordersummary = Ordersummary.new
    @ordersummary.orderdate = params[:orderdate]
    @ordersummary.billamount = params[:billamount]
    @ordersummary.orderstatus = params[:orderstatus]
    @ordersummary.user_id = params[:user_id]

    if @ordersummary.save
      redirect_to ordersummaries_url, notice: "Ordersummary created successfully."
    else
      render 'new'
    end
  end

  def edit
    @ordersummary = Ordersummary.find_by(id: params[:id])
  end

  def update
    @ordersummary = Ordersummary.find_by(id: params[:id])
    @ordersummary.orderdate = params[:orderdate]
    @ordersummary.billamount = params[:billamount]
    @ordersummary.orderstatus = params[:orderstatus]
    @ordersummary.user_id = params[:user_id]

    if @ordersummary.save
      redirect_to ordersummaries_url, notice: "Ordersummary updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @ordersummary = Ordersummary.find_by(id: params[:id])
    @ordersummary.destroy

    redirect_to ordersummaries_url, notice: "Ordersummary deleted."
  end
end
