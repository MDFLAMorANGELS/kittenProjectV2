class Item < ApplicationRecord
  has_many :join_table_items_carts, dependent: :nullify
  # nullify va nous permettre d’effacer des entrées dans la table « join_table_items_carts » sans faire apparaître une erreur
end
