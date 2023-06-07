module ApplicationHelper
  def create_cart_and_assign_to_current_user
    if current_user != nil && current_user.cart == nil
        cart = Cart.create(user: current_user)
    end
  end
end

# Si on a une session utilisateur en cours et que celui-ci n’a pas de panier qui lui est assigné. 
#Créés-en un et assignes lui » 