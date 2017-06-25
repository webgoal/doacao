class CreateDonations < ActiveRecord::Migration[5.1]
  def change
    create_table :donations do |t|
      t.string :item_name
      t.string :item_category
      t.string :item_description
      t.integer :item_qt
      t.string :perishable
      t.string :item_validity

      t.timestamps
    end
  end
end
