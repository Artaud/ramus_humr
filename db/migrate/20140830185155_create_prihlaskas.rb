class CreatePrihlaskas < ActiveRecord::Migration
  def change
    create_table :prihlaskas do |t|
      t.string :jmeno_prijmeni
      t.string :kontakt
      t.references :role_ucastnika, index: true
      t.string :vzkaz
      t.references :akce, index: true

      t.timestamps
    end
  end
end
