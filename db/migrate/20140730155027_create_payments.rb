class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :line_item_id
      t.integer :service_id

      t.timestamps
    end
  end
end
