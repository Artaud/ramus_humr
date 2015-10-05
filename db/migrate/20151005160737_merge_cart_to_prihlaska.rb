class MergeCartToPrihlaska < ActiveRecord::Migration
  def change
  	add_column :prihlaskas, :jmeno, :string
  	add_column :prihlaskas, :prijmeni, :string
  	add_column :prihlaskas, :email, :string
  	add_column :prihlaskas, :telefon, :string
  	add_column :prihlaskas, :vzkaz, :text
  	add_column :prihlaskas, :role, :string
  	add_column :prihlaskas, :vozickar, :boolean
  	add_column :prihlaskas, :prukaz, :string

  	remove_column :carts, :jmeno, :string
  	remove_column :carts, :prijmeni, :string
  	remove_column :carts, :email, :string
  	remove_column :carts, :telefon, :string
  	remove_column :carts, :vzkaz, :text
  	remove_column :carts, :role, :string
  	remove_column :carts, :vozickar, :boolean
  	remove_column :carts, :prukaz, :string
  	end
end
