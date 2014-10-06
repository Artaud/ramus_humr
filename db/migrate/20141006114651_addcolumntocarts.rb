class Addcolumntocarts < ActiveRecord::Migration
  def change
  	  	add_column :carts, :role, :string
  end
end
