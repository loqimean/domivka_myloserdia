class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.string :file, null: false

      t.timestamps
    end
  end
end
