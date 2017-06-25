class CreateDonationLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :donation_logs do |t|
      t.references :in_need, foreign_key: true

      t.timestamps
    end
  end
end
