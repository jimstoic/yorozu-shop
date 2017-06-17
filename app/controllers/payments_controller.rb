class PaymentsController < ApplicationController
  def create
    @item = Item.find params[:item_id]
    require 'payjp'
    Payjp.api_key = 'sk_test_c62fade9d045b54cd76d7036'
    token = Payjp::Token.create(
      :card => {
        :number => params[:number],
        :cvc => params[:cvc],
        :exp_month => params[:exp_month],
        :exp_year => params[:exp_year]
      }
    )
    charge = Payjp::Charge.create(
      :amount => @item.price,
      :card => token.id,
      :currency => 'jpy',
    )
    redirect_to @item, notice: 'ありがとうございました。'
  rescue
    redirect_to @item, alert: 'カードが利用できません。'
  end
end
