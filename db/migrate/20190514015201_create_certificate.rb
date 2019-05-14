class CreateCertificate < ActiveRecord::Migration[5.2]
  def change
    create_table :certificates do |t|
      t.string :code, null: false
      t.string :name, null: false
      t.string :status, null: false, default: ''
      t.timestamps
    end
  end
end
