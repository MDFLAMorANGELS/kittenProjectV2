class CartsController < ApplicationController
  include CartsHelper
  before_action :require_login

  def show
    @items_in_cart = JoinTableItemsCart.where(cart_id:current_user.cart.id)
  end
  #trouves-moi les entrées où le panier utilisé est le même que celui de la personne connecté puis enregistre tout ça dans la variable « @items_in_cart ». 
  #

  def create
  end

  def update
  end

  def destroy
  end
end
