class CreateAkcePrihlaskas < ActiveRecord::Migration
  def change
    create_table :akce_prihlaskas do |t|
      t.references :akce, index: true, foreign_key: true
      t.references :prihlaska, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
