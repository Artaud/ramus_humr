class CreateAkces < ActiveRecord::Migration
  def change
    create_table :akces do |t|
      t.datetime :termin
      t.text :popis
      t.text :cena
      t.text :misto_srazu

      t.timestamps
    end
  end
end
