class ItemsController < ApplicationController
  before_action :authenticate_user!, except: :index
  
  def index
    @items = Item.order(id: :asc)
    @item = Item.new
  end

  def new
  end

  def create
    current_user.items.create!(item_params)
    redirect_to root_path, notice: "投稿が完了しました"
  end

 private

  def item_params
    params.require(:item).permit(:name, :price)
  end



end
