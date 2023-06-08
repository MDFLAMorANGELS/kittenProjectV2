class ApplicationController < ActionController::Base
  include ApplicationHelper
  after_action :create_cart_and_assign_to_current_user, only: [:create]
end

#la 1ere ligne on créé un lien entre le controller d’application. 
#La 2e fait appel à la méthode « create_cart_and_assign_to_current_user » seulement après une méthode « create ».