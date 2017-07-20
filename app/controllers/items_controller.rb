class ItemsController < ApplicationController
  def index
    @item = Item.all
  end
  def delete
    if params[:delete_id].present?
        Item.destroy(params[:delete_id])
        redirect_back(fallback_location: root_path) 
    end 
  end
end
