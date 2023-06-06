class AddDatelivraisonToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :datelivraison, :date
    add_column :books, :sursite, :boolean, default: TRUE
    add_column :books, :etat, :string, default: "neuf"
  end
end
