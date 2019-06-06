class CreateBankaccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :bankaccounts do |t|
      t.integer :user_id
      t.string :bank
    end
  end
end
