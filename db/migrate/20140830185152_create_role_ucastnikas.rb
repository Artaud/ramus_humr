class CreateRoleUcastnikas < ActiveRecord::Migration
  def change
    create_table :role_ucastnikas do |t|
      t.string :nazev

      t.timestamps
    end
  end
end
