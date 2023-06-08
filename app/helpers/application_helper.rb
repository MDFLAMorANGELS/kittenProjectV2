module ApplicationHelper

  def create_cart_and_assign_to_current_user
    if current_user != nil && current_user.cart == nil
        cart = Cart.create(user: current_user)
    end
  end

  def add_zero(price)
    price_str = price.to_s
    if price_str.split('.').last.size < 2
      price_str.insert((price_str.length),'0')
    end
    return price_str
  end
end

# Si on a une session utilisateur en cours et que celui-ci n’a pas de panier qui lui est assigné. 
#Créés-en un et assignes lui » 