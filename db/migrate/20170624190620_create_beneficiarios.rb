class CreateBeneficiarios < ActiveRecord::Migration[5.1]
  def change
    create_table :beneficiarios do |t|
      t.string :nome
      t.integer :idade
      t.string :endereco
      t.integer :qtde_pessoas_familia
      t.float :renda
      t.integer :qtde_pessoas_vulneraveis
      t.string :telefone

      t.timestamps
    end
  end
end
