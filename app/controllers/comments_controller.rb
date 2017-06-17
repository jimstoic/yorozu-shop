class CommentsController < ApplicationController
  def create
    @item = Item.find params[:comment][:item_id]
    @item.comments.create user: current_user, body: params[:comment][:body]
    redirect_to item_path @item
  end
end
