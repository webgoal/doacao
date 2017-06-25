class CreateNecessidades < ActiveRecord::Migration[5.1]
  def change
    create_table :necessidades do |t|
      t.string :nome
      t.string :produto

      t.timestamps
    end
  end
end
