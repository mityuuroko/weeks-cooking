class ItemsController < ApplicationController

  def index
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(item_params)
  end
end

private
def item_params
  params.require(:item).permit(:name, :menu_id, :image)
end