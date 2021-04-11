class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(item_params)
  end

  def destory
    item = Item.find(params[:id])
    item.destory
  end

  def show
    @item = Item.find(params[:id])
  end
end

private
def item_params
  params.require(:item).permit(:name, :menu_id, :image)
end