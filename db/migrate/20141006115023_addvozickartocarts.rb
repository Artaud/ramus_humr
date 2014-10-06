class Addvozickartocarts < ActiveRecord::Migration
  def change
  	add_column :carts, :vozickar, :boolean
  	add_column :carts, :prukaz, :string
  end
end
