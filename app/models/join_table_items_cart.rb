class JoinTableItemsCart < ApplicationRecord
  belongs_to :item
  belongs_to :cart

  def self.add_or_create_cart_item_link(permit_link_params)
  	if JoinTableItemsCart.find_by(cart_id: permit_link_params[:cart_id], item_id: permit_link_params[:item_id]) == nil
  		@new_item_add = JoinTableItemsCart.create(item_id: permit_link_params[:item_id], cart_id: permit_link_params[:cart_id], quantity: 1)
  	else
  		@new_item_add = JoinTableItemsCart.find_by(cart_id: permit_link_params[:cart_id], item_id: permit_link_params[:item_id])
  		@new_item_add.update(quantity: @new_item_add.quantity + 1)
  	end
  end
  #consiste à vérifier l’existence de l’article dans le panier de l’utilisateur connecter 
  #et si il existe alors il ajoute un 1 à la quantité, 
  #sinon il crée une nouvelle entrée dans la base de données « JoinTableItemsCart » associant l’article et mon panier »
  
end
