class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.integer :value
      t.integer :buyer_id
      t.integer :day
      t.timestamps null: false
    end
  end
end
