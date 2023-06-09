class JoinTableItemsCartsController < ApplicationController
  
  def create
    @item_add = JoinTableItemsCart.add_or_create_cart_item_link(permit_link_params)
    redirect_to items_path
  end

  def update
  end

  def destroy
    puts "$" *100
    puts params[:id]
    puts "$" *100
    @item_delete = JoinTableItemsCart.find(params[:id])
    @item_delete.destroy
    redirect_to cart_path #(current_user.cart.id)
  end

  private

  def permit_link_params
    params.require(:join_table_items_cart).permit(:item_id, :cart_id, :quantity)
  end

  #les informations envoyées par le formulaire par « params » soient autorisées à être utilisé

end
