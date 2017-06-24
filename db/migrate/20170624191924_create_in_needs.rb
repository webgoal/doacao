class CreateInNeeds < ActiveRecord::Migration[5.1]
  def change
    create_table :in_needs do |t|
      t.string :name
      t.string :cpf
      t.date :birthdate
      t.string :address
      t.string :phone
      t.string :n_members
      t.decimal :income, precision: 10, scale: 2
      t.string :items

      t.timestamps
    end
  end
end
