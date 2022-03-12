class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.string :sum,     null: false
      t.string :name,    null: false

      t.timestamps
    end
  end
end
