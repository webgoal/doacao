class AddFlagDonationToInNeed < ActiveRecord::Migration[5.1]
  def change
    add_column :in_needs, :flag_donation, :boolean, default: false
  end
end
