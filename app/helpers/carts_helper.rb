module CartsHelper
  
  private

  def require_login
      unless current_user != nil
          redirect_to new_user_session_path
      end
  end

end

#require_login : S'il n’y a personne de connecté, rediriger la page vers la page de connexion