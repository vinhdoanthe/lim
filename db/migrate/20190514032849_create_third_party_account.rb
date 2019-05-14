class CreateThirdPartyAccount < ActiveRecord::Migration[5.2]
  def change
    create_table :third_party_accounts do |t|
      t.string :source, null: false, default: ''
      t.string :course, null: false, default: ''
      t.decimal :price, default: 0
      t.string :account_username, null: false
      t.string :account_email, null: false
      t.string :status
      t.references :learning_record
      t.timestamps
    end
  end
end
