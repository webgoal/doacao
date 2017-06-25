class CreateNeedies < ActiveRecord::Migration[5.1]
  def change
    create_table :needies do |t|
      t.string :name
      t.string :economic_range
      t.integer :dependent
      t.string :necessity

      t.timestamps
    end
  end
end
