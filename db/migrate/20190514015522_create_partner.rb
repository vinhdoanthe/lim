class CreatePartner < ActiveRecord::Migration[5.2]
  def change
    create_table :partners do |t|
      t.string :code, null: false, unique: true
      t.string :name, null: false
      t.string :email1
      t.string :email2
      t.timestamps
    end
  end
end
