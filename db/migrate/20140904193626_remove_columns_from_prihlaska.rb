class RemoveColumnsFromPrihlaska < ActiveRecord::Migration
  def change
    remove_column :prihlaskas, :jmeno_prijmeni
    remove_column :prihlaskas, :kontakt
    remove_column :prihlaskas, :role_ucastnika_id
    remove_column :prihlaskas, :vzkaz
    add_column :prihlaskas, :cart_id, :integer
  end
end
