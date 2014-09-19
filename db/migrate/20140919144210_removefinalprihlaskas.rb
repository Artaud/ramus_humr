class Removefinalprihlaskas < ActiveRecord::Migration
  def change
  	drop_table :finalprihlaskas do |t|
  	end
  end
end
