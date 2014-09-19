class Addcolumnstocart < ActiveRecord::Migration
  def change
  	add_column :carts, :jmeno, :string
  	add_column :carts, :prijmeni, :string
  	add_column :carts, :email, :string
  	add_column :carts, :telefon, :string
  	add_column :carts, :vzkaz, :text
  	add_column :carts, :potvrzeno, :boolean, default: false
  end
end
